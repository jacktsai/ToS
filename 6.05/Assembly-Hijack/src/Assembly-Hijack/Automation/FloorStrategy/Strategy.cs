using System;

namespace AssemblyHijack.Automation.FloorStrategy
{
    internal abstract class Strategy : IStrategy
    {
        protected enum PatrolGuide
        {
            /// <summary>
            /// 沒意見，由各實作者自行另外判斷
            /// </summary>
            NONE,

            /// <summary>
            /// 告訴巡覽者可以往下巡覽
            /// </summary>
            SKIP,

            /// <summary>
            /// 告訴巡覽者，可以停止巡覽，再往下只是浪費運算
            /// </summary>
            STOP
        }

        public abstract Floor NextFloor();

        protected PatrolGuide JudgePatro(Floor target)
        {
            Stage stage = target.stage;

            if ((stage.type == Stage.Type.TUTORIAL || stage.type == Stage.Type.ONEOFF) && target.isCleared)
            {
                MyDebug.Log("[#{0}{1}] HAS BEEN CLEARED, SKIP", target.floorId, target.name);
                return PatrolGuide.SKIP;
            }

            if (stage.type != Stage.Type.NORMAL && target.isPlayed)
            {
                MyDebug.Log("[#{0}{1}] HAS BEEN PLAYED, SKIP", target.floorId, target.name);
                return PatrolGuide.SKIP;
            }

            if (target.unlockByItem && !target.isItemCollected)
            {
                MyDebug.Log("[#{0}{1}] IS NOT ENOUGH ITEM, SKIP", target.floorId, target.name);
                return PatrolGuide.SKIP;
            }

            if (!target.isAvailable)
            {
                MyDebug.Log("[#{0}{1}] IS NOT AVAILABLE, STOP", target.floorId, target.name);
                return PatrolGuide.STOP;
            }

            if (target.isLocked)
            {
                MyDebug.Log("[#{0}{1}] IS LOCKED, STOP", target.floorId, target.name);
                return PatrolGuide.STOP;
            }

            if (target.stamina > Game.runtimeData.user.currentStamina)
            {
                MyDebug.Log("[#{0}{1}] STAMINA REQUIRED {2} , CURRENT {3}, STOP", target.floorId, target.name, target.stamina, Game.runtimeData.user.currentStamina);
                return PatrolGuide.STOP;
            }

            return PatrolGuide.NONE;
        }
    }
}