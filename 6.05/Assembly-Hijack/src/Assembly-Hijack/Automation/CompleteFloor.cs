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
            if (MyGame.config.floor.floors.Length > 0)
            {
                floorProviders.Add(new Dedicated(MyGame.config.floor.floors));
            }
            else
            {
                floorProviders.Add(new Extreme()); // optimized of normal
            }
        }

        public override void AppendReport(StringBuilder builder)
        {
            builder.AppendFormat("=== 地下城攻打成果 ===\n");

            int floorCount = 0;
            foreach (var item in Report_Floor)
            {
                if (item.Value < 1)
                    continue;

                Floor floor = Game.database.floors[item.Key];
                builder.AppendFormat("{0} 通關 {1} 次\n", floor.name, item.Value);
                floorCount += item.Value;
            }
            builder.AppendFormat("共通關 {0:#,0} 次地下城\n", floorCount);

            int cardCount = 0;
            foreach (var item in Report_Card)
            {
                if (item.Value < 1)
                    continue;

                Monster monster = Game.database.monsters[item.Key];
                builder.AppendFormat("{0} 領取 {1} 張\n", monster.name, item.Value);
                cardCount += item.Value;
            }
            builder.AppendFormat("共領取 {0:#,0} 張卡片\n", cardCount);

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

            builder.AppendFormat("===================\n");
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
                MyLog.Info("關卡已判定 {0}-{1}, 所需體力[{2}] 目前體力[{3}]", stage.name, candidate.name, candidate.stamina, Game.runtimeData.user.currentStamina);
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

            var userBefore = Game.runtimeData.user.Clone();
            FloorHelper.EnterAndComplete(
                1,
                candidate,
                false,
                (loot) =>
                {
                    if (loot.type == Loot.Type.MONSTER)
                        Report_Card[loot.card.monsterId]++;
                },
                () =>
                {
                    Stage stage = candidate.stage;
                    MyLog.Info("已完成關卡 {0}-{1}", stage.name, candidate.name);
                    Report_User[REPORT_USER_LEVEL] += Game.runtimeData.user.level - userBefore.level;
                    Report_User[REPORT_USER_EXP] += Game.runtimeData.user.accumulativeLevelExp - userBefore.accumulativeLevelExp;
                    Report_User[REPORT_USER_FRIEND_POINT] += Game.runtimeData.user.friendPoint - userBefore.friendPoint;
                    Report_User[REPORT_USER_COIN] += Game.runtimeData.user.coin - userBefore.coin;
                    Report_User[REPORT_USER_DIAMOND] += Game.runtimeData.user.diamond - userBefore.diamond;
                    Report_User[REPORT_USER_STAMINA] += Game.runtimeData.user.currentStamina - userBefore.currentStamina;
                    Report_Floor[Game.runtimeData.currentFloor.floorId]++;
                    SendFriendRequest(next);
                });
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

            if (MyGame.config.floor.requestFriend)
            {
                Helper helper = Game.runtimeData.currentSelectedHelper;
                if (helper != null && !Game.runtimeData.user.isFriendsFull)
                {
                    Game.SendFriendRequest(helper.uid, delegate
                    {
                        MyLog.Info("已對 '[#{0}]{1}' 發送好友邀請", helper.uid, helper.name);
                        next();
                    }, null);
                    return;
                }
            }

            newNext();
        }

        private void CheckStamina(Action next)
        {
            if (MyGame.config.floor.recovery.enabled && Game.runtimeData.user.currentStamina < MyGame.config.floor.recovery.threshold)
            {
                if (MyGame.config.floor.recovery.reward)
                {
                    foreach (var reward in Game.runtimeData.rewards)
                    {
                        if (!reward.isAvailable || reward.claimed)
                            continue;

                        if (reward.rewardType == Reward.Type.RECOVERY)
                        {
                            MyLog.Info("使用獎勵 [{0}] 回復體力", reward.message);
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

                    MyLog.Info("獎勵不足，無法回復體力");
                }
                else
                {
                    MyLog.Info("未允許使用獎勵回復體力");
                }

                if (MyGame.config.floor.recovery.diamond)
                {
                    if (Game.runtimeData.user.diamond > 0)
                    {
                        MyLog.Info("使用 [魔法石] 回復體力");
                        Game.RecoverStamina(() =>
                            {
                                Report_User[REPORT_USER_RECOVERY_DIAMOND] += 1;
                                next();
                            }, null);
                        return;
                    }

                    MyLog.Info("魔法石不足，無法回復體力");
                }
                else
                {
                    MyLog.Info("未允許使用魔法石回復體力");
                }
            }
            else
            {
                MyLog.Info("未允許自動回復體力，或目前體力 [{0}] 未小於設定值 [{1}]", Game.runtimeData.user.currentStamina, MyGame.config.floor.recovery.threshold);
            }

            next();
        }
    }
}