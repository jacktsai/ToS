using System;
using TOS;

namespace AssemblyHijack.Automation
{
    internal class FloorHelper
    {
        public static void EnterAndComplete(int teamIndex, Floor target, bool isMission, Action<Loot> onLoot, Action onCleared)
        {
            Game.GetHelperList(
                target.floorId,
                (helpers) =>
                {
                    Helper helper = helpers[UnityEngine.Random.Range(0, helpers.Count)]; // 隨機從中挑選一位助攻
                    Game.SetCurrentSelectedHelper(helper);
                    Game.SetCurrentTeamIndex(teamIndex);
                    Game.SetCurrentZone(target.stage.zoneId);
                    Game.SetCurrentStage(target.stage);
                    Game.SetCurrentFloor(target);
                    Game.EnterCurrentFloor((data) =>
                    {
                        MyLog.Info("進入關卡 {0}", target.name);

                        var combat = new Combat(Game.runtimeData.currentFloor.waves);
                        combat.GoGoGo(
                            (waveOrder, waveCount) =>
                            {
                                MyLog.Verbose("第 {0}/{1} 波戰鬥開始", waveOrder, waveCount);
                            },
                            (waveOrder, waveCount) =>
                            {
                                MyLog.Verbose("第 {0}/{1} 波戰鬥結束", waveOrder, waveCount);
                            },
                            (enemy) =>
                            {
                                if (enemy.lootItem != null)
                                {
                                    Loot loot = enemy.lootItem;
                                    if (loot.type == Loot.Type.COIN)
                                        MyLog.Verbose("敵人 {0} 帶了 {1:#,0} 個金幣來孝敬！", enemy.name, loot.amount);
                                    else if (loot.type == Loot.Type.MONSTER)
                                        MyLog.Verbose("敵人 {0} 帶了卡片 {1} 來孝敬！", enemy.name, loot.card.name);
                                    else if (loot.type == Loot.Type.ITEM)
                                        MyLog.Verbose("敵人 {0} 帶了 {1} 塊 [{2:0000}] 碎片來孝敬！", enemy.name, loot.amount, loot.itemId);
                                    else
                                        MyLog.Verbose("敵人 {0} 帶了不明物品 {1}！", enemy.name, loot.type);

                                    if (onLoot != null)
                                        onLoot(loot);
                                }
                                else
                                {
                                    MyLog.Verbose("不帶東西的敵人 {0} 出現了！", enemy.name);
                                }
                            },
                            () =>
                            {
                                Game.ClearCurrentFloor(() =>
                                {
                                    MyLog.Info("結束關卡 {0}", target.name);

                                    if (onCleared != null)
                                        onCleared();
                                });
                            });
                    },
                    isMission);
                },
                null);
        }
    }
}