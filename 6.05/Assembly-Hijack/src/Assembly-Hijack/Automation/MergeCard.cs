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
            public int cardCount = 0;
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
            var totalCardCount = 0;
            foreach (var item in UpgradeInfoPerCard)
            {
                totalCount += item.Value.count;
                totalExp += item.Value.exp;
                totalCost += item.Value.cost;
                totalCardCount += item.Value.cardCount;
            }

            builder.AppendFormat("次數 <color=yellow>{0:#,0}</color>\n", totalCount);
            builder.AppendFormat("費用 <color=yellow>{0:#,0}</color>\n", totalCost);
            builder.AppendFormat("經驗值 <color=yellow>{0:#,0}</color>\n", totalExp);
            builder.AppendFormat("卡片數 <color=yellow>{0:#,0}</color>\n", totalCardCount);
        }

        protected override bool Check()
        {
            if (!Game.runtimeData.user.inventory.isFull)
            {
                MyLog.Debug("背包未滿, 暫不判定需要強化的卡片");
                return false;
            }

            if (MyGame.config.automation.merge.sacrificers.Length < 1)
            {
                MyLog.Debug("未設定被強化的卡片，不進行卡片強化");
                return false;
            }

            var sacrificers = Game.runtimeData.user.inventory.cards.Values
                .Where(c => !c.inUse && !c.bookmark)
                .Where(c => MyGame.config.automation.merge.sacrificers.Contains(c.monsterId))
                .OrderBy(c => c.mergeExp)
                .OrderBy(c => c.element)
                .ToArray();

            if (sacrificers.Length < 1)
            {
                MyLog.Debug("找不到合適的飼料卡進行強化！");
                return false;
            }

            var candidate = Game.runtimeData.user.helperCard;
            if (candidate.isLevelMax)
            {
                MyLog.Debug("{0} 已經到達最高級別 {1} 不需要再強化", candidate.name, candidate.level);
            }
            else
            {
                if (Estimate(candidate, sacrificers))
                    return true;

                MyLog.Debug("找不到合適的卡片進行強化！");
            }

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

            MyDialog.SetNetworkWaitingText(null, "強化\n<color=yellow>{0}</color>", target.name);
            Game.UpgradeMonster(delegate
            {
                var upgradedCard = Game.runtimeData.user.inventory.GetCard(target.cardId);
                var actualExp = upgradedCard.exp - expBefore;
                var actualCost = coinBefore - Game.runtimeData.user.coin;
                MyLog.Info("{0} 強化成功, 經驗值{1:#,0}, 費用{2:#,0}金幣, 等級提昇{3}", target.name, actualExp, actualCost, upgradedCard.level - target.level);

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
                upgradeInfo.cardCount += children.Count;
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
                if (card.element == card.element)
                    expectedExp += (int)(card.mergeExp * 1.5);
                else
                    expectedExp += card.mergeExp;

                childrenBonus += card.bonus;
                children.Add(card);

                if (cardNames.Length > 0)
                    cardNames.Append(",");
                cardNames.AppendFormat("{0}", card.name);

                if (expectedExp >= requiredExp)
                    break;
            }

            expectedCost = candidate.mergeCoin * children.Count + (candidate.bonus + childrenBonus) * Core.Config.UPGRADE_CARDBOUNS_COST;

            if (Game.runtimeData.user.coin >= expectedCost)
            {
                MyLog.Info("判定強化 {0} 預估經驗值 {1:#,0} 預估費用 {2:#,0} 餵食 {3} 張卡 {4}", candidate.name, expectedExp, expectedCost, children.Count, cardNames);
                target = candidate;
                return true;
            }
            else
            {
                MyLog.Info("強化 {0} 預估需要 {1:#,0} 資產不足", candidate.name, expectedCost);
                return false;
            }
        }
    }
}