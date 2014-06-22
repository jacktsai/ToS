﻿using System;

namespace AssemblyHijack.Automation.FloorStrategy
{
    internal abstract class Strategy : IStrategy
    {
        protected enum PatrolGuide
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

        protected PatrolGuide JudgePatro(Floor target)
        {
            Stage stage = target.stage;

            MyLog.Verbose("開始判定關卡 [#{0}{1}]-[#{2}{3}]", stage.stageId, stage.name, target.floorId, target.name);

            if (target.stamina > Game.runtimeData.user.currentStamina)
            {
                MyLog.Verbose("[#{0}{1}]-[#{2}{3}] STAMINA REQUIRED {4} , CURRENT {5}, STOP", stage.stageId, stage.name, target.floorId, target.name, target.stamina, Game.runtimeData.user.currentStamina);
                return PatrolGuide.STOP;
            }

            if (!target.isAvailable)
            {
                MyLog.Verbose("[#{0}{1}]-[#{2}{3}] IS NOT AVAILABLE, STOP", stage.stageId, stage.name, target.floorId, target.name);
                return PatrolGuide.STOP;
            }

            if ((stage.type == Stage.Type.TUTORIAL || stage.type == Stage.Type.ONEOFF) && target.isCleared)
            {
                MyLog.Verbose("[#{0}{1}]-[#{2}{3}] HAS BEEN CLEARED, SKIP", stage.stageId, stage.name, target.floorId, target.name);
                return PatrolGuide.SKIP;
            }

            if (target.unlockByItem && !target.isItemCollected)
            {
                MyLog.Verbose("[#{0}{1}]-[#{2}{3}] IS NOT ENOUGH ITEM, SKIP", stage.stageId, stage.name, target.floorId, target.name);
                return PatrolGuide.SKIP;
            }

            if (target.haveLimitation)
            {
                MyLog.Verbose("[#{0}{1}]-[#{2}{3}] HAS LIMITATION, SKIP", stage.stageId, stage.name, target.floorId, target.name);
                return PatrolGuide.SKIP;
            }

            if (target.isLocked)
            {
                MyLog.Verbose("[#{0}{1}]-[#{2}{3}] IS LOCKED, SKIP", stage.stageId, stage.name, target.floorId, target.name);
                return PatrolGuide.SKIP;
            }

            //if (target.isRankingAvailable)
            //{
            //    MyLog.Verbose("[#{0}{1}]-[#{2}{3}] DO NOT TOUCH RANKING FLOOR, SKIP", stage.stageId, stage.name, target.floorId, target.name);
            //    return PatrolGuide.SKIP;
            //}

            return PatrolGuide.NONE;
        }
    }
}