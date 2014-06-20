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
                MyDebug.Log("stage type is [{0}{1}]", (int)stage.type, stage.type.ToString());

                if (stage.type == Stage.Type.DAILY)
                {
                    foreach (var floor in stage.availableFloors)
                    {
                        if (!floor.isPlayed)
                            return floor;
                    }
                }
            }

            return null;
        }
    }
}