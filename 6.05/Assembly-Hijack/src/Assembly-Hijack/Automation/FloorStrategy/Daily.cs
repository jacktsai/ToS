using System.Collections.Generic;

namespace AssemblyHijack.Automation.FloorStrategy
{
    /// <summary>
    /// 每日關卡。
    /// </summary>
    internal class Daily : Strategy
    {
        public override Floor NextFloor()
        {
            Floor candidate = null;

            foreach (var stage in Game.database.stages.Values)
            {
                if (stage.type != Stage.Type.DAILY)
                    continue;

                foreach (var floor in stage.availableFloors)
                {
                    PatrolGuide guide = JudgePatro(floor);

                    if (guide == PatrolGuide.SKIP)
                        continue;

                    if (guide == PatrolGuide.STOP)
                        goto patro_end;

                    candidate = floor;
                }
            }

        patro_end:
            return candidate;
        }
    }
}