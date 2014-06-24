using System;

namespace AssemblyHijack.Automation
{
    internal class FloorHelper
    {
        public static void EnterAndComplete(int teamIndex, Floor target, bool isMission, Action<Loot> onLoot, Action onClear)
        {
            Game.SetCurrentTeamIndex(teamIndex);
            Game.SetCurrentZone(target.stage.zoneId);
            Game.SetCurrentStage(target.stage);
            Game.SetCurrentFloor(target);

            Game.GetHelperList(
                target.floorId,
                (helpers) =>
                {
                    // 隨機從中挑選一位助攻
                    Helper helper = helpers[UnityEngine.Random.Range(0, helpers.Count)];
                    Game.SetCurrentSelectedHelper(helper);
                    Game.EnterCurrentFloor(() =>
                    {
                        MyLog.Info("進入關卡 {0}", target.name);
                        RestoreGameplay.StartGame();

                        while (Game.getInstance().MoveToNextWave())
                        {
                            int waveIndex = Game.runtimeData.currentWaveIndex - 1;
                            int waveCount = Game.runtimeData.currentFloor.waves.Count;
                            MyLog.Verbose("慘烈廝殺中... {0} / {1}", waveIndex + 1, waveCount);
                            Wave wave = Game.runtimeData.currentFloor.waves[waveIndex];

                            foreach (var enemy in wave.enemies)
                            {
                                if (enemy.lootItem != null)
                                {
                                    Loot loot = enemy.lootItem;
                                    if (loot.type == Loot.Type.COIN)
                                        MyLog.Verbose("敵人 {0} 帶了 {1:#,0} 錢來孝敬！", enemy.name, loot.amount);
                                    else if (loot.type == Loot.Type.MONSTER)
                                        MyLog.Verbose("敵人 {0} 帶了 {1} 來孝敬！", enemy.name, loot.card.name);
                                    else if (loot.type == Loot.Type.ITEM)
                                        MyLog.Verbose("敵人 {0} 帶了 {1} 塊 [{2:0000}] 碎片來孝敬！", enemy.name, loot.amount, loot.itemId);
                                    else
                                        MyLog.Verbose("敵人 {0} 帶了不明物品 [{1}]！", enemy.name, loot.type);

                                    if (onLoot != null)
                                        onLoot(loot);
                                }
                                else
                                {
                                    MyLog.Verbose("不帶東西的敵人 {0} 出現了！", enemy.name);
                                }
                            }

                            int moveGemRound = UnityEngine.Random.Range(2, 30);
                            RestoreGameplay.eatGemRound += UnityEngine.Random.Range(2, moveGemRound + 1);
                            RestoreGameplay.moveGemRound += moveGemRound;
                        }

                        RestoreGameplay.End(true, false, false);
                        MyLog.Debug("*** 移動回合 [{0:#,0}] 吃珠回合 [{1:#,0}] ***", RestoreGameplay.moveGemRound, RestoreGameplay.eatGemRound);
                        MyLog.Debug("*** 最高連擊 [{0:#,0}] 最高攻擊 [{1:#,0}] ***", RestoreGameplay.maxCombo, RestoreGameplay.maxPlayerAttack);

                        Game.ClearCurrentFloor(() =>
                        {
                            MyLog.Info("結束關卡 {0}", target.name);

                            if (onClear != null)
                                onClear();
                        });
                    },
                    isMission);
                },
                null);
        }
    }
}