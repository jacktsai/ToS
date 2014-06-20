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
                MyDebug.Log("包包滿了哦！為了蒐集更多的卡片，請趕快去整理一下包包吧！");
                MyDialog.ShowConfirm("包包滿了哦！\n為了蒐集更多的卡片，請趕快去整理一下包包吧！");
                return false;
            }

            candidate = null;

            if (MyGameConfig.floor.daily)
            {
                MyDebug.Log("嚐試取得每日關卡...");
                candidate = dailyFloors.NextFloor();
            }

            if (candidate == null)
            {
                MyDebug.Log("嚐試取得普通關卡...");
                candidate = normalFloors.NextFloor();
            }

            if (candidate != null)
            {
                MyDebug.Log("FLOOR [#{0}{1}] ready to go, required stamina {2}, current {3}.", candidate.floorId, candidate.name, candidate.stamina, Game.runtimeData.user.currentStamina);
                return true;
            }
            else
            {
                MyDebug.Log("已經沒有下一個適合的關卡進行戰鬥！");
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

            StringBuilder cardNames = new StringBuilder();
            foreach (var pair in Game.runtimeData.currentTeam.cards)
            {
                if (pair.Value == null)
                    break;

                if (cardNames.Length > 0)
                    cardNames.Append("\n");

                cardNames.AppendFormat("{0}", pair.Value.name);
            }

            Action nextFromHere = () =>
                {
                    next();
                };

            if (candidate.floorId == 1)
            {
                Game.SetCurrentSelectedHelper(null);
                Game.EnterCurrentFloor(() =>
                    {
                        CompleteCurrentFloor(nextFromHere);
                    });
            }
            else
            {
                Game.GetHelperList(
                    candidate.floorId,
                    helpers =>
                    {
                        Game.SetCurrentSelectedHelper(helpers[0]);
                        Game.EnterCurrentFloor(() =>
                        {
                            CompleteCurrentFloor(nextFromHere);
                        });
                    },
                    () =>
                    {
                    });
            }
        }

        private void CompleteCurrentFloor(Action next)
        {
            var team = Game.runtimeData.currentTeam;
            var maxCombo = UnityEngine.Random.Range(5, 12);

            Game.runtimeData.maxCombo = maxCombo;
            Game.runtimeData.maxAttack = (int)((team.attackWater + team.attackFire + team.attackGrass + team.attackLight + team.attackDark) * (1 + maxCombo * 0.25));
            Game.runtimeData.currentWaveIndex = candidate.waveCount - 1;

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
                            MyDebug.Log("領取體力回覆 [{0}]", reward.message);
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
                        Game.RecoverStamina(next, null);
                        return;
                    }
                }
            }

            next();
        }
    }
}