using System.Linq;

namespace AssemblyHijack.Automation.FloorStrategy
{
    /// <summary>
    /// 隨選模式, 應設定關卡進行。
    /// </summary>
    internal class Dedicated : Strategy
    {
        public override Floor NextFloor()
        {
            Floor candidate = null;

            foreach (var floor in MyGameConfig.floor.floors.Select(id => Game.database.floors[id]))
            {
                PatrolGuide guide = JudgePatro(floor);

                if (guide == PatrolGuide.SKIP)
                    continue;

                if (guide == PatrolGuide.STOP)
                    break;

                candidate = floor;
            }

            return candidate;
        }
    }
}