using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Text;
using System.Threading;
using AssemblyHijack.Automation.FloorStrategy;
using JsonFx.Json;
using UnityEngine;

namespace AssemblyHijack.Automation
{
    internal class CompleteFloor : Runnable
    {
        private readonly IStrategy dailyFloors = new Daily();
        private readonly IStrategy normalFloors;
        private Floor candidate = null;
        private Action afterComplete = null;

        public CompleteFloor()
        {
            if (MyGameConfig.floor.mode.Equals(MyGameConfig.Floor.MODE_EXTREME))
                normalFloors = new Extreme();
            else if (MyGameConfig.floor.mode.Equals(MyGameConfig.Floor.MODE_BONUS_ONLY))
                normalFloors = new BonusOnly();
            else if (MyGameConfig.floor.mode.Equals(MyGameConfig.Floor.MODE_CLEAR_ONLY))
                normalFloors = new ClearOnly();
            else if (MyGameConfig.floor.mode.Equals(MyGameConfig.Floor.MODE_DEDICATED))
                normalFloors = new Dedicated();
        }

        protected override bool Check()
        {
            if (Game.runtimeData.user.inventory.isFull)
            {
                MyLog.Debug("背包已滿");
                MyDialog.ShowConfirm("包包滿了哦！\n為了蒐集更多的卡片, 請趕快去整理一下包包吧！");
                return false;
            }

            candidate = null;

            if (!Game.tutorialMode && MyGameConfig.floor.daily)
            {
                MyLog.Debug("嚐試取得每日關卡...");
                candidate = dailyFloors.NextFloor();
            }

            if (candidate == null)
            {
                MyLog.Debug("嚐試取得普通關卡...");
                candidate = normalFloors.NextFloor();
            }

            if (candidate != null)
            {
                MyLog.Debug("關卡判定[#{0}{1}], 所需體力[{2}], 目前體力[{3}]", candidate.floorId, candidate.name, candidate.stamina, Game.runtimeData.user.currentStamina);

                if (Game.tutorialMode && candidate.stage.type != Stage.Type.TUTORIAL)
                {
                    MyLog.Debug("新手導覽關卡已完成, 跳越導覽進度");
                    // 自動升格到一般模式
                    while (TutorialController.isTutorialMode)
                        TutorialController.Continue();
                }

                return true;
            }
            else
            {
                MyLog.Debug("已經沒有下一個適合的關卡進行戰鬥！");
                MyDialog.ShowConfirm("已經沒有下一個適合的關卡進行戰鬥！");
                return false;
            }
        }

        protected override void Execute(Action next)
        {
            Game.SetCurrentTeamIndex(1);
            Game.SetCurrentZone(candidate.stage.zoneId);
            Game.SetCurrentStage(candidate.stage);
            Game.SetCurrentFloor(candidate);

            Action<List<Helper>> enterFloor = (helpers) =>
            {
                Helper helper = null;

                if (helpers != null)
                {
                    // 隨機從中挑選一位助攻
                    helper = helpers[UnityEngine.Random.Range(0, helpers.Count)];
                }

                Game.SetCurrentSelectedHelper(helper);
                Game.EnterCurrentFloor(() =>
                {
                    CompleteCurrentFloor(next);
                });
            };

            MyLog.Debug("進入關卡 [#{0}{1}]", candidate.floorId, candidate.name);
            if (candidate.floorId == 1)
            {
                enterFloor(null);
            }
            else
            {
                Game.GetHelperList(
                    candidate.floorId,
                    helpers => enterFloor(helpers),
                    null);
            }
        }

        private void CompleteCurrentFloor(Action next)
        {
            var team = Game.runtimeData.currentTeam;
            var maxCombo = UnityEngine.Random.Range(5, 12);

            Game.runtimeData.maxCombo = maxCombo;
            Game.runtimeData.maxAttack = (int)((team.attackWater + team.attackFire + team.attackGrass + team.attackLight + team.attackDark) * (1 + maxCombo * 0.25));
            Game.runtimeData.currentWaveIndex = candidate.waveCount - 1;

            MyLog.Debug("結束關卡 [#{0}{1}]", candidate.floorId, candidate.name);
            Game.ClearCurrentFloor(() =>
                {
                    SendFriendRequest(next);
                });
        }

        private void SendFriendRequest(Action next)
        {
            Action newNext = () =>
            {
                CheckStamina(next);
            };

            if (MyGameConfig.floor.requestFriend)
            {
                Helper helper = Game.runtimeData.currentSelectedHelper;
                if (helper != null && !Game.runtimeData.user.isFriendsFull)
                {
                    MyLog.Debug("對 [{0}] 發送好友邀請", helper.name);
                    Game.SendFriendRequest(
                        helper.uid,
                        newNext,
                        i => { });
                    return;
                }
            }

            newNext();
        }

        private void CheckStamina(Action next)
        {
            if (MyGameConfig.floor.recovery.enabled)
            {
                if (MyGameConfig.floor.recovery.reward)
                {
                    foreach (var reward in Game.runtimeData.rewards)
                    {
                        if (!reward.isAvailable || reward.claimed)
                            continue;

                        if (reward.rewardType == Reward.Type.RECOVERY)
                        {
                            MyLog.Debug("從 [{0}] 回覆體力", reward.message);
                            Game.ClaimReward(
                                reward.rewardId,
                                (diamondCompensated, cardIds) =>
                                {
                                    reward.claimed = true;
                                    next();
                                },
                                null);
                            return;
                        }
                    }
                }

                if (MyGameConfig.floor.recovery.diamond)
                {
                    if (Game.runtimeData.user.diamond > 0)
                    {
                        MyLog.Debug("從 [魔法石] 回覆體力");
                        Game.RecoverStamina(next, null);
                        return;
                    }
                }
            }

            next();
        }
    }
}