using System;
using System.Collections.Generic;
using System.Text;
using System.Threading;
using AssemblyHijack.Automation.FloorStrategy;

namespace AssemblyHijack.Automation
{
    internal class CompleteFloor : Runnable
    {
        private const string REPORT_USER_LEVEL = "level";
        private const string REPORT_USER_EXP = "exp";
        private const string REPORT_USER_FRIEND_POINT = "friend_point";
        private const string REPORT_USER_COIN = "coin";
        private const string REPORT_USER_DIAMOND = "diamond";
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
            { REPORT_USER_STAMINA, 0 },
            { REPORT_USER_COIN, 0 },
            { REPORT_USER_EXP, 0 },
            { REPORT_USER_DIAMOND, 0 },
            { REPORT_USER_LEVEL, 0 },
            { REPORT_USER_FRIEND_POINT, 0 },
        };

        private IDictionary<int, int> Report_Floor = new Dictionary<int, int>();
        private IDictionary<int, int> Report_Card = new Dictionary<int, int>();

        public CompleteFloor()
        {
            if (MyGame.config.automation.floor.floorIds.Length > 0)
            {
                floorProviders.Add(new Dedicated(MyGame.config.automation.floor.floorIds));
            }
            else
            {
                floorProviders.Add(new Extreme()); // optimized of normal
            }
        }

        public override void AppendReport(StringBuilder reportBuilder)
        {
            var report = CreateReport();

            if (report.Length > 0)
            {
                reportBuilder.AppendFormat("=== 通關成果報告 ===\n");
                reportBuilder.Append(report);
            }
        }

        private StringBuilder CreateReport()
        {
            var reportBuilder = new StringBuilder();

            int floorCount = 0;
            foreach (var item in Report_Floor)
            {
                if (item.Value < 1)
                    continue;

                Floor floor = Game.database.floors[item.Key];
                reportBuilder.AppendFormat("{0} {1} 次\n", floor.name, item.Value);
                floorCount += item.Value;
            }

            int cardCount = 0;
            foreach (var item in Report_Card)
            {
                if (item.Value < 1)
                    continue;

                Monster monster = Game.database.monsters[item.Key];
                reportBuilder.AppendFormat("{0} {1} 張\n", monster.name, item.Value);
                cardCount += item.Value;
            }

            if (floorCount > 0)
                reportBuilder.AppendFormat("通關 <color=yellow>{0:#,0}</color> 次\n", floorCount);

            if (cardCount > 0)
                reportBuilder.AppendFormat("卡片 <color=yellow>{0:#,0}</color> 張\n", cardCount);

            foreach (var item in Report_User)
            {
                if (item.Value < 1)
                    continue;

                if (item.Key == REPORT_USER_STAMINA)
                    reportBuilder.AppendFormat("體力 <color=yellow>{0:#,0}</color>\n", item.Value);
                else if (item.Key == REPORT_USER_EXP)
                    reportBuilder.AppendFormat("經驗值 <color=yellow>{0:#,0}</color>\n", item.Value);
                else if (item.Key == REPORT_USER_FRIEND_POINT)
                    reportBuilder.AppendFormat("好友點數 <color=yellow>{0:#,0}</color>\n", item.Value);
                else if (item.Key == REPORT_USER_COIN)
                    reportBuilder.AppendFormat("金幣 <color=yellow>{0:#,0}</color>\n", item.Value);
                else if (item.Key == REPORT_USER_DIAMOND)
                    reportBuilder.AppendFormat("魔法石 <color=yellow>{0}</color>\n", item.Value);
                else if (item.Key == REPORT_USER_LEVEL)
                    reportBuilder.AppendFormat("等級提升 <color=yellow>{0}</color>\n", item.Value);
            }

            return reportBuilder;
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

            MyDialog.SetNetworkWaitingText(null, "進行關卡\n<color=yellow>{0}\n{1}</color>", candidate.stage.name, candidate.name);
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
                    MyLog.Info("完成關卡 {0}-{1}", stage.name, candidate.name);
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
            if (MyGame.config.automation.floor.requestFriend)
            {
                Helper helper = Game.runtimeData.currentSelectedHelper;
                if (helper != null && !helper.isFriend && !helper.isFriendsFull && !Game.runtimeData.user.isFriendsFull)
                {
                    Game.SendFriendRequest(helper.uid, delegate
                    {
                        MyLog.Info("已對 '[#{0}]{1}' 發送好友邀請", helper.uid, helper.name);
                        next();
                    }, null);
                    return;
                }
            }

            next();
        }
    }
}