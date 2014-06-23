using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using UnityEngine;

namespace AssemblyHijack.Automation
{
    internal class MergeCard : Runnable
    {
        private class UpgradeInfo
        {
            public int count = 0;
            public int exp = 0;
            public int cost = 0;
        }

        private IDictionary<string, UpgradeInfo> UpgradeInfoPerCard = new Dictionary<string, UpgradeInfo>();
        private int TotalCost;

        private Card target = null;
        private IList<Card> children = new List<Card>();
        private int expectedCost = 0;

        public override void AppendReport(StringBuilder builder)
        {
            if (TotalCost < 1)
                return;

            foreach (var item in UpgradeInfoPerCard)
            {
                builder.AppendFormat("強化 {0} {1:#,0} 次 {3:#,0} 錢\n經驗值 {2:#,0}\n", item.Key, item.Value.count, item.Value.exp, item.Value.cost);
            }

            builder.AppendFormat("強化總支出 {0:#,0}\n", TotalCost);
        }

        protected override bool Check()
        {
            if (!Game.runtimeData.user.inventory.isFull)
            {
                MyLog.Debug("背包未滿, 暫不判定需要強化的卡片");
                return false;
            }

            var sarcrificers = Game.runtimeData.user.inventory.cards.Values
                .Where(c => !c.inUse && !c.bookmark && MyGame.config.merge.sacrificer.Contains(c.monsterId))
                .OrderBy(c => c.predictedMergeExp).ToArray();

            foreach (var teamCardId in Game.runtimeData.teamCardIds)
            {
                var candidate = Game.runtimeData.user.inventory.GetCard(teamCardId);
                if (candidate.isLevelMax)
                {
                    MyLog.Debug("[{0}]{1} 已經到達最高級別[{2}], 不需要再強化", candidate.monsterId, candidate.name, candidate.level);
                }
                else
                {
                    if (Estimate(candidate, sarcrificers))
                        return true;
                }
            }

            MyLog.Info("找不到合適的卡片進行強化！");

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

            var expBefore = target.exp;
            var coinBefore = Game.runtimeData.user.coin;

            Game.UpgradeMonster(delegate
            {
                var upgradedCard = Game.runtimeData.user.inventory.GetCard(target.cardId);
                var actualExp = upgradedCard.exp - expBefore;
                var actualCost = coinBefore - Game.runtimeData.user.coin;
                MyLog.Info("[{0}]{1} 強化成功, 經驗值增加[{2:#,0}], 實際花費[{3:#,0}]", upgradedCard.monsterId, upgradedCard.name, actualExp, actualCost);

                var cardKey = String.Format("#{0}[{1:0000}]{2}", target.cardId, target.monsterId, target.name);
                UpgradeInfo upgradeInfo;
                if (!UpgradeInfoPerCard.TryGetValue(cardKey, out upgradeInfo))
                {
                    upgradeInfo = new UpgradeInfo();
                    UpgradeInfoPerCard.Add(cardKey, upgradeInfo);
                }

                upgradeInfo.count++;
                upgradeInfo.exp += actualExp;
                upgradeInfo.cost += actualCost;
                TotalCost += actualCost;

                next();
            });
        }

        private bool Estimate(Card candidate, IEnumerable<Card> sarcrificers)
        {
            children.Clear();
            StringBuilder cardNames = new StringBuilder();

            int requiredExp = candidate.LevelToExp(candidate.maxLevel + 1) - candidate.accumulativeLevelExp;
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
                cardNames.AppendFormat("[{0:0000}]{1}", card.monsterId, card.name);

                if (children.Count == 5)
                    break;
            }

            if (children.Count < 1)
            {
                MyLog.Info("強化[#{0}{1}]所需經驗值只有[{2:#,0}], 沒有適合的卡片", candidate.monsterId, candidate.name, requiredExp);
                return false;
            }

            if (children.Count == 5 || Game.runtimeData.user.inventory.isFull)
            {
                expectedCost = candidate.mergeCoin * children.Count + (candidate.bonus + childrenBonus) * Core.Config.UPGRADE_CARDBOUNS_COST;

                if (Game.runtimeData.user.coin >= expectedCost)
                {
                    MyLog.Info("判定強化 [{0:0000}]{1} 預估經驗值 [{2:#,0}] 預估花費 [{3:#,0} ] EP[{4:0.00}] 餵食 {5}", candidate.monsterId, candidate.name, expectedExp, expectedCost, expectedExp / expectedCost, cardNames);

                    target = candidate;
                    return true;
                }
                else
                {
                    MyLog.Info("強化[#{0}{1}]預估需要[{2:#,0}], 資產不足", candidate.monsterId, candidate.name, expectedCost);
                    return false;
                }
            }

            return false;
        }
    }
}