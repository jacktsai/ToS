using AssemblyHijack.Automation.FloorStrategy;
using System;
using System.Collections.Generic;
using System.Text;
using System.Threading;

namespace AssemblyHijack.Automation
{
    internal class CompleteFloor : Runnable
    {
        private const string REPORT_USER_LEVEL = "level";
        private const string REPORT_USER_EXP = "exp";
        private const string REPORT_USER_FRIEND_POINT = "friend_point";
        private const string REPORT_USER_COIN = "coin";
        private const string REPORT_USER_DIAMOND = "diamond";
        private const string REPORT_USER_RECOVERY_REWARD = "recovery_reward";
        private const string REPORT_USER_RECOVERY_DIAMOND = "recovery_diamond";
        private const string REPORT_USER_STAMINA = "stamina";

        private readonly IList<IStrategy> floorProviders = new List<IStrategy>(new IStrategy[]
        {
            new BasicFloorProvider(Stage.Type.TUTORIAL, false),
            new BasicFloorProvider(Stage.Type.UNLIMITED, false),
        });

        private Floor candidate = null;

        private bool reportInited = false;

        private IDictionary<string, int> Report_User = new Dictionary<string, int>
        {
            { REPORT_USER_LEVEL, 0 },
            { REPORT_USER_EXP, 0 },
            { REPORT_USER_FRIEND_POINT, 0 },
            { REPORT_USER_COIN, 0 },
            { REPORT_USER_DIAMOND, 0 },
            { REPORT_USER_RECOVERY_REWARD, 0 },
            { REPORT_USER_RECOVERY_DIAMOND, 0 },
            { REPORT_USER_STAMINA, 0 },
        };

        private IDictionary<int, int> Report_Floor = new Dictionary<int, int>();
        private IDictionary<int, int> Report_Card = new Dictionary<int, int>();

        public CompleteFloor()
        {
            if (MyGameConfig.floor.floors.Length > 0)
            {
                floorProviders.Add(new Dedicated(MyGameConfig.floor.floors));
            }
            else
            {
                floorProviders.Add(new Extreme()); // optimized of normal
            }
        }

        public override void AppendReport(StringBuilder builder)
        {
            builder.AppendFormat("=== 地下城攻打成果 ===\n");

            foreach (var item in Report_Floor)
            {
                if (item.Value < 1)
                    continue;

                Floor floor = Game.database.floors[item.Key];
                builder.AppendFormat("[{1}] 通關 {2} 次\n", floor.floorId, floor.name, item.Value);
            }

            foreach (var item in Report_Card)
            {
                if (item.Value < 1)
                    continue;

                Monster monster = Game.database.monsters[item.Key];
                builder.AppendFormat("[#{0}{1}] 領取 {2} 張\n", monster.monsterId, monster.name, item.Value);
            }

            foreach (var item in Report_User)
            {
                if (item.Value < 1)
                    continue;

                if (item.Key == REPORT_USER_STAMINA)
                    builder.AppendFormat("共花費體力 {0:#,0} 點\n", item.Value);
                else if (item.Key == REPORT_USER_EXP)
                    builder.AppendFormat("經驗增加 {0:#,0}\n", item.Value);
                else if (item.Key == REPORT_USER_FRIEND_POINT)
                    builder.AppendFormat("點數增加 {0:#,0} 點\n", item.Value);
                else if (item.Key == REPORT_USER_COIN)
                    builder.AppendFormat("錢幣增加 {0:#,0}\n", item.Value);
                else if (item.Key == REPORT_USER_DIAMOND)
                    builder.AppendFormat("取得魔法石 {0} 顆\n", item.Value);
                else if (item.Key == REPORT_USER_RECOVERY_REWARD)
                    builder.AppendFormat("使用 {0} 次體力回復獎勵\n", item.Value);
                else if (item.Key == REPORT_USER_RECOVERY_DIAMOND)
                    builder.AppendFormat("使用 {0} 次魔法石回復體力\n", item.Value);
                else if (item.Key == REPORT_USER_LEVEL)
                    builder.AppendFormat("等級提升 {0} 級\n", item.Value);
            }

            builder.AppendFormat("================\n");
        }

        protected override bool Check()
        {
            if (Game.runtimeData.user.inventory.isFull)
            {
                MyLog.Info("背包已滿");
                return false;
            }

            candidate = FindNextFloor();

            if (candidate != null)
            {
                Stage stage = candidate.stage;
                MyLog.Debug("關卡已判定[#{0}{1}]-[#{2}{3}], 所需體力[{4}], 目前體力[{5}]",
                    stage.stageId, stage.name, candidate.floorId, candidate.name,
                    candidate.stamina, Game.runtimeData.user.currentStamina);
                return true;
            }
            else
            {
                MyLog.Info("已經沒有下一個適合的關卡");
                return false;
            }
        }

        protected override void Execute(Action next)
        {
            InitReport();

            Game.SetCurrentTeamIndex(1);
            Game.SetCurrentZone(candidate.stage.zoneId);
            Game.SetCurrentStage(candidate.stage);
            Game.SetCurrentFloor(candidate);

            var userBefore = Game.runtimeData.user.Clone();

            Game.GetHelperList(
                candidate.floorId,
                (helpers) =>
                {
                    // 隨機從中挑選一位助攻
                    Helper helper = helpers[UnityEngine.Random.Range(0, helpers.Count)];
                    Game.SetCurrentSelectedHelper(helper);
                    Game.EnterCurrentFloor(() =>
                    {
                        MyLog.Info("進入關卡 [#{0}-{1}]", candidate.floorId, candidate.name);
                        RestoreGameplay.StartGame();

                        while (Game.instance.MoveToNextWave())
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
                                        MyLog.Verbose("敵人 [#{0}-{1}] 帶了 {2:#,0} 金幣來孝敬！", enemy.monsterId, enemy.name, loot.amount);
                                    else if (loot.type == Loot.Type.MONSTER)
                                    {
                                        MyLog.Verbose("敵人 [#{0}-{1}] 帶了 [#{2}-{3}] 來孝敬！", enemy.monsterId, enemy.name, loot.card.monsterId, loot.card.name);
                                        Report_Card[loot.card.monsterId]++;
                                    }
                                    else if (loot.type == Loot.Type.ITEM)
                                        MyLog.Verbose("敵人 [#{0}-{1}] 帶了 [{2}] 塊 [{3}] 碎片來孝敬！", enemy.monsterId, enemy.name, loot.itemId, loot.amount);
                                    else
                                        MyLog.Verbose("敵人 [#{0}-{1}] 帶了不明物品 [{2}]！", enemy.monsterId, enemy.name, loot.type);
                                }
                                else
                                {
                                    MyLog.Verbose("不帶東西的敵人 [#{0}-{1}] 出現了！", enemy.monsterId, enemy.name);
                                }
                            }
                        }

                        RestoreGameplay.End(true, false, false);
                        MyLog.Verbose("*** 最高連擊[{0:#,0}] 最高攻擊[{1:#,0}] ***", RestoreGameplay.maxCombo, RestoreGameplay.maxPlayerAttack);

                        Game.ClearCurrentFloor(() =>
                        {
                            MyLog.Info("結束關卡 [#{0}{1}]", candidate.floorId, candidate.name);
                            Report_User[REPORT_USER_LEVEL] += Game.runtimeData.user.level - userBefore.level;
                            Report_User[REPORT_USER_EXP] += Game.runtimeData.user.accumulativeLevelExp - userBefore.accumulativeLevelExp;
                            Report_User[REPORT_USER_FRIEND_POINT] += Game.runtimeData.user.friendPoint - userBefore.friendPoint;
                            Report_User[REPORT_USER_COIN] += Game.runtimeData.user.coin - userBefore.coin;
                            Report_User[REPORT_USER_DIAMOND] += Game.runtimeData.user.diamond - userBefore.diamond;
                            Report_User[REPORT_USER_STAMINA] += Game.runtimeData.user.currentStamina - userBefore.currentStamina;
                            Report_Floor[Game.runtimeData.currentFloor.floorId]++;
                            SendFriendRequest(next);
                        });
                    },
                        false);
                },
            null);
        }

        private Floor FindNextFloor()
        {
            foreach (var provider in floorProviders)
            {
                var candidate = provider.NextFloor();
                if (candidate != null)
                    return candidate;
            }

            return null;
        }

        private void InitReport()
        {
            if (reportInited)
                return;

            foreach (var floor in Game.database.floors)
            {
                Report_Floor.Add(floor.Key, 0);
            }

            foreach (var monster in Game.database.monsters)
            {
                Report_Card.Add(monster.Key, 0);
            }

            reportInited = true;
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
                    MyLog.Info("對 [{0}] 發送好友邀請", helper.name);
                    Game.SendFriendRequestInBackground(helper.uid);
                    Thread.Sleep(300); // 這支 API 的回應非常快，如果 API 打太快會讓流程中斷，故在這裡作一個 sleep
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
                            MyLog.Info("從 [{0}] 回覆體力", reward.message);
                            Game.ClaimReward(
                                reward.rewardId,
                                (diamondCompensated, cardIds) =>
                                {
                                    reward.claimed = true;
                                    Report_User[REPORT_USER_RECOVERY_REWARD] += 1;
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
                        MyLog.Info("從 [魔法石] 回覆體力");
                        Game.RecoverStamina(() =>
                            {
                                Report_User[REPORT_USER_RECOVERY_DIAMOND] += 1;
                                next();
                            }, null);
                        return;
                    }
                }
            }

            next();
        }
    }
}