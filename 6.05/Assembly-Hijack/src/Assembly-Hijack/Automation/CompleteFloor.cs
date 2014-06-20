using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Text;
using System.Threading;
using JsonFx.Json;
using UnityEngine;

namespace AssemblyHijack.Automation
{
    internal class CompleteFloor : Runnable
    {
        private bool deailyAllCleared = false;
        private Floor targetFloor = null;

        public CompleteFloor()
        {
            if (MyGameConfig.floor.floorIds.Length < 1)
            {
                MyGameConfig.floor.floorIds = Game.database.floors.Keys.OrderBy(id => id).ToArray();
            }
        }

        private Floor FindOutBestFloor()
        {
            Floor dedicated = null;
            if (MyGameConfig.floor.daily)
            {
                dedicated = FindDaily();
            }

            if (dedicated == null)
            {
                dedicated = FindNormally();
            }

            return dedicated;
        }

        private Floor FindDaily()
        {
            if (deailyAllCleared)
                return null;

            foreach (var floor in Game.database.floors.Values)
            {
                if (!floor.isAvailable || floor.isLocked || floor.unlockByItem)
                    continue;

                if (floor.stamina == 0 && !floor.isPlayed)
                    return floor;
            }

            Debug.Log("ALL DAILY HAS BEEN CLEARED!");
            deailyAllCleared = true;

            return null;
        }

        private Floor FindNormally()
        {
            Floor dedicated = null;
            Floor bonus = null;

            foreach (var floorId in MyGameConfig.floor.floorIds)
            {
                var floor = Game.database.floors[floorId];
                MyDebug.Log(floor);

                if (floor.stamina > MyGameConfig.floor.maxStamina)
                {
                    Debug.Log(String.Format("[#{0}{1}] IS HEAVY STAMINA, SKIP", floor.floorId, floor.name));
                    continue;
                }

                if (floor.unlockByItem && !floor.isItemCollected)
                {
                    Debug.Log(String.Format("[#{0}{1}] IS ENOUGH ITEM, SKIP", floor.floorId, floor.name));
                    continue;
                }

                if (!floor.isAvailable)
                {
                    Debug.Log(String.Format("[#{0}{1}] IS NOT AVAILABLE", floor.floorId, floor.name));
                    break;
                }

                if (floor.isLocked)
                {
                    Debug.Log(String.Format("[#{0}{1}] IS LOCKED", floor.floorId, floor.name));
                    break;
                }

                if (floor.stamina > Game.runtimeData.user.currentStamina)
                {
                    Debug.Log(String.Format("[#{0}{1}] REQUIRED {2} stamina, current {3}", floor.floorId, floor.name, floor.stamina, Game.runtimeData.user.currentStamina));
                    break;
                }

                if (dedicated != null && !dedicated.isCleared)
                {
                    Debug.Log(String.Format("[#{0}{1}] IS NOT CLEARED, CLEAR IT FIRST", dedicated.floorId, dedicated.name));
                    break;
                }

                dedicated = floor;

                if (!dedicated.isCleared)
                {
                    Debug.Log(String.Format("[#{0}{1}] WILL BE CLEARED FIRST", dedicated.floorId, dedicated.name));
                    break;
                }

                foreach (var item in Game.runtimeData.stageBonus.stages)
                {
                    if (floor.stageId == item.stageId)
                    {
                        // bonusType description
                        // 1 = stamina 0.5x
                        // 2 = card drop 2x
                        // 3 = exp 2x
                        // 5 = item drop 2x
                        if (item.bonusType == 1 || item.bonusType == 3)
                        {
                            bonus = floor;
                            break;
                        }
                    }
                }
            }

            if (dedicated != null && bonus != null)
            {
                if (MyGameConfig.floor.bonusOnly && dedicated.isCleared)
                    dedicated = bonus;
            }

            return dedicated;
        }

        protected override bool Check()
        {
            if (Game.runtimeData.user.inventory.isFull)
            {
                MyDialog.ShowConfirm("包包滿了哦！\n為了蒐集更多的卡片，請趕快去整理一下包包吧！");
                return false;
            }

            targetFloor = FindOutBestFloor();
            if (targetFloor != null)
            {
                Debug.Log(String.Format("FLOOR [#{0}{1}] ready to go, required stamina {2}, current {3}.", targetFloor.floorId, targetFloor.name, targetFloor.stamina, Game.runtimeData.user.currentStamina));
                return true;
            }
            else
            {
                MyDialog.ShowConfirm("已經沒有下一個適合的關卡進行戰鬥！");
                return false;
            }
        }

        protected override void Execute(Action next)
        {
            Game.SetCurrentTeamIndex(1);
            Game.SetCurrentZone(targetFloor.stage.zoneId);
            Game.SetCurrentStage(targetFloor.stage);
            Game.SetCurrentFloor(targetFloor);

            StringBuilder cardNames = new StringBuilder();
            foreach (var pair in Game.runtimeData.currentTeam.cards)
            {
                if (pair.Value == null)
                    break;

                if (cardNames.Length > 0)
                    cardNames.Append("\n");

                cardNames.AppendFormat("{0}", pair.Value.name);
            }

            MyDialog.ShowWaiting("正在派出勇者為國家奮鬥...\n[#{0}{1}]\n{2}", targetFloor.floorId, targetFloor.name, cardNames);

            Action nextFromHere = () =>
                {
                    MyDialog.Close();
                    next();
                };

            if (targetFloor.floorId == 1)
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
                    targetFloor.floorId,
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
            Game.runtimeData.currentWaveIndex = targetFloor.waveCount - 1;

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
                            Debug.Log(String.Format("領取體力回覆 [{0}]", reward.message));
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