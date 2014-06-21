using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using UnityEngine;

namespace AssemblyHijack.Automation
{
    internal class MergeCard : Runnable
    {
        private Card target = null;
        private IList<Card> children = new List<Card>();
        private int expectedCoin = 0;

        protected override bool Check()
        {
            if (!Game.runtimeData.user.inventory.isFull)
            {
                MyLog.Debug("背包未滿, 暫不判定需要升級的卡片");
                return false;
            }

            foreach (var teamCardId in Game.runtimeData.teamCardIds)
            {
                var candidate = Game.runtimeData.user.inventory.GetCard(teamCardId);
                if (candidate.isLevelMax)
                {
                    MyLog.Debug("[{0}]已經到達最高級別[{1}], 不需要再升級", candidate.name, candidate.level);
                }
                else
                {
                    if (Estimate(candidate))
                        return true;
                }
            }

            MyLog.Debug("找不到合適的卡片進行升級！");

            return false;
        }

        protected override void Execute(Action next)
        {
            StringBuilder cardNames = new StringBuilder();
            foreach (var card in children)
            {
                if (cardNames.Length > 0)
                    cardNames.Append("\n");

                cardNames.AppendFormat("{0}", card.name);
            }

            Game.SetMonsterUpgradeTarget(target);
            Game.SetMonsterUpgradeChildren(children.ToArray());
            Game.UpgradeMonster(next);
        }

        private bool Estimate(Card candidate)
        {
            StringBuilder cardNames = new StringBuilder();

            var sarcrificers = Game.runtimeData.user.inventory.cards.Values
                .Where(c => !c.inUse && !c.bookmark && MyGameConfig.merge.sacrificer.Contains(c.monsterId))
                .OrderBy(c => c.predictedMergeExp);

            children.Clear();
            int requiredExp = candidate.accumulativeLevelMaxExp - candidate.accumulativeLevelExp;
            int expectedExp = 0;
            int childrenBonus = 0;
            foreach (var card in sarcrificers)
            {
                if (expectedExp + card.predictedMergeExp > requiredExp)
                    break;

                expectedExp += card.predictedMergeExp;
                childrenBonus += card.bonus;

                children.Add(card);

                if (cardNames.Length > 0)
                    cardNames.Append(",");
                cardNames.AppendFormat("[{0}]", card.name);

                if (children.Count == 5)
                    break;
            }

            if (children.Count < 1)
            {
                MyLog.Debug("升級[{0}]所需經驗值只有[{1:#,0}], 沒有適合的卡片", candidate.name, requiredExp);
                return false;
            }

            if (children.Count == 5 || Game.runtimeData.user.inventory.isFull)
            {
                expectedCoin = candidate.mergeCoin * children.Count + (candidate.bonus + childrenBonus) * Core.Config.UPGRADE_CARDBOUNS_COST;

                if (Game.runtimeData.user.coin >= expectedCoin)
                {
                    MyLog.Debug("判定升級[{0}], 預估經驗值[{1:#,0}], 預估花費[{2:#,0} ], EP[{3:0.00}], 餵食{3}", candidate.name, expectedExp, expectedCoin, expectedExp / expectedCoin, cardNames);

                    target = candidate;
                    return true;
                }
                else
                {
                    MyLog.Debug("升級[{0}]預估需要[{1:#,0}], 資產不足", candidate.name, expectedCoin);
                    return false;
                }
            }

            return false;
        }
    }
}