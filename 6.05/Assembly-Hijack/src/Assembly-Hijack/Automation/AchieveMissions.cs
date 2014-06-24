using AssemblyHijack.Automation.FloorStrategy;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace AssemblyHijack.Automation
{
    internal class AchieveMissions : Runnable
    {
        private bool executed = false;
        private bool completed = false;

        private GuildMission Current
        {
            get { return Game.runtimeData.user.currentGuildMission; }
        }

        protected override bool Check()
        {
            return Game.runtimeData.user.guild != null && !executed;
        }

        protected override void Execute(Action next)
        {
            executed = true;
            GetMissions(next);
        }

        private void GetMissions(Action next)
        {
            Game.GuildSystem.GetMissions(delegate
            {
                if (Game.runtimeData.user.achievedAllGuildMission)
                {
                    ClaimReward(next);
                }
                else
                {
                    NextMission(next);
                }
            }, null);
        }

        private void NextMission(Action next)
        {
            switch (Current.type)
            {
                case GuildMission.Type.COMPLETE_FLOOR_COUNT:
                    CompleteFloorCount(next);
                    break;

                case GuildMission.Type.COMPLETE_FLOOR_TURNS:
                    CompleteFloorTurns(next);
                    break;

                case GuildMission.Type.DONATE_COIN:
                    DonateCoin(next);
                    break;

                case GuildMission.Type.PAY_ITEMS:
                    PayItems(next);
                    break;

                case GuildMission.Type.SUBMIT_CARD:
                    SubmitCard(next);
                    break;

                case GuildMission.Type.SUBMIT_CARD_EXP:
                    SubmitCardExp(next);
                    break;

                default:
                    MyLog.Debug("無法識別公會任務 [{0}], 中斷執行任務", Current.type);
                    next();
                    break;
            }
        }

        private void CompleteFloorCount(Action next)
        {
            var mission = new GuildMission_CompleteFloorCount(Current.json);
            MyLog.Debug("公會任務要求 - 通關 {0} {1:#,0} 次", mission.targetFloor.name, mission.targetTimes);

            if (mission.isCompleted)
            {
                Game.GuildSystem.AchieveMission(
                    mission,
                    string.Empty,
                    delegate
                    {
                        MyLog.Info("完成公會任務 - 通關 {0} {1:#,0} 次", mission.targetFloor.name, mission.targetTimes);
                        NextMission(next);
                    },
                    null);
            }
            else
            {
                EnterAndCompleteFloor(
                    mission.targetFloor,
                    true,
                    next);
            }
        }

        private void CompleteFloorTurns(Action next)
        {
            var mission = new GuildMission_CompleteFloorTurns(Current.json);
            MyLog.Debug("公會任務要求 - 通關 {0} {1:#,0} 回", mission.targetFloor.name, mission.targetTurns);

            if (mission.isCompleted)
            {
                Game.GuildSystem.AchieveMission(
                    mission,
                    string.Empty,
                    delegate
                    {
                        MyLog.Info("完成公會任務 - 通關 {0} {1:#,0} 回", mission.targetFloor.name, mission.targetTurns);
                        NextMission(next);
                    },
                    null);
            }
            else
            {
                EnterAndCompleteFloor(
                    mission.targetFloor,
                    true,
                    next);
            }
        }

        private void DonateCoin(Action next)
        {
            var mission = new GuildMission_DonateCoin(Current.json);
            MyLog.Debug("公會任務要求 - 贊助 {0:#,0} 錢 {1:#,0} 黃金", mission.requireCoins, mission.donateGold);

            if (mission.enoughCoins)
            {
                Game.GuildSystem.AchieveMission(
                    mission,
                    string.Empty,
                    delegate
                    {
                        MyLog.Info("完成公會任務 - 贊助 {0:#,0} 錢 {1:#,0} 黃金", mission.requireCoins, mission.donateGold);
                        NextMission(next);
                    },
                    null);
            }
            else
            {
                MyLog.Info("公會任務無法繼續 - 錢幣不足");
                next();
            }
        }

        private void PayItems(Action next)
        {
            var mission = new GuildMission_PayItems(Current.json);
            var itemString = String.Join(", ",
                mission.slots.Select(o =>
                    String.Format("[{0:0000}]{1}({2})", o.itemId, o.itemCount, o.availableType)
                ).ToArray());
            MyLog.Debug("公會任務要求 - 交碎片 {0}", itemString);

            if (mission.isComplete)
            {
                Game.GuildSystem.AchieveMission(
                    mission,
                    string.Empty,
                    delegate
                    {
                        MyLog.Info("完成公會任務 - 交碎片 {0}", itemString);
                        NextMission(next);
                    },
                    null);
            }
            else
            {
                var slots = mission.slots.Where(s => s.availableType != GuildMission_PayItems.GuildMissionItemSlot.AvailableType.AVAILABLE);
                var itemRequiredString = String.Join(
                    ", ",
                    slots.Select(slot => String.Format("[{0:0000}] {1} 塊", slot.itemId, slot.itemCount)).ToArray());
                MyLog.Debug("公會任務執行 - 碎片蒐集 {0}", itemRequiredString);

                foreach (var slot in slots)
                {
                    var floor = AnalyzeFloor(slot.itemId);

                    if (floor != null)
                    {
                        EnterAndCompleteFloor(floor, false, next);
                        return;
                    }
                    else
                    {
                        MyLog.Debug("碎片 [{0:0000}] 不知道要去哪裡打", slot.itemId);
                    }
                }

                MyLog.Info("公會任務無法繼續 - 碎片無法蒐集 {0}", itemRequiredString);
                next();
            }
        }

        private void SubmitCard(Action next)
        {
            var mission = new GuildMission_SubmitCard(Current.json);
            var cardString = String.Join(", ",
                mission.slots.Select(o =>
                    String.Format("{0}({1})", o.card.name, o.availableType)
                ).ToArray());
            MyLog.Debug("公會任務要求 - 燒卡 {0}", cardString);

            if (mission.isComplete)
            {
                Game.GuildSystem.AchieveMission(
                    mission,
                    mission.availableCardsString,
                    delegate
                    {
                        MyLog.Info("完成公會任務 - 燒卡 {0}", cardString);
                        NextMission(next);
                    },
                    null);
            }
            else
            {
                var slots = mission.slots.Where(s => s.availableType != GuildMission_SubmitCard.GuildMissionCardSlot.AvailableType.AVAILABLE);
                var cardRequiredString = String.Join(
                    ", ",
                    slots.Select(slot => String.Format("{0} {1} 張", slot.card.name, slot.cardCount)).ToArray());
                MyLog.Debug("公會任務執行 - 卡片蒐集 {0}", cardRequiredString);

                foreach (var slot in slots)
                {
                    var card = slot.card;
                    var floor = AnalyzeFloor(card);

                    if (floor != null)
                    {
                        EnterAndCompleteFloor(floor, false, next);
                        return;
                    }
                    else
                    {
                        MyLog.Debug("卡片 {0} 不知道要去哪裡打", card.name);
                    }
                }

                MyLog.Info("公會任務無法繼續 - 卡片無法蒐集 {0}", cardRequiredString);
                next();
            }
        }

        private void SubmitCardExp(Action next)
        {
            var mission = new GuildMission_SubmitCardExp(Current.json);
            MyLog.Debug("公會任務要求 - 燒卡片經驗 {0:#,0}", mission.requireExp);

            var candidates = Game.runtimeData.user.inventory.cards.Values
                .Where(c => !c.inUse && !c.bookmark && c.mergeExp >= mission.requireExp)
                .OrderBy(c => c.mergeExp);

            Card sacrificer = null;
            foreach (var candidate in candidates)
            {
                sacrificer = candidate;
                break;
            }

            if (sacrificer != null)
            {
                Game.GuildSystem.AchieveMission(
                    mission,
                    sacrificer.cardId.ToString(),
                    delegate
                    {
                        MyLog.Info("完成公會任務 - 燒卡片經驗 {0:#,0} 犧牲了 {1}", mission.requireExp, sacrificer.name);
                        NextMission(next);
                    },
                    null);
            }
            else
            {
                MyLog.Info("公會任務無法繼續 - 無符合燒卡經驗 {0:#,0} 的卡片", mission.requireExp);
                next();
            }
        }

        private Floor AnalyzeFloor(int itemId)
        {
            MyLog.Debug("分析碎片出處 [{0:0000}]", itemId);
            //card.rare == Monster.RareType.BRONZE

            return null;
        }

        private Floor AnalyzeFloor(Card card)
        {
            MyLog.Debug("分析卡片出處 {0} {1} {2}", card.name, card.typeName, card.rare);

            if (card.rare == Monster.RareType.BRONZE)
            {
                //Game.runtimeData.stageBonus.stages[0].
            }

            return null;
        }

        private void EnterAndCompleteFloor(Floor target, bool isMission, Action next)
        {
            var guide = Strategy.JudgePatro(target);
            if (guide != Strategy.PatrolGuide.NONE)
            {
                MyLog.Debug("公會任務無法繼續 - 關卡 {0} 無法進行", target.name);
                next();
                return;
            }

            Stage stage = target.stage;
            MyLog.Info("關卡已判定 {0}-{1}, 所需體力[{2}] 目前體力[{3}]", stage.name, target.name, target.stamina, Game.runtimeData.user.currentStamina);

            FloorHelper.EnterAndComplete(
                1,
                target,
                isMission,
                null,
                delegate
                {
                    MyLog.Info("已完成關卡 {0}-{1}", stage.name, target.name);
                    GetMissions(next);
                });
        }

        private void ClaimReward(Action next)
        {
            var mission = Current;

            Game.GuildSystem.ClaimMissionsReward((x, y, monsterIds) =>
            {
                var cardString = String.Join(
                    ", ",
                    monsterIds.Select(monsterId => Game.database.monsters[monsterId].name).ToArray());

                MyLog.Info("已取得公會任務獎勵 - ", cardString);
                completed = true;
                next();
            }, null);
        }
    }
}