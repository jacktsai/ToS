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

        /// <summary>
        /// 預計售出卡片
        /// </summary>
        private IList<Card> targets = new List<Card>();

        private string candidateNames;

        public override void AppendReport(StringBuilder builder)
        {
            if (SellInfoPerMonster.Count < 1)
                return;

            builder.AppendFormat("=== 卡片銷售統計 ===\n");
            var totalCount = 0;
            var totalPrice = 0;

            foreach (var item in SellInfoPerMonster)
            {
                var monster = Game.database.monsters[item.Key];
                builder.AppendFormat("{0} {1:#,0} 張 {2:#,0} 錢\n", monster.name, item.Value.count, item.Value.price);
                totalCount += item.Value.count;
                totalPrice += item.Value.price;
            }

            builder.AppendFormat("出售 {0:#,0} 張卡片\n", totalCount);
            builder.AppendFormat("獲得 {0:#,0} 錢\n", totalPrice);
        }

        protected override bool Check()
        {
            if (!Game.runtimeData.user.inventory.isFull)
            {
                MyLog.Debug("背包未滿, 暫不判定需要出售的卡片");
                return false;
            }

            targets.Clear();

            var candidates = Game.runtimeData.user.inventory.cards.Values.Where(c => !c.inDeck && !c.bookmark && !c.isHelper);
            var keepList = new List<int>();
            StringBuilder cardNames = new StringBuilder();
            foreach (var card in candidates)
            {
                if (MyGame.config.sell.reserved)
                {
                    if (!keepList.Contains(card.monsterId))
                    {
                        keepList.Add(card.monsterId);
                        continue;
                    }
                }

                if (cardNames.Length > 0)
                    cardNames.Append(",");
                cardNames.AppendFormat("#{0}{1}", card.cardId, card.name);

                targets.Add(card);
            }

            if (targets.Count < 1)
            {
                MyLog.Debug("沒有卡片可供出售！");
                return false;
            }
            else
            {
                candidateNames = cardNames.ToString();
                MyLog.Debug("預計售出 [{0}] 張卡片 {1}", targets.Count, candidateNames);
                return true;
            }
        }

        protected override void Execute(Action next)
        {
            Game.SellCards(targets.ToArray(), delegate
            {
                MyLog.Info("已售出 [{0}] 張卡片 {1}", targets.Count, candidateNames);

                foreach (var card in targets)
                {
                    SellInfo soldInfo;
                    if (!SellInfoPerMonster.TryGetValue(card.monsterId, out soldInfo))
                    {
                        soldInfo = new SellInfo();
                        SellInfoPerMonster.Add(card.monsterId, soldInfo);
                    }

                    soldInfo.count++;
                    soldInfo.price += card.sellCoin;
                }

                next();
            });
        }
    }
}