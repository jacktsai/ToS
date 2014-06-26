using System;
using System.Linq;
using System.Text;
using AssemblyHijack.Automation.FloorStrategy;

namespace AssemblyHijack.Automation
{
    internal class AchieveMissions : Runnable
    {
        private int executeCount = 0;
        private bool completed = false;
        private bool skipOneTime = false;
        private StringBuilder lastFailMessage = new StringBuilder();
        private StringBuilder executionReport = new StringBuilder();

        private GuildMission Current
        {
            get { return Game.runtimeData.user.currentGuildMission; }
        }

        public override void AppendReport(StringBuilder builder)
        {
            if (executionReport.Length > 0 || lastFailMessage.Length > 0)
            {
                builder.AppendFormat("=== 公會任務進度報告 ===\n");

                if (executionReport.Length > 0)
                    builder.Append(executionReport);

                if (lastFailMessage.Length > 0)
                    builder.Append(lastFailMessage);
            }
        }

        protected override bool Check()
        {
            if (Game.runtimeData.user.level < 15)
            {
                MyLog.Debug("等級不足，暫不執行公會任務");
                return false;
            }

            if (executeCount > 0)
            {
                if (skipOneTime)
                {
                    MyLog.Debug("任務暫時無法完成，先跳過一次執行機會，讓其它runner能夠有機會執行");
                    skipOneTime = false;
                    return false;
                }

                return !completed; // 上次的執行沒有完成整個流程，接著嘗試
            }
            else
                return Game.runtimeData.user.guild != null;
        }

        protected override void Execute(Action next)
        {
            executeCount++;
            MyLog.Debug("第 [{0}] 次執行公會任務", executeCount);

            lastFailMessage.Length = 0; // 避免相同的失敗訊息重複累積
            GetMissions(delegate
            {
                skipOneTime = !Game.runtimeData.user.achievedAllGuildMission;
                next();
            });
        }

        private void GetMissions(Action next)
        {
            if (Game.runtimeData.guildMissions.Count < 1)
            {
                Game.GuildSystem.GetMissions(delegate
                {
                    NextMission(next);
                }, null);
            }
            else
            {
                NextMission(next);
            }
        }

        private void NextMission(Action next)
        {
            if (Game.runtimeData.user.achievedAllGuildMission)
            {
                completed = true;

                if (Game.runtimeData.guildMissionRewardAvailable)
                {
                    ClaimReward(next);
                    return;
                }

                MyLog.Info("公會任務已經完成");
                executionReport.AppendFormat("公會任務在之前已經完成\n");
                next();
                return;
            }

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
                    PayItem(next);
                    break;

                case GuildMission.Type.SUBMIT_CARD:
                    SubmitCard(next);
                    break;

                case GuildMission.Type.SUBMIT_CARD_EXP:
                    SubmitExp(next);
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
            MyDialog.SetNetworkWaitingText(null, "通關任務\n<color=yellow>{0}\n{1} 次</color>", mission.targetFloor.name, mission.targetTimes);

            if (mission.isCompleted)
            {
                Game.GuildSystem.AchieveMission(
                    mission,
                    string.Empty,
                    delegate
                    {
                        MyLog.Info("完成公會任務 - 通關 {0} {1:#,0} 次", mission.targetFloor.name, mission.targetTimes);
                        executionReport.AppendFormat("通關 {0} {1:#,0} 次\n", mission.targetFloor.name, mission.targetTimes);
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
            MyDialog.SetNetworkWaitingText(null, "通關任務\n<color=yellow>{0}\n{1} 回</color>", mission.targetFloor.name, mission.targetTurns);

            if (mission.isCompleted)
            {
                Game.GuildSystem.AchieveMission(
                    mission,
                    string.Empty,
                    delegate
                    {
                        MyLog.Info("完成公會任務 - 通關 {0} {1:#,0} 回", mission.targetFloor.name, mission.targetTurns);
                        executionReport.AppendFormat("通關 {0} {1:#,0} 回\n", mission.targetFloor.name, mission.targetTurns);
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
            MyLog.Debug("公會任務要求 - 捐獻 {0:#,0} 金幣 {1:#,0} 黃金", mission.requireCoins, mission.donateGold);
            MyDialog.SetNetworkWaitingText(null, "捐獻黃金\n<color=yellow>{0:#,0}</color>", mission.donateGold);

            if (mission.enoughCoins)
            {
                Game.GuildSystem.AchieveMission(
                    mission,
                    string.Empty,
                    delegate
                    {
                        MyLog.Info("完成公會任務 - 捐獻 {0:#,0} 金幣 {1:#,0} 黃金", mission.requireCoins, mission.donateGold);
                        executionReport.AppendFormat("捐獻 {0:#,0} 金幣 {1:#,0} 黃金\n", mission.requireCoins, mission.donateGold);
                        NextMission(next);
                    },
                    null);
            }
            else
            {
                MyLog.Info("公會任務無法繼續 - 金幣不足");
                lastFailMessage.AppendFormat("無法捐獻 {0:#,0} 金幣 {1:#,0} 黃金\n", mission.requireCoins, mission.donateGold);
                next();
            }
        }

        private void PayItem(Action next)
        {
            var mission = new GuildMission_PayItems(Current.json);
            var itemString = String.Join(", ",
                mission.slots.Select(o =>
                    String.Format("[{0:0000}]({1})", o.itemId, o.availableType)
                ).ToArray());
            MyLog.Debug("公會任務要求 - 交碎片 {0}", itemString);
            MyDialog.SetNetworkWaitingText(null, "碎片交付\n<color=yellow>{0:0000}</color>",
                String.Join("\n",
                mission.slots.Select(o =>
                    String.Format("[{0:0000}]", o.itemId)
                ).ToArray()));

            if (mission.isComplete)
            {
                Game.GuildSystem.AchieveMission(
                    mission,
                    string.Empty,
                    delegate
                    {
                        MyLog.Info("完成公會任務 - 交碎片 {0}", itemString);
                        foreach (var slot in mission.slots)
                        {
                            executionReport.AppendFormat("碎片 {0}\n", slot.itemId);
                        }
                        NextMission(next);
                    },
                    null);
            }
            else
            {
                var slots = mission.slots.Where(s => s.availableType != GuildMission_PayItems.GuildMissionItemSlot.AvailableType.AVAILABLE);
                var itemRequiredString = String.Join(
                    ", ",
                    slots.Select(slot => String.Format("[{0:0000}]", slot.itemId)).ToArray());
                MyLog.Debug("公會任務執行 - 碎片蒐集 {0}", itemRequiredString);

                foreach (var slot in slots)
                {
                    var floor = MyDB.GetFloorByItemId(slot.itemId);

                    if (floor != null)
                    {
                        EnterAndCompleteFloor(floor, false, next);
                        return;
                    }
                }

                foreach (var slot in slots)
                {
                    MyLog.Debug("碎片 [{0:0000}] 不知道要去哪裡打", slot.itemId);
                    lastFailMessage.AppendFormat("無法貢獻碎片 {0}\n", slot.itemId);
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
            MyLog.Debug("公會任務要求 - 獻祭 {0}", cardString);
            MyDialog.SetNetworkWaitingText(null, "獻祭\n<color=yellow>{0:0000}</color>",
                String.Join("\n", mission.slots.Select(o => o.card.name).ToArray()));

            if (mission.isComplete)
            {
                Game.GuildSystem.AchieveMission(
                    mission,
                    mission.availableCardsString,
                    delegate
                    {
                        MyLog.Info("完成公會任務 - 獻祭 {0}", cardString);
                        foreach (var slot in mission.slots)
                        {
                            executionReport.AppendFormat("獻祭 {0}\n", slot.card.name);
                        }
                        NextMission(next);
                    },
                    null);
            }
            else
            {
                var slots = mission.slots.Where(s => s.availableType != GuildMission_SubmitCard.GuildMissionCardSlot.AvailableType.AVAILABLE);
                var cardRequiredString = String.Join(
                    ", ",
                    slots.Select(slot => slot.card.name).ToArray());
                MyLog.Debug("公會任務執行 - 獻祭 {0}", cardRequiredString);

                foreach (var slot in slots)
                {
                    var card = slot.card;
                    var floor = MyDB.GetFloorByMonsterId(card.monsterId);

                    if (floor != null)
                    {
                        EnterAndCompleteFloor(floor, false, next);
                        return;
                    }
                }

                foreach (var slot in slots)
                {
                    var card = slot.card;
                    MyLog.Debug("卡片 {0} 不知道要去哪裡打", card.name);
                    lastFailMessage.AppendFormat("無法獻祭 {0}\n", slot.card.name);
                }

                MyLog.Info("公會任務無法繼續 - 無法獻祭卡片 {0}", cardRequiredString);
                next();
            }
        }

        private void SubmitExp(Action next)
        {
            var mission = new GuildMission_SubmitCardExp(Current.json);
            MyLog.Debug("公會任務要求 - 捐獻經驗值 {0:#,0}", mission.requireExp);
            MyDialog.SetNetworkWaitingText(null, "捐獻經驗值\n<color=yellow>{0:#,0}</color>", mission.requireExp);

            var candidates = Game.runtimeData.user.inventory.cards.Values
                .Where(c => !c.inUse && !c.bookmark && !c.isHelper)
                .Where(c => c.type == Monster.RacialType.UPGRADE)
                .Where(c => c.mergeExp >= mission.requireExp)
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
                        MyLog.Info("完成公會任務 - 提供經驗值 {0:#,0} 犧牲了 {1}({2:#,0})", mission.requireExp, sacrificer.name, sacrificer.mergeExp);
                        executionReport.AppendFormat("貢獻 {0:#,0} {1}({2:#,0})\n", mission.requireExp, sacrificer.name, sacrificer.mergeExp);
                        NextMission(next);
                    },
                    null);
            }
            else
            {
                MyLog.Info("公會任務無法繼續 - 無符合經驗值 {0:#,0} 的卡片", mission.requireExp);
                lastFailMessage.AppendFormat("無符合經驗值 {0:#,0} 的卡片\n", mission.requireExp);
                next();
            }
        }

        private void EnterAndCompleteFloor(Floor target, bool isMission, Action next)
        {
            var guide = Strategy.JudgePatro(target);
            if (guide != Strategy.PatrolGuide.NONE)
            {
                MyLog.Debug("公會任務無法繼續 - 關卡 {0} 無法進行", target.name);
                lastFailMessage.AppendFormat("無法通關 {0}\n", target.name);
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
                    Game.runtimeData.guildMissionRewardMonsterIds.Select(monsterId => Game.database.monsters[monsterId].name).ToArray());

                MyLog.Info("已取得公會任務獎勵 - {0}", cardString);
                foreach (var monsterId in Game.runtimeData.guildMissionRewardMonsterIds)
                {
                    executionReport.AppendFormat("已取得獎勵 {0}\n", Game.database.monsters[monsterId].name);
                }
                next();
            }, null);
        }
    }
}