using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using UnityEngine;

namespace AssemblyHijack.Automation
{
    internal class SellCard : Runnable
    {
        private IList<Card> cards = new List<Card>();

        protected override bool Check()
        {
            cards.Clear();
            StringBuilder cardNames = new StringBuilder();
            foreach (var card in Game.runtimeData.user.inventory.cards.Values)
            {
                if (card.inUse || card.bookmark)
                    continue;

                if (MyGameConfig.sell.cards.Contains(card.monsterId))
                {
                    cards.Add(card);

                    if (cardNames.Length > 0)
                        cardNames.Append(",");

                    cardNames.AppendFormat("[{0}]", card.name);
                }

                if (cards.Count >= 10)
                    break;
            }

            if (cards.Count < 1)
            {
                MyDebug.Log("沒有卡片可供出售！");
                return false;
            }
            else
            {
                MyDebug.Log("判定出售{0}", cardNames);
                return true;
            }
        }

        protected override void Execute(Action next)
        {
            Game.SellCards(cards.ToArray(), next);
        }
    }
}