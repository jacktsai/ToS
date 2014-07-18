using System;
using System.Collections.Generic;
using System.Text;

namespace AssemblyHijack.Automation
{
    internal class RecoverStamina : Runnable
    {
        private enum RecoveryKind
        {
            Reward,
            Diamond,
        }

        private const string REPORT_USER_RECOVERY_REWARD = "recovery_reward";
        private const string REPORT_USER_RECOVERY_DIAMOND = "recovery_diamond";

        private IDictionary<string, int> Report_User = new Dictionary<string, int>
        {
            { REPORT_USER_RECOVERY_REWARD, 0 },
            { REPORT_USER_RECOVERY_DIAMOND, 0 },
        };

        private RecoveryKind usage;
        private Reward reward;

        public override void AppendReport(StringBuilder reportBuilder)
        {
            var report = CreateReport();

            if (report.Length > 0)
            {
                reportBuilder.AppendFormat("=== 體力回復報告 ===\n");
                reportBuilder.Append(report);
            }
        }

        private StringBuilder CreateReport()
        {
            var reportBuilder = new StringBuilder();

            foreach (var item in Report_User)
            {
                if (item.Value < 1)
                    continue;

                if (item.Key == REPORT_USER_RECOVERY_REWARD)
                    reportBuilder.AppendFormat("使用 {0} 次體力回復獎勵\n", item.Value);
                else if (item.Key == REPORT_USER_RECOVERY_DIAMOND)
                    reportBuilder.AppendFormat("使用 {0} 次魔法石回復體力\n", item.Value);
            }

            return reportBuilder;
        }

        protected override bool Check()
        {
            if (Game.runtimeData.user.currentStamina > MyGame.config.automation.recovery.threshold)
            {
                MyLog.Debug("目前體力 [{0}] 大於設定值 [{1}]，暫時不補充體力", Game.runtimeData.user.currentStamina, MyGame.config.automation.recovery.threshold);
                return false;
            }

            if (MyGame.config.automation.recovery.reward)
            {
                foreach (var candidate in Game.runtimeData.rewards)
                {
                    if (candidate.rewardType == Reward.Type.RECOVERY && candidate.isAvailable && !candidate.claimed)
                    {
                        usage = RecoveryKind.Reward;
                        reward = candidate;
                        return true;
                    }
                }

                MyLog.Debug("獎勵不足，無法回復體力");
            }
            else
            {
                MyLog.Debug("未允許使用獎勵回復體力");
            }

            if (MyGame.config.automation.recovery.diamond)
            {
                if (Game.runtimeData.user.diamond > 0)
                {
                    usage = RecoveryKind.Diamond;
                    return true;
                }

                MyLog.Debug("魔法石不足，無法回復體力");
            }
            else
            {
                MyLog.Debug("未允許使用魔法石回復體力");
            }

            return false;
        }

        protected override void Execute(Action next)
        {
            if (usage == RecoveryKind.Reward)
            {
                MyDialog.SetNetworkWaitingText(null, "使用 [獎勵] 回復體力");
                Game.ClaimReward(
                    reward.rewardId,
                    (diamondCompensated, cardIds) =>
                    {
                        MyLog.Info("已從獎勵 [{0}] 回復體力", reward.message);
                        reward.claimed = true;
                        Report_User[REPORT_USER_RECOVERY_REWARD] += 1;
                        next();
                    },
                    null);
            }
            else if (usage == RecoveryKind.Diamond)
            {
                MyDialog.SetNetworkWaitingText(null, "使用 [魔法石] 回復體力");
                Game.RecoverStamina(() =>
                    {
                        MyLog.Info("已從 [魔法石] 回復體力");
                        Report_User[REPORT_USER_RECOVERY_DIAMOND] += 1;
                        next();
                    }, null);
            }
        }
    }
}