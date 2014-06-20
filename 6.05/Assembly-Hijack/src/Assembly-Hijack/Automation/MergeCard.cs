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
                return false;

            children.Clear();
            expectedCoin = 0;
            int childrenBonus = 0;
            StringBuilder cardNames = new StringBuilder();
            foreach (var card in Game.runtimeData.user.inventory.cards.Values)
            {
                if (card.inUse || card.bookmark)
                    continue;

                if (MyGameConfig.merge.sacrificer.Contains(card.monsterId))
                {
                    childrenBonus += card.bonus;
                    children.Add(card);

                    if (cardNames.Length > 0)
                        cardNames.Append(",");
                    cardNames.AppendFormat("[{0}]", card.name);

                    if (children.Count >= 5)
                        break;
                }
            }

            target = null;
            if (children.Count < 1)
            {
                MyDebug.Log("沒有飼料卡可供餵食！");
                return false;
            }

            foreach (var cardId in Game.runtimeData.teamCardIds)
            {
                var card = Game.runtimeData.user.inventory.GetCard(cardId);
                MyDebug.Log("[{0}] {1} / {2}", card.name, card.accumulativeLevelExp, card.accumulativeNextLevelMinExp);
                if (card.accumulativeLevelExp < card.accumulativeNextLevelMinExp)
                {
                    expectedCoin = card.mergeCoin * children.Count + (card.bonus + childrenBonus) * Core.Config.UPGRADE_CARDBOUNS_COST;
                    MyDebug.Log("升級[{0}]預估需要[{1:#,0}]錢！", card.name, expectedCoin);

                    if (Game.runtimeData.user.coin >= expectedCoin)
                    {
                        MyDebug.Log("判定升級[{0}], 餵食{1}", card.name, cardNames);

                        target = card;
                        return true;
                    }
                }
            }

            MyDebug.Log("找不到合適的卡片進行升級！");

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
    }
}