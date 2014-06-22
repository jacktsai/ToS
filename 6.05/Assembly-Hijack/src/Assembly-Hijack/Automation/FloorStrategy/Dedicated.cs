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
            foreach (var floor in floorIds.Select(id => Game.database.floors[id]))
            {
                PatrolGuide guide = JudgePatro(floor);

                if (guide == PatrolGuide.NONE)
                    return floor;
            }

            return null;
        }
    }
}