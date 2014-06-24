using System;

namespace AssemblyHijack.Automation.FloorStrategy
{
    internal abstract class Strategy : IStrategy
    {
        public enum PatrolGuide
        {
            /// <summary>
            /// 沒意見, 由各實作者自行另外判斷
            /// </summary>
            NONE,

            /// <summary>
            /// 告訴巡覽者可以往下巡覽
            /// </summary>
            SKIP,

            /// <summary>
            /// 告訴巡覽者, 可以停止巡覽, 再往下只是浪費運算
            /// </summary>
            STOP
        }

        public abstract Floor NextFloor();

        public static PatrolGuide JudgePatro(Floor target)
        {
            Stage stage = target.stage;

            MyLog.Debug("開始判定關卡 {0}-{1}", stage.name, target.name);

            if (target.stamina > Game.runtimeData.user.currentStamina)
            {
                MyLog.Debug("{0}-{1} REQUIRED STAMINA {2} , CURRENT {3}, STOP", stage.name, target.name, target.stamina, Game.runtimeData.user.currentStamina);
                return PatrolGuide.STOP;
            }

            if (!target.isAvailable)
            {
                MyLog.Debug("{0}-{1} IS NOT AVAILABLE, STOP", stage.name, target.name);
                return PatrolGuide.SKIP;
            }

            if ((stage.type == Stage.Type.TUTORIAL || stage.type == Stage.Type.ONEOFF) && target.isCleared)
            {
                MyLog.Debug("{0}-{1} HAS BEEN CLEARED, SKIP", stage.name, target.name);
                return PatrolGuide.SKIP;
            }

            if (target.unlockByItem && !target.isItemCollected)
            {
                MyLog.Debug("{0}-{1} IS NOT ENOUGH ITEM, SKIP", stage.name, target.name);
                return PatrolGuide.SKIP;
            }

            if (target.haveLimitation)
            {
                MyLog.Debug("{0}-{1} HAS LIMITATION, SKIP", stage.name, target.name);
                return PatrolGuide.SKIP;
            }

            if (target.isLocked)
            {
                MyLog.Debug("{0}-{1} IS LOCKED, SKIP", stage.name, target.name);
                return PatrolGuide.SKIP;
            }

            //if (target.isRankingAvailable)
            //{
            //    MyLog.Verbose("{0}-{1} DO NOT TOUCH RANKING FLOOR, SKIP", stage.name, target.name);
            //    return PatrolGuide.SKIP;
            //}

            return PatrolGuide.NONE;
        }
    }
}