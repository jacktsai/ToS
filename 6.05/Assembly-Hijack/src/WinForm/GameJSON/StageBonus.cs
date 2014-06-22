namespace WinForm.GameJSON
{
    internal class StageBonus
    {
        public class StageBonusItem
        {
            public int stageId;
            public int bonusType;
            public int startTime;
            public int endTime;
            public string title;
        }

        public int zone;
        public StageBonus.StageBonusItem[] stages;
    }
}