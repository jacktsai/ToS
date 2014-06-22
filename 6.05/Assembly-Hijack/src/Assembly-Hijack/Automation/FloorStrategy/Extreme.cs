using System;
using System.Collections.Generic;
using System.Linq;

namespace AssemblyHijack.Automation.FloorStrategy
{
    /// <summary>
    /// 極限模式, 目的是把體力作最佳運用。
    /// </summary>
    internal class Extreme : Strategy
    {
        private Floor lastResult = null;

        public override Floor NextFloor()
        {
            lastResult = TryGetNextOfPreviousFloor();

            if (lastResult == null)
                lastResult = FindSuitableNormalFloor();

            return lastResult;
        }

        private Floor TryGetNextOfPreviousFloor()
        {
            if (lastResult == null)
                return null;

            MyLog.Verbose("正在嚐試尋找 [#{0}{1}] 的下一關", lastResult.floorId, lastResult.name);
            Floor candidate = null;

            if (lastResult.isCleared)
            {
                var nextFloor = lastResult.nextFloor;
                if (nextFloor != null)
                {
                    candidate = nextFloor;
                }
                else
                {
                    Stage nextStage = lastResult.stage.nextStage;
                    if (nextStage != null)
                    {
                        candidate = nextStage.floors[1];
                    }
                }
            }

            if (candidate != null)
            {
                // 很明顯上一回合沒有衝破關卡上限，所以直接繼續上次的獎勵關卡
                if (candidate.isCleared && lastResult.stage.isBonus)
                {
                    MyLog.Verbose("下一關 [#{0}{1}] 已經通關，嚐試繼續上一個關卡", lastResult.floorId, lastResult.name);
                    candidate = lastResult;
                }

                PatrolGuide guide = JudgePatro(candidate);
                if (guide == PatrolGuide.NONE)
                    return candidate;
            }

            return null;
        }

        private Floor FindSuitableNormalFloor()
        {
            Floor candidate = null;
            Floor bonus = null;

            MyLog.Verbose("開始從頭尋找關卡...");
            foreach (var stage in Game.database.stages.Values.Where(s => s.type == Stage.Type.NORMAL))
            {
                foreach (var floor in stage.availableFloors)
                {
                    PatrolGuide guide = JudgePatro(floor);

                    if (guide == PatrolGuide.SKIP)
                        continue;

                    if (guide == PatrolGuide.STOP)
                        goto end;

                    candidate = floor;

                    if (!candidate.isCleared)
                    {
                        MyLog.Verbose("[#{0}{1}] IS NOT CLEARED, CLEAR IT FIRST, STOP", candidate.floorId, candidate.name);
                        break;
                    }

                    if (stage.isBonus && (stage.bonusType == Stage.BonusType.STAMINA || stage.bonusType == Stage.BonusType.EXP))
                    {
                        if (bonus != null)
                        {
                            // 以 EXP 的優先較高, 否則取關卡等級高者
                            if (stage.bonusType == Stage.BonusType.EXP || bonus.stage.bonusType == Stage.BonusType.STAMINA)
                                bonus = floor;
                        }
                        else
                            bonus = floor;
                    }
                }
            }

        end:
            if (candidate != null && bonus != null)
            {
                if (candidate.isCleared)
                    candidate = bonus;
            }

            return candidate;
        }
    }
}