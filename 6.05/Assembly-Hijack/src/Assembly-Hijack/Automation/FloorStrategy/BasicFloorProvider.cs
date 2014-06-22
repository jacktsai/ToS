using System.Linq;

namespace AssemblyHijack.Automation.FloorStrategy
{
    internal class BasicFloorProvider : Strategy
    {
        private readonly Stage.Type stageType;
        private readonly bool repeat;
        private bool wholeScanned = false;

        public BasicFloorProvider(Stage.Type stageType, bool repeat)
        {
            this.stageType = stageType;
            this.repeat = repeat;
        }

        public override Floor NextFloor()
        {
            if (wholeScanned)
                return null;

            MyLog.Debug("嚐試取得[{0}]關卡...", stageType);
            foreach (var stage in Game.database.stages.Values.Where(s => s.type == stageType))
            {
                foreach (var floor in stage.availableFloors)
                {
                    PatrolGuide patro = JudgePatro(floor);
                    if (patro == PatrolGuide.NONE)
                        return floor;
                }
            }

            if (!repeat)
            {
                wholeScanned = true;
                MyLog.Debug("[{0}]已經不再提供關卡", stageType);
            }

            return null;
        }
    }
}