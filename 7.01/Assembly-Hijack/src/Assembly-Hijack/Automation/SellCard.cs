using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace AssemblyHijack.Automation
{
    internal class SellCard : Runnable
    {
        private class PatternContainer
        {
            private class Range
            {
                public int begin;
                public int end;
            }

            private readonly IList<Range> ranges = new List<Range>();
            private readonly IList<Monster.RacialType> racials = new List<Monster.RacialType>();

            public PatternContainer(string[] patterns)
            {
                foreach (var pattern in patterns)
                {
                    int id;
                    if (int.TryParse(pattern, out id))
                    {
                        ranges.Add(new Range { begin = id, end = id });
                    }
                    else
                    {
                        string[] blocks = pattern.Split('~');
                        if (blocks.Length == 2)
                        {
                            ranges.Add(new Range
                                {
                                    begin = int.Parse(blocks[0]),
                                    end = int.Parse(blocks[1]),
                                });
                        }
                        else
                        {
                            try
                            {
                                var racial = (Monster.RacialType)Enum.Parse(typeof(Monster.RacialType), pattern, true);
                                racials.Add(racial);
                            }
                            catch
                            {
                            }
                        }
                    }
                }
            }

            public bool IsMatch(Card card)
            {
                foreach (var range in ranges)
                {
                    if (card.monsterId >= range.begin && card.monsterId <= range.end)
                        return true;
                }

                foreach (var racial in racials)
                {
                    if (card.type == racial)
                        return true;
                }

                return false;
            }
        }

        private class SellInfo
        {
            public int count = 0;
            public int price = 0;
        }

        private IDictionary<int, SellInfo> SellInfoPerMonster = new Dictionary<int, SellInfo>();

        private PatternContainer target = new PatternContainer(MyGame.config.automation.sell.target);
        private PatternContainer exclude = new PatternContainer(MyGame.config.automation.sell.exclude);

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
            var cardNames = new StringBuilder();
            foreach (var candidate in Game.runtimeData.user.inventory.cards.Values)
            {
                if (!target.IsMatch(candidate))
                    continue;

                if (exclude.IsMatch(candidate))
                    continue;

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