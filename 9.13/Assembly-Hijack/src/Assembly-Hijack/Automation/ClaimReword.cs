using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace AssemblyHijack.Automation
{
    internal class ClaimReword : Runnable
    {
        private IDictionary<Reward.Type, int> Report = new Dictionary<Reward.Type, int>
        {
            { Reward.Type.COIN, 0 },
            { Reward.Type.DIAMOND, 0 },
            { Reward.Type.FRIENDPOINT, 0 },
            { Reward.Type.FRIEND_SLOT, 0 },
            { Reward.Type.INVENTORY, 0 },
        };

        private DateTime nextTime = DateTime.Now;

        public override void AppendReport(StringBuilder reportBuilder)
        {
            var report = CreateReport();

            if (report.Length > 0)
            {
                reportBuilder.AppendFormat("=== 獎賞領取報告 ===\n");
                reportBuilder.Append(report);
            }
        }

        private StringBuilder CreateReport()
        {
            var builder = new StringBuilder();

            foreach (var item in Report)
            {
                if (item.Value < 1)
                    continue;

                switch (item.Key)
                {
                    case Reward.Type.COIN:
                        builder.AppendFormat("金幣 <color=yellow>{0:#,0}</color>\n", item.Value);
                        break;

                    case Reward.Type.DIAMOND:
                        builder.AppendFormat("魔法石 <color=yellow>{0:#,0}</color>\n", item.Value);
                        break;

                    case Reward.Type.FRIENDPOINT:
                        builder.AppendFormat("好友點數 <color=yellow>{0:#,0}</color>\n", item.Value);
                        break;

                    case Reward.Type.FRIEND_SLOT:
                        builder.AppendFormat("好友擴充 <color=yellow>{0:#,0}</color>\n", item.Value);
                        break;

                    case Reward.Type.INVENTORY:
                        builder.AppendFormat("背包擴充 <color=yellow>{0:#,0}</color>\n", item.Value);
                        break;

                    default:
                        break;
                }
            }

            return builder;
        }

        protected override bool Check()
        {
            return nextTime < DateTime.Now;
        }

        protected override void Execute(Action next)
        {
            Game.GetRewardList(() => ClaimReward(next));
        }

        private void ClaimReward(Action next)
        {
            foreach (var reward in Game.runtimeData.rewards)
            {
                if (!reward.isAvailable || reward.claimed)
                    continue;

                MyDialog.SetNetworkWaitingText(null, "領取獎勵\n<color=yellow>{0}</color>", reward.message);
                if (MyGame.config.automation.reward.types.Contains(reward.rewardType))
                {
                    MyLog.Info("領取獎勵 [{0}-{1}]", reward.rewardType, reward.message);
                    Game.ClaimReward(
                        reward.rewardId,
                        (diamondCompensated, cardIds) =>
                        {
                            reward.claimed = true;

                            switch (reward.rewardType)
                            {
                                case Reward.Type.COIN:
                                case Reward.Type.DIAMOND:
                                case Reward.Type.FRIENDPOINT:
                                case Reward.Type.FRIEND_SLOT:
                                case Reward.Type.INVENTORY:
                                    Report[reward.rewardType] += reward.rewardValue;
                                    break;

                                default:
                                    break;
                            }

                            ClaimReward(next);
                        },
                        null);
                    return;
                }
            }

            nextTime = DateTime.Now.AddSeconds(MyGame.config.automation.reward.period);
            next();
        }
    }
}