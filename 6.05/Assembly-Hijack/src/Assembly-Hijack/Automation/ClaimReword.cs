using System;
using System.Linq;
using UnityEngine;

namespace AssemblyHijack.Automation
{
    internal class ClaimReword : Runnable
    {
        private DateTime nextTime = DateTime.Now;

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

                if (MyGameConfig.reward.types.Contains((int)reward.rewardType))
                {
                    Debug.Log(String.Format("領取獎勵 {0} [{1}]", reward.rewardType, reward.message));
                    Game.ClaimReward(
                        reward.rewardId,
                        (diamondCompensated, cardIds) =>
                        {
                            reward.claimed = true;
                            ClaimReward(next);
                        },
                        () =>
                        {
                        });
                    return;
                }
            }

            nextTime = DateTime.Now.AddSeconds(MyGameConfig.reward.period);
            next();
        }
    }
}