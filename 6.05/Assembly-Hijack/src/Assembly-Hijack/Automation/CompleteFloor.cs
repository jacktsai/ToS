using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading;
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
            Floor availableFloor = null;
            if (!user.completedFloorIds.Contains(1))
            {
                availableFloor = Game.database.floors[1];
            }
            else if (!user.completedFloorIds.Contains(2))
            {
                availableFloor = Game.database.floors[2];
            }
            else if (!user.completedFloorIds.Contains(3))
            {
                availableFloor = Game.database.floors[3];
            }
            else
            {
                foreach (var floor in Game.database.floors.Values)
                {
                    if (floor.stageId == 1)
                        continue;

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

                    availableFloor = floor;
                }
            }

            if (availableFloor != null)
            {
                Debug.Log(String.Format("floor [#{0}{1}] ready to go, required stamina {2}, current {3}.", availableFloor.floorId, availableFloor.name, availableFloor.stamina, user.currentStamina));
                targetFloor = availableFloor;
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
            Game.runtimeData.currentFloor = targetFloor;
            Game.runtimeData.currentStage = targetFloor.stage;
            Game.runtimeData.currentZone = targetFloor.stage.zone;

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

            if (Game.runtimeData.currentFloor.floorId == 1)
            {
                Game.runtimeData.currentSelectedHelper = null;
                Game.EnterCurrentFloor(() =>
                    {
                        CompleteCurrentFloor(nextFromHere);
                    });
            }
            else
            {
                Game.GetHelperList(
                    Game.runtimeData.currentFloor.floorId,
                    helpers =>
                    {
                        Game.runtimeData.currentSelectedHelper = helpers[0];
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
            var floor = Game.runtimeData.currentFloor;
            var team = Game.runtimeData.currentTeam;
            var maxCombo = UnityEngine.Random.Range(5, 12);

            Game.runtimeData.maxCombo = maxCombo;
            Game.runtimeData.maxAttack = (int)((team.attackWater + team.attackFire + team.attackGrass + team.attackLight + team.attackDark) * (1 + maxCombo * 0.25));
            Game.runtimeData.currentWaveIndex = floor.waveCount - 1;

            Game.ClearCurrentFloor(() =>
                {
                    SendFriendRequest(next);
                });
        }

        private void SendFriendRequest(Action next)
        {
            if (MyGameConfig.floor.requestFriend)
            {
                Helper helper = Game.runtimeData.currentSelectedHelper;
                if (helper != null && !Game.runtimeData.user.isFriendsFull)
                {
                    Game.SendFriendRequest(helper.uid, next, i => { });
                    return;
                }
            }

            next();
        }
    }
}