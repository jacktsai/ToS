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

        private Card target = null;
        private IList<Card> children = new List<Card>();
        private int expectedCost = 0;

        public override void AppendReport(StringBuilder builder)
        {
            if (UpgradeInfoPerCard.Count < 1)
                return;

            builder.AppendFormat("=== 卡片強化報告 ===\n");

            var totalCount = 0;
            var totalExp = 0;
            var totalCost = 0;
            foreach (var item in UpgradeInfoPerCard)
            {
                builder.AppendFormat("強化 {0} {1:#,0} 次\n", item.Key, item.Value.count);
                totalCount += item.Value.count;
                totalExp += item.Value.exp;
                totalCost = item.Value.cost;
            }

            builder.AppendFormat("強化總次數 {0:#,0}\n", totalCount);
            builder.AppendFormat("強化總經驗值 {0:#,0}\n", totalExp);
            builder.AppendFormat("強化總支出 {0:#,0}\n", totalCost);
        }

        protected override bool Check()
        {
            if (!Game.runtimeData.user.inventory.isFull)
            {
                MyLog.Debug("背包未滿, 暫不判定需要強化的卡片");
                return false;
            }

            var sacrificers = Game.runtimeData.user.inventory.cards.Values
                .Where(c => !c.inUse && !c.bookmark)
                .Where(c => MyGame.config.merge.types.Length < 1 || MyGame.config.merge.types.Contains(c.type))
                .Where(c => MyGame.config.merge.monsterIds.Length < 1 || MyGame.config.merge.monsterIds.Contains(c.monsterId))
                .OrderBy(c => c.mergeExp).ToArray();

            foreach (var teamCardId in Game.runtimeData.teamCardIds)
            {
                var candidate = Game.runtimeData.user.inventory.GetCard(teamCardId);
                if (candidate.isLevelMax)
                {
                    MyLog.Debug("{0} 已經到達最高級別 {1} 不需要再強化", candidate.name, candidate.level);
                }
                else
                {
                    if (Estimate(candidate, sacrificers))
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
                MyLog.Info("{0} 強化成功, 經驗值增加[{1:#,0}], 實際花費[{2:#,0}]", upgradedCard.name, actualExp, actualCost);

                var cardKey = String.Format("{0}", target.name);
                UpgradeInfo upgradeInfo;
                if (!UpgradeInfoPerCard.TryGetValue(cardKey, out upgradeInfo))
                {
                    upgradeInfo = new UpgradeInfo();
                    UpgradeInfoPerCard.Add(cardKey, upgradeInfo);
                }

                upgradeInfo.count++;
                upgradeInfo.exp += actualExp;
                upgradeInfo.cost += actualCost;
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
                cardNames.AppendFormat("{0}", card.name);

                if (children.Count == 5)
                    break;
            }

            if (children.Count < 1)
            {
                MyLog.Info("強化 {0} 只需要 [{1:#,0}] 經驗值, 沒有適合的卡片", candidate.name, requiredExp);
                return false;
            }

            if (children.Count == 5 || Game.runtimeData.user.inventory.isFull)
            {
                expectedCost = candidate.mergeCoin * children.Count + (candidate.bonus + childrenBonus) * Core.Config.UPGRADE_CARDBOUNS_COST;

                if (Game.runtimeData.user.coin >= expectedCost)
                {
                    MyLog.Info("判定強化 {0} 預估經驗值 [{1:#,0}] 預估花費 [{2:#,0} ] EP[{3:0.00}] 餵食 {5}", candidate.name, expectedExp, expectedCost, expectedExp / expectedCost, cardNames);

                    target = candidate;
                    return true;
                }
                else
                {
                    MyLog.Info("強化 {0} 預估需要 [{2:#,0}] 資產不足", candidate.name, expectedCost);
                    return false;
                }
            }

            return false;
        }
    }
}