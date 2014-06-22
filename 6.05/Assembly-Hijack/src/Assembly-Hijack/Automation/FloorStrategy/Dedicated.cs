using System.Linq;

namespace AssemblyHijack.Automation.FloorStrategy
{
    /// <summary>
    /// 隨選模式, 應設定關卡進行。
    /// </summary>
    internal class Dedicated : Strategy
    {
        private readonly int[] floorIds;

        public Dedicated(int[] floorIds)
        {
            this.floorIds = floorIds;
        }

        public override Floor NextFloor()
        {
            Floor candidate = null;

            foreach (var floor in floorIds.Select(id => Game.database.floors[id]))
            {
                PatrolGuide patro = JudgePatro(floor);

                if (patro == PatrolGuide.SKIP)
                    continue;

                if (patro == PatrolGuide.STOP)
                    break;

                candidate = floor;
            }

            return candidate;
        }
    }
}