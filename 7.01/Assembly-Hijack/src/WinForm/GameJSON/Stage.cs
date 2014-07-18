using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace WinForm.GameJSON
{
    public class Stage
    {
        public enum Type
        {
            TESTING = -1,
            TUTORIAL,
            NORMAL,
            WEEKDAY,
            URGENT,
            WEEKLY,
            DAILY,
            UNLIMITED,
            WEEKEND,
            ONEOFF,
            TEAMCOST,
            TIME_LIMIT,
            HIDDEN,
            UNLOCK_SOON,
            RELATED_FLOORS_CLEARED
        }

        public int stageId;
        public int nextStageId;
        public int zone;
        public int stoneType;
        public string title;
        public int startTime;
        public int endTime;
        public int previousStageId;
        public Type typeEnum;
        public string typeValue;
        public Floor[] floors;
        public int sceneId;
        public int storyId;
        public int requiredItemId;
        public int requiredItemCollectLimit;
        public bool showAllFloors;
    }
}