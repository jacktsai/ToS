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

            Floor candidate = null;

            MyLog.Debug("嘗試取得[{0}]關卡...", stageType);
            foreach (var stage in Game.database.stages.Values.Where(s => s.type == stageType))
            {
                foreach (var floor in stage.floors.Values)
                {
                    PatrolGuide patro = JudgePatro(floor);

                    if (patro == PatrolGuide.SKIP)
                        continue;

                    if (patro == PatrolGuide.STOP)
                        goto end;

                    candidate = floor;
                }
            }

        end:
            if (candidate == null)
            {
                if (!repeat)
                {
                    wholeScanned = true;
                    MyLog.Debug("[{0}]已經不再提供關卡", stageType);
                }
            }

            return candidate;
        }
    }
}