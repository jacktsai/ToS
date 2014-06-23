using System;
using System.Collections.Generic;
using System.Linq;
using UnityEngine;

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

        public override void AppendReport(System.Text.StringBuilder builder)
        {
            foreach (var item in Report)
            {
                if (item.Value < 1)
                    continue;

                switch (item.Key)
                {
                    case Reward.Type.COIN:
                        builder.AppendFormat("共接受 {0:#,0} 金錢獎勵\n", item.Value);
                        break;

                    case Reward.Type.DIAMOND:
                        builder.AppendFormat("共接受 {0:#,0} 顆魔法石獎勵\n", item.Value);
                        break;

                    case Reward.Type.FRIENDPOINT:
                        builder.AppendFormat("共接受 {0:#,0} 點好友點數獎勵\n", item.Value);
                        break;

                    case Reward.Type.FRIEND_SLOT:
                        builder.AppendFormat("共接受 {0:#,0} 次好友擴充獎勵\n", item.Value);
                        break;

                    case Reward.Type.INVENTORY:
                        builder.AppendFormat("共接受 {0:#,0} 次背包擴充獎勵\n", item.Value);
                        break;

                    default:
                        break;
                }
            }
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

                if (MyGame.config.reward.types.Contains((int)reward.rewardType))
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

            nextTime = DateTime.Now.AddSeconds(MyGame.config.reward.period);
            next();
        }
    }
}