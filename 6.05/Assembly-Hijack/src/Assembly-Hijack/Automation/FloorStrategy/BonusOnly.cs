using System;
using System.Collections.Generic;

namespace AssemblyHijack.Automation.FloorStrategy
{
    /// <summary>
    /// 獎勵模式, 一切講求「省」。
    /// </summary>
    [Obsolete]
    internal class BonusOnly : Strategy
    {
        public override Floor NextFloor()
        {
            var candidates = new Dictionary<Stage.BonusType, Floor>();

            foreach (var stage in Game.database.stages.Values)
            {
                if (stage.isBonus && (stage.bonusType == Stage.BonusType.STAMINA || stage.bonusType == Stage.BonusType.EXP))
                {
                    foreach (var floor in stage.floors.Values)
                    {
                        PatrolGuide guide = JudgePatro(floor);

                        if (guide == PatrolGuide.STOP)
                            goto end_loop;

                        candidates[stage.bonusType] = floor;
                    }
                }
            }

        end_loop:
            Floor candidate;

            if (candidates.TryGetValue(Stage.BonusType.EXP, out candidate))
                return candidate;

            if (candidates.TryGetValue(Stage.BonusType.STAMINA, out candidate))
                return candidate;

            if (candidates.TryGetValue(Stage.BonusType.LOOT, out candidate))
                return candidate;

            return null;
        }
    }
}