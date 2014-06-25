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

            builder.AppendFormat("出售 <color=yellow>{0}</color> 張卡片\n", totalCount);
            builder.AppendFormat("獲得 <color=yellow>{0:#,0}</color> 錢\n", totalPrice);
        }

        protected override bool Check()
        {
            if (!Game.runtimeData.user.inventory.isFull)
            {
                MyLog.Debug("背包未滿, 暫不判定需要出售的卡片");
                return false;
            }

            targets.Clear();

            var candidates = Game.runtimeData.user.inventory.cards.Values;
            var reserveAmount = MyGame.config.automation.sell.reserveAmount;
            var reserved = new Dictionary<int, List<Card>>(); // monsterId => current skipped cards
            StringBuilder cardNames = new StringBuilder();
            foreach (var card in candidates)
            {
                var candidate = card;

                if (reserveAmount > 0)
                {
                    List<Card> reservedCards;
                    if (!reserved.TryGetValue(candidate.monsterId, out reservedCards))
                    {
                        reservedCards = new List<Card>();
                        reserved.Add(candidate.monsterId, reservedCards);
                    }

                    if (reservedCards.Count == reserveAmount) // 已經到達保留數量
                    {
                        if (candidate.inUse || candidate.bookmark) // 這張卡無法出售
                        {
                            // 找找看保留名單中是否有可以替換的卡片
                            Card substitute = null;
                            foreach (var substituteCandidate in reservedCards)
                            {
                                if (!substituteCandidate.inUse && !substituteCandidate.bookmark) // 太好了，找到可以替換的對象
                                {
                                    substitute = substituteCandidate;
                                    break;
                                }
                            }

                            if (substitute != null)
                            {
                                // 找到替身，交換卡片
                                reservedCards.Remove(substitute);
                                reservedCards.Add(candidate);
                                candidate = substitute;
                            }
                            else
                            {
                                // 找不到替身，只好再列入保留
                                reservedCards.Add(candidate);
                                continue;
                            }
                        }
                    }
                    else // 未有保留卡片
                    {
                        reservedCards.Add(candidate);
                        continue;
                    }
                }

                if (cardNames.Length > 0)
                    cardNames.Append(",");
                cardNames.AppendFormat("#{0}{1}", candidate.cardId, candidate.name);

                targets.Add(candidate);
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
            MyDialog.SetNetworkWaitingText(null, "出售 <color=yellow>{0}</color> 張卡片", targets.Count);
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