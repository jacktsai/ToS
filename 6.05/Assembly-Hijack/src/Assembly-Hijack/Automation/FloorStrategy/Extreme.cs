using System;
using System.Collections.Generic;

namespace AssemblyHijack.Automation.FloorStrategy
{
    /// <summary>
    /// 極限模式，目的是把體力作最佳運用。
    /// </summary>
    internal class Extreme : Strategy
    {
        public override Floor NextFloor()
        {
            Floor nromal_candidate = null;
            Floor bonus_candidate = null;

            foreach (var floor in Game.database.floors.Values)
            {
                if (nromal_candidate != null && !nromal_candidate.isCleared)
                {
                    MyDebug.Log("[#{0}{1}] IS NOT CLEARED, CLEAR IT FIRST, STOP", nromal_candidate.floorId, nromal_candidate.name);
                    break;
                }

                PatrolGuide guide = JudgePatro(floor);

                if (guide == PatrolGuide.SKIP)
                    continue;

                if (guide == PatrolGuide.STOP)
                    break;

                nromal_candidate = floor;

                Stage stage = floor.stage;
                if (stage.isBonus && (stage.bonusType == Stage.BonusType.STAMINA || stage.bonusType == Stage.BonusType.EXP))
                {
                    if (bonus_candidate != null)
                    {
                        // 以 EXP 的優先較高，否則取關卡等級高者
                        if (stage.bonusType == Stage.BonusType.EXP || bonus_candidate.stage.bonusType == Stage.BonusType.STAMINA)
                            bonus_candidate = floor;
                    }
                    else
                        bonus_candidate = floor;
                }
            }

            if (nromal_candidate != null && bonus_candidate != null)
            {
                if (nromal_candidate.isCleared)
                    nromal_candidate = bonus_candidate;
            }

            return nromal_candidate;
        }
    }
}