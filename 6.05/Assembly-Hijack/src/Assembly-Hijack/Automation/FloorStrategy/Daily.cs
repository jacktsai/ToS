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
            foreach (var stage in Game.database.stages.Values)
            {
                if (stage.type == Stage.Type.URGENT || stage.type == Stage.Type.DAILY || stage.type == Stage.Type.UNLIMITED)
                {
                    foreach (var floor in stage.availableFloors)
                    {
                        if (floor.stamina > 0)
                            continue;

                        PatrolGuide patro = JudgePatro(floor);
                        if (patro == PatrolGuide.NONE)
                            return floor;
                    }
                }
            }

            return null;
        }
    }
}