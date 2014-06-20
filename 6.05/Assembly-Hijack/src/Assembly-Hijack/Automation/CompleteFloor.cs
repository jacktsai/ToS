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
        private Floor[] dedicatedFloors = null;
        private Floor targetFloor = null;

        private IEnumerable<Floor> GetDedicatedFloors()
        {
            if (dedicatedFloors == null)
            {
                if (MyGameConfig.floor.floors.Length > 0)
                {
                    dedicatedFloors = MyGameConfig.floor.floors.Select(id => Game.database.floors[id]).ToArray();
                }
                else
                {
                    dedicatedFloors = Game.database.floors.Values.ToArray();
                }

                int count = dedicatedFloors.Count();
                MyDebug.Log("關卡總數：{0:#,0}", count);
            }

            return dedicatedFloors;
        }

        private Floor FindOutBestFloor()
        {
            Floor dedicated = null;

            dedicated = FindDaily();

            if (dedicated == null)
            {
                dedicated = FindByMode();
            }

            return dedicated;
        }

        private Floor FindDaily()
        {
            if (!MyGameConfig.floor.daily)
                return null;

            foreach (var stage in Game.database.stages.Values)
            {
                if (stage.type != Stage.Type.DAILY)
                    continue;

                foreach (var floor in stage.availableFloors)
                {
                    if (!floor.isPlayed)
                        return floor;
                }
            }

            return null;
        }

        private Floor FindByMode()
        {
            Floor dedicated = null;
            Floor bonus = null;

            foreach (var floor in GetDedicatedFloors())
            {
                MyDebug.Log(floor);
                Stage stage = floor.stage;

                if (stage.type == Stage.Type.TUTORIAL || stage.type == Stage.Type.ONEOFF)
                {
                    if (floor.isCleared)
                    {
                        Debug.Log(String.Format("[#{0}{1}] HAS BEEN CLEARED, SKIP", floor.floorId, floor.name));
                        continue;
                    }
                }

                if (floor.unlockByItem && !floor.isItemCollected)
                {
                    Debug.Log(String.Format("[#{0}{1}] IS NOT ENOUGH ITEM, SKIP", floor.floorId, floor.name));
                    continue;
                }

                if (!floor.isAvailable)
                {
                    Debug.Log(String.Format("[#{0}{1}] IS NOT AVAILABLE, STOP", floor.floorId, floor.name));
                    break;
                }

                if (floor.isLocked)
                {
                    Debug.Log(String.Format("[#{0}{1}] IS LOCKED, STOP", floor.floorId, floor.name));
                    break;
                }

                if (floor.stamina > Game.runtimeData.user.currentStamina)
                {
                    Debug.Log(String.Format("[#{0}{1}] STAMINA REQUIRED {2} , CURRENT {3}, STOP", floor.floorId, floor.name, floor.stamina, Game.runtimeData.user.currentStamina));
                    break;
                }

                if (dedicated != null && !dedicated.isCleared)
                {
                    Debug.Log(String.Format("[#{0}{1}] IS NOT CLEARED, CLEAR IT FIRST, STOP", dedicated.floorId, dedicated.name));
                    break;
                }

                dedicated = floor;

                if (!dedicated.isCleared)
                {
                    Debug.Log(String.Format("[#{0}{1}] WOULD BE CLEARED FIRST, STOP", dedicated.floorId, dedicated.name));
                    break;
                }

                if (stage.isBonus && (stage.bonusType == Stage.BonusType.STAMINA || stage.bonusType == Stage.BonusType.EXP))
                {
                    if (bonus != null)
                    {
                        // 以 EXP 的優先較高，否則取關卡等級高者
                        if (stage.bonusType == Stage.BonusType.EXP || bonus.stage.bonusType == Stage.BonusType.STAMINA)
                            bonus = floor;
                    }
                    else
                        bonus = floor;

                    Debug.Log(String.Format("[#{0}{1}] WOULD BE THE BEST BONUS FLOOR", bonus.floorId, bonus.name));
                }
            }

            if (dedicated != null && bonus != null)
            {
                if (dedicated.isCleared)
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