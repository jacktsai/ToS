using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace AssemblyHijack.Automation
{
    internal class SellCard : Runnable
    {
        private class SellInfo
        {
            public int count = 0;
            public int price = 0;
        }

        private class ReservedConatiner
        {
            private IDictionary<Monster.RacialType, int> reserveAmount = new Dictionary<Monster.RacialType, int>();
            private IDictionary<int, List<Card>> reserved = new Dictionary<int, List<Card>>(); // monsterId => current skipped cards

            public ReservedConatiner()
            {
                foreach (var item in MyGame.config.automation.sell.reserveAmount)
                {
                    var race = (Monster.RacialType)Enum.Parse(typeof(Monster.RacialType), item.Key, true);
                    reserveAmount[race] = item.Value;
                }
            }

            /// <summary>
            /// 檢查此卡片是否需要保留
            /// </summary>
            /// <param name="candidate">被檢查的卡片</param>
            /// <returns>
            /// null，請略過此卡；否則，將回傳的卡列入出售
            /// </returns>
            public Card Check(Card candidate)
            {
                int amount;
                if (!reserveAmount.TryGetValue(candidate.type, out amount))
                    amount = 0;

                if (amount < 1)
                    return candidate;

                List<Card> reservedCards;
                if (!reserved.TryGetValue(candidate.monsterId, out reservedCards))
                {
                    reservedCards = new List<Card>();
                    reserved.Add(candidate.monsterId, reservedCards);
                }

                if (reservedCards.Count == amount) // 已經到達保留數量
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
                            return substitute;
                        }
                        else
                        {
                            // 找不到替身，只好再列入保留
                            reservedCards.Add(candidate);
                            return null;
                        }
                    }
                }
                else // 未有保留卡片
                {
                    reservedCards.Add(candidate);
                    return null;
                }

                return candidate;
            }
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

            var report = CreateReport();
            builder.AppendFormat("=== 卡片銷售統計 ===\n");
            builder.Append(report);
        }

        private StringBuilder CreateReport()
        {
            var builder = new StringBuilder();

            var totalCount = 0;
            var totalPrice = 0;

            foreach (var item in SellInfoPerMonster)
            {
                var monster = Game.database.monsters[item.Key];
                builder.AppendFormat("{0} {1:#,0} 張 {2:#,0} 金幣\n", monster.name, item.Value.count, item.Value.price);
                totalCount += item.Value.count;
                totalPrice += item.Value.price;
            }

            builder.Insert(0, String.Format("獲得 <color=yellow>{0:#,0}</color> 金幣\n", totalPrice));
            builder.Insert(0, String.Format("出售 <color=yellow>{0}</color> 張卡片\n", totalCount));

            return builder;
        }

        protected override bool Check()
        {
            if (!Game.runtimeData.user.inventory.isFull)
            {
                MyLog.Debug("背包未滿, 暫不判定需要出售的卡片");
                return false;
            }

            targets.Clear();
            var lowestRare = MyGame.config.automation.sell.lowestRare;
            var excludeIds = MyGame.config.automation.sell.excludeMonsterIds;
            var includeIds = MyGame.config.automation.sell.includeMonsterIds;
            var reservedContainer = new ReservedConatiner();
            var cardNames = new StringBuilder();
            foreach (var card in Game.runtimeData.user.inventory.cards.Values)
            {
                var candidate = card;

                if (excludeIds.Contains(candidate.monsterId))
                    continue;

                if (!includeIds.Contains(candidate.monsterId))
                {
                    if (candidate.rare > lowestRare)
                        continue;

                    candidate = reservedContainer.Check(card);
                    if (candidate == null)
                        continue;
                }

                if (cardNames.Length > 0)
                    cardNames.Append(",");
                cardNames.AppendFormat("{0}", candidate.name);

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
                MyLog.Debug("預計售出 {0} 張卡片 {1}", targets.Count, candidateNames);
                return true;
            }
        }

        protected override void Execute(Action next)
        {
            MyDialog.SetNetworkWaitingText(null, "出售卡片 <color=yellow>{0} 張</color> ", targets.Count);
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