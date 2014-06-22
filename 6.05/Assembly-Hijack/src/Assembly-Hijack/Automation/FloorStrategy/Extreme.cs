using System;
using System.Collections.Generic;

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
            lastResult = null;

            Floor candidate = null;
            if (lastResult != null && lastResult.isCleared)
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
                PatrolGuide guide = JudgePatro(candidate);

                if (guide == PatrolGuide.NONE)
                {
                    lastResult = candidate;
                    return candidate;
                }
            }

            Floor bonus_candidate = null;
            foreach (var floor in Game.database.floors.Values)
            {
                // 預防跳關問題，目前跳關會導致 stage not cleared，領不到寶石
                if (candidate != null && !candidate.isCleared)
                {
                    if (JudgePatro(candidate) == PatrolGuide.NONE)
                    {
                        MyLog.Verbose("[#{0}{1}] IS NOT CLEARED, CLEAR IT FIRST, STOP", candidate.floorId, candidate.name);
                        break;
                    }
                }

                PatrolGuide guide = JudgePatro(floor);

                if (guide == PatrolGuide.SKIP)
                    continue;

                if (guide == PatrolGuide.STOP)
                    break;

                candidate = floor;

                Stage stage = floor.stage;
                if (stage.isBonus && (stage.bonusType == Stage.BonusType.STAMINA || stage.bonusType == Stage.BonusType.EXP))
                {
                    if (bonus_candidate != null)
                    {
                        // 以 EXP 的優先較高, 否則取關卡等級高者
                        if (stage.bonusType == Stage.BonusType.EXP || bonus_candidate.stage.bonusType == Stage.BonusType.STAMINA)
                            bonus_candidate = floor;
                    }
                    else
                        bonus_candidate = floor;
                }
            }

            if (candidate != null && bonus_candidate != null)
            {
                if (candidate.isCleared)
                    candidate = bonus_candidate;
            }

            lastResult = candidate;
            return candidate;
        }
    }
}