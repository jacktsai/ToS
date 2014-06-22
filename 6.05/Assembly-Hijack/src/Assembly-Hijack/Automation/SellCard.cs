using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using UnityEngine;

namespace AssemblyHijack.Automation
{
    internal class SellCard : Runnable
    {
        private class SellInfo
        {
            public int count = 0;
            public int price = 0;
        }

        private IDictionary<int, SellInfo> SellInfoPerMonster = new Dictionary<int, SellInfo>();
        private int TotalPrice = 0;

        private IList<Card> cards = new List<Card>();

        public override void AppendReport(StringBuilder builder)
        {
            if (TotalPrice < 1)
                return;

            foreach (var item in SellInfoPerMonster)
            {
                var monster = Game.database.monsters[item.Key];
                builder.AppendFormat("售 [#{0}{1}] {2:#,0} 張共 {3:#,0} 錢\n", monster.monsterId, monster.name, item.Value.count, item.Value.price);
            }

            builder.AppendFormat("銷售總收入 {0:#,0}\n", TotalPrice);
        }

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
                MyLog.Info("沒有卡片可供出售！");
                return false;
            }
            else
            {
                MyLog.Info("判定出售{0}", cardNames);
                return true;
            }
        }

        protected override void Execute(Action next)
        {
            Game.SellCards(cards.ToArray(), delegate
            {
                foreach (var card in cards)
                {
                    SellInfo soldInfo;
                    if (!SellInfoPerMonster.TryGetValue(card.monsterId, out soldInfo))
                    {
                        soldInfo = new SellInfo();
                        SellInfoPerMonster.Add(card.monsterId, soldInfo);
                    }

                    soldInfo.count++;
                    soldInfo.price += card.sellCoin;
                    TotalPrice += card.sellCoin;
                }

                next();
            });
        }
    }
}