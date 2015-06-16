using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace WinForm.GameJSON
{
    public class Floor
    {
        public int floorId;
        public int stageId;
        public int floorIndex;
        public int monsterId;
        public int stamina;
        public int waveCount;
        public string tutorialStep;
        public string title;
        public int maxTeamCost;
        public bool isChallengeFloor;
        public bool unlockByItem;
        public int limitedTurns;
        public string bossScript;
        public string startScript;
        public int requiredItemAmount;
        public bool isNoRetry;
        public int relatedFloorId;
        public string endScript;
        public bool isRankingAvailable;
        public int startTime;
        public int endTime;
        public int teamMinMember;
        public int teamMaxMember;
        public int[] teamRacialTypes;
        public int[] teamAttributes;

        public DateTime startTime2;
        public DateTime endTime2;
    }
}