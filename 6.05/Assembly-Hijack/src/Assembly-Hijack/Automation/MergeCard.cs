using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using UnityEngine;

namespace AssemblyHijack.Automation
{
    internal class MergeCard : Runnable
    {
        private static int[] ExpCard = new[] { 280, 281, 282, 283, 284, 291, 398, 426, 427, 428 };
        private static int Up1LevelCard = 423; // 異域法眼，強化時必定升上1個等級
        private static int Up3LevelCard = 424; // 機關騎士，強化時必定升上3個等級
        private static int Up5LevelCard = 425; // 永劫碑文像，強化時必定升上5個等級

        private class UpgradeInfo
        {
            public int count = 0;
            public int level = 0;
            public int exp = 0;
            public int cost = 0;
            public int cardCount = 0;
        }

        private UpgradeInfo upgradeInfo = null;

        private Card target = null;
        private IList<Card> children = new List<Card>();
        private int expectedCost = 0;

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
            var sacrificers = Game.runtimeData.user.inventory.cards.Values
                .Where(c => !c.inUse && !c.bookmark)
                .Where(c => ExpCard.Contains(c.monsterId))
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

            var levelBefore = target.level;
            var expBefore = target.exp;
            var coinBefore = Game.runtimeData.user.coin;

            MyDialog.SetNetworkWaitingText(null, "強化\n<color=yellow>{0}</color>", target.name);
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

        private bool Estimate(Card candidate, IEnumerable<Card> sarcrificers)
        {
            children.Clear();
            StringBuilder cardNames = new StringBuilder();

            Game.SetMonsterUpgradeTarget(candidate);
            int requiredExp = candidate.LevelToExp(candidate.maxLevel + 1) - candidate.accumulativeLevelExp;
            int expectedExp = 0;
            int childrenBonus = 0;
            foreach (var card in sarcrificers)
            {
                expectedExp += card.predictedMergeExp;
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
                if (expectedExp >= requiredExp || Game.runtimeData.user.inventory.isFull)
                {
                    MyLog.Info("判定強化 {0} 預估經驗值 {1:#,0} 預估費用 {2:#,0} 餵食 {3} 張卡 {4}", candidate.name, expectedExp, expectedCost, children.Count, cardNames);
                    target = candidate;
                    return true;
                }
                else
                {
                    MyLog.Debug("背包未滿, 執行卡片強化");
                    return false;
                }
            }
            else
            {
                MyLog.Info("強化 {0} 預估需要 {1:#,0} 資產不足", candidate.name, expectedCost);
                return false;
            }
        }
    }
}