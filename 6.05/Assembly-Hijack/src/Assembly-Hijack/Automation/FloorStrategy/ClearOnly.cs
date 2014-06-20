namespace AssemblyHijack.Automation.FloorStrategy
{
    /// <summary>
    /// 闖關模式，除了過關，其餘免談。
    /// </summary>
    internal class ClearOnly : Strategy
    {
        private Floor lastResult = null;

        public override Floor NextFloor()
        {
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

            if (candidate == null)
            {
                foreach (var stage in Game.database.stages.Values)
                {
                    if (!stage.isCleared)
                    {
                        foreach (var floor in stage.floors.Values)
                        {
                            if (!floor.isCleared)
                            {
                                candidate = floor;
                                break;
                            }
                        }
                        break;
                    }
                }
            }

            PatrolGuide guide = JudgePatro(candidate);

            if (guide == PatrolGuide.NONE)
                return candidate;
            else
                return null;
        }
    }
}