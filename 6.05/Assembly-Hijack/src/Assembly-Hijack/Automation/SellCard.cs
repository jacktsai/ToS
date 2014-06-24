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

        /// <summary>
        /// 預計售出卡片
        /// </summary>
        private IList<Card> candidates = new List<Card>();

        private string candidateNames;

        public override void AppendReport(StringBuilder builder)
        {
            if (TotalPrice < 1)
                return;

            foreach (var item in SellInfoPerMonster)
            {
                var monster = Game.database.monsters[item.Key];
                builder.AppendFormat("售 {0} {1:#,0} 張共 {2:#,0} 錢\n", monster.name, item.Value.count, item.Value.price);
            }

            builder.AppendFormat("銷售總收入 {0:#,0}\n", TotalPrice);
        }

        protected override bool Check()
        {
            if (!Game.runtimeData.user.inventory.isFull)
            {
                MyLog.Debug("背包未滿, 暫不判定需要出售的卡片");
                return false;
            }

            candidates.Clear();
            StringBuilder cardNames = new StringBuilder();
            foreach (var card in Game.runtimeData.user.inventory.cards.Values)
            {
                if (card.inUse || card.bookmark)
                    continue;

                if (MyGame.config.sell.cards.Contains(card.monsterId))
                {
                    candidates.Add(card);

                    if (cardNames.Length > 0)
                        cardNames.Append(",");

                    cardNames.AppendFormat("{0}", card.name);
                }
            }

            if (candidates.Count < 1)
            {
                MyLog.Debug("沒有卡片可供出售！");
                return false;
            }
            else
            {
                candidateNames = cardNames.ToString();
                MyLog.Debug("預計售出 [{0}] 張卡片 {1}", candidates.Count, candidateNames);
                return true;
            }
        }

        protected override void Execute(Action next)
        {
            Game.SellCards(candidates.ToArray(), delegate
            {
                MyLog.Info("已售出 [{0}] 張卡片 {1}", candidates.Count, candidateNames);

                foreach (var card in candidates)
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