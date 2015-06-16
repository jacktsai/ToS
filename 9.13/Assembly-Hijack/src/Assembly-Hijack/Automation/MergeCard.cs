using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace AssemblyHijack.Automation
{
    internal class MergeCard : Runnable
    {
        /// <summary>
        /// 經驗值卡
        /// </summary>
        private static int[] ExpCards = new[] { 280, 281, 282, 283, 284, 291, 398, 426, 427, 428 };

        private class UpgradeInfo
        {
            public int count = 0;
            public int level = 0;
            public int exp = 0;
            public int cost = 0;
            public int cardCount = 0;
        }

        private UpgradeInfo upgradeInfo = null;

        private Card target;
        private List<Card> children = new List<Card>();
        private int expectedCost;

        public override void AppendReport(StringBuilder builder)
        {
            if (upgradeInfo == null)
                return;

            builder.AppendFormat("=== 強化報告 ===\n");
            builder.AppendFormat("強化次數 <color=yellow>{0:#,0}</color>\n", upgradeInfo.count);
            builder.AppendFormat("強化費用 <color=yellow>{0:#,0}</color>\n", upgradeInfo.cost);
            builder.AppendFormat("獲經驗值 <color=yellow>{0:#,0}</color>\n", upgradeInfo.exp);
            builder.AppendFormat("等級提升 <color=yellow>{0:#,0}</color>\n", upgradeInfo.level);
            builder.AppendFormat("餵食卡數 <color=yellow>{0:#,0}</color>\n", upgradeInfo.cardCount);
        }

        protected override bool Check()
        {
            target = Game.runtimeData.user.helperCard;

            if (target.isLevelMax)
            {
                MyLog.Debug("{0} 已經到達最高級別 {1} 不需要再強化", target.name, target.level);
                return false;
            }

            Game.SetMonsterUpgradeTarget(target);

            if (EstimateWithExpCards())
            {
                if (EstimateCost())
                {
                    StringBuilder cardNames = new StringBuilder();

                    children.ForEach(card =>
                    {
                        if (cardNames.Length > 0)
                            cardNames.Append(",");
                        cardNames.AppendFormat("{0}", card.name);
                    });

                    MyLog.Info("判定強化 {0} 預估費用 {1:#,0} 餵食 {2} 張卡 {3}", target.name, expectedCost, children.Count, cardNames);
                    return true;
                }
                else
                {
                    MyLog.Debug("強化 {0} 預估費用 {1:#,0} 資產不足", target.name, expectedCost);
                    return false;
                }
            }
            else
            {
                MyLog.Debug("背包未滿, 暫不執行卡片強化");
                return false;
            }
        }

        protected override void Execute(Action next)
        {
            var levelBefore = target.level;
            var expBefore = target.exp;
            var coinBefore = Game.runtimeData.user.coin;

            MyDialog.SetNetworkWaitingText(null, "強化\n<color=yellow>{0}</color>", target.name);
            Game.SetMonsterUpgradeChildren(children.ToArray());
            Game.UpgradeMonster(delegate
            {
                var upgradedCard = Game.runtimeData.user.inventory.GetCard(target.cardId);
                var actualLevel = upgradedCard.level - levelBefore;
                var actualExp = upgradedCard.exp - expBefore;
                var actualCost = coinBefore - Game.runtimeData.user.coin;
                MyLog.Info("{0} 強化成功, 經驗值{1:#,0}, 費用{2:#,0}金幣, 等級提昇{3}", target.name, actualExp, actualCost, upgradedCard.level - target.level);

                if (upgradeInfo == null)
                    upgradeInfo = new UpgradeInfo();

                upgradeInfo.count++;
                upgradeInfo.level += actualLevel;
                upgradeInfo.exp += actualExp;
                upgradeInfo.cost += actualCost;
                upgradeInfo.cardCount += children.Count;

                next();
            });
        }

        private bool EstimateWithExpCards()
        {
            var expCards = Game.runtimeData.user.inventory.cards.Values
                .Where(c => !c.inUse && !c.bookmark)
                .Where(c => ExpCards.Contains(c.monsterId))
                .OrderByDescending(c => c.predictedMergeExp)
                .ToArray();

            children.Clear();

            int requiredExp = target.LevelToExp(target.maxLevel + 1) - target.accumulativeLevelExp;
            int expectedExp = 0;

            foreach (var card in expCards)
            {
                expectedExp += card.predictedMergeExp;
                children.Add(card);

                if (expectedExp >= requiredExp)
                    break;
            }

            return expectedExp >= requiredExp || Game.runtimeData.user.inventory.isFull;
        }

        private bool EstimateCost()
        {
            var childrenBonus = 0;
            foreach (var child in children)
            {
                childrenBonus += child.bonus;
            }

            expectedCost = target.mergeCoin * children.Count + (target.bonus + childrenBonus) * Core.Config.UPGRADE_CARDBOUNS_COST;

            return Game.runtimeData.user.coin >= expectedCost;
        }
    }
}