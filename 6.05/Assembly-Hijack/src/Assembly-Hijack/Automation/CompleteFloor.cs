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
        private Floor targetFloor = null;

        protected override bool Check()
        {
            if (Game.runtimeData.user.inventory.isFull)
            {
                MyDialog.ShowConfirm("包包滿了哦！\n為了蒐集更多的卡片，請趕快去整理一下包包吧！");
                return false;
            }

            targetFloor = null;
            User user = Game.runtimeData.user;
            Floor lastAvailableFloor = null;
            Floor lastBonusFloor = null;
            foreach (var floor in Game.database.floors.Values)
            {
                if (floor.stageId == 1 && Game.runtimeData.completedFloorIds.Contains(floor.floorId))
                {
                    //Debug.Log(String.Format("floor [#{0}{1}] CANNNOT ENTER TWICE", floor.floorId, floor.name));
                    continue;
                }

                //if (floor.isChallengeFloor)
                //{
                //    Debug.Log(String.Format("floor [#{0}{1}] IS CHALLENGE FLOOR", floor.floorId, floor.name));
                //    continue;
                //}

                if (!floor.isAvailable)
                {
                    Debug.Log(String.Format("floor [#{0}{1}] IS NOT AVAILABLE", floor.floorId, floor.name));
                    break;
                }

                if (floor.isLocked)
                {
                    Debug.Log(String.Format("floor [#{0}{1}] IS LOCKED", floor.floorId, floor.name));
                    break;
                }

                if (floor.stamina > user.currentStamina)
                {
                    Debug.Log(String.Format("floor [#{0}{1}] REQUIRED {2} stamina, current {3}", floor.floorId, floor.name, floor.stamina, user.currentStamina));
                    break;
                }

                if (lastAvailableFloor != null && !lastAvailableFloor.isCleared)
                {
                    Debug.Log(String.Format("floor [#{0}{1}] IS NOT CLEARED", lastAvailableFloor.floorId, lastAvailableFloor.name));
                    break;
                }

                if (floor.unlockByItem && !floor.isItemCollected)
                {
                    Debug.Log(String.Format("floor [#{0}{1}] IS ENOUGH ITEM, SKIP THIS FLOOR", floor.floorId, floor.name));
                    continue;
                }

                lastAvailableFloor = floor;

                foreach (var item in Game.runtimeData.stageBonus.stages)
                {
                    if (floor.stageId == item.stageId)
                    {
                        lastBonusFloor = floor;
                        break;
                    }
                }
            }

            if (lastAvailableFloor != null)
            {
                if (lastAvailableFloor.isCleared && lastBonusFloor != null)
                    lastAvailableFloor = lastBonusFloor;

                Debug.Log(String.Format("floor [#{0}{1}] ready to go, required stamina {2}, current {3}.", lastAvailableFloor.floorId, lastAvailableFloor.name, lastAvailableFloor.stamina, user.currentStamina));
                targetFloor = lastAvailableFloor;
            }

            if (targetFloor == null)
            {
                MyDialog.ShowConfirm("已經沒有下一個適合的關卡進行戰鬥！");
                return false;
            }

            return true;
        }

        protected override void Execute(Action next)
        {
            string json = JsonWriter.Serialize(targetFloor);
            char[] chars = json.ToCharArray();
            int packageIndex = 0;
            while (true)
            {
                var charBuffer = new List<char>(800);
                int baseIndex = packageIndex * charBuffer.Capacity;
                for (int i = 0; i < charBuffer.Capacity && baseIndex + i < chars.Length; i++)
                {
                    charBuffer.Add(chars[baseIndex + i]);
                }

                if (charBuffer.Count < 1)
                    break;

                Debug.Log(new String(charBuffer.ToArray()));
                packageIndex++;
                charBuffer.Clear();
            }

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