namespace WinForm.GameJSON
{
    internal class Login
    {
        public class Data : BaseData
        {
            public class AdsData
            {
                public string url;
                public string text;
                public bool showAgain;
            }

            public class Limitations
            {
                public int level;
                public int inventoryCapacity;
                public int friendSlots;
                public int extraCostForCardBonus;
                public int cardBonus;
                public int createGuildMinLevel = 100;
                public int createGuildCoins = 1000000;
                public int createGuildDiamond = 10;
                public int leaveGuildPunishment = 86400;
                public int kickGuildPunishment = 259200;
                public int dismissGuildPunishment = 604800;
                public int kickGuildCost = 100000;
                public bool showEventPointSorting;
                public int maximumSubLeader = 1;
                public int maxGameGuideLevel;
                public bool enableVideoRecording;
            }

            public int uid;
            public string session;
            public string[] monsters;
            public string[] normalSkills;
            public string[] teamSkills;
            public string[] combineNormalSkills;
            public string[] stageList;
            public string[] storyList;
            public string[] floorList;
            public StageBonus stageBonus;
            public BonusData luckyDrawBonus;
            public BonusData diamondStoreBonus;
            public string stageMessage;
            public string dailyMessage;
            public string luckyDrawMessage;
            public string rewardMessage;
            public bool showMessage;
            public bool isNewUser;
            public Login.Data.AdsData ads;
            public string[] asci;
            public Notification[] notifications;
            public Login.Data.Limitations limitations;
            public bool debugMode;
            public int notificationOffset;
            public GuildLevel[] guildLevels;
            public bool shouldShowBduck;
            public bool shouldShowChristmasEffect;
            public string[] refineLevels;
            public EventLuckyDraw[] eventLuckyDraw;
        }

        public Login.Data data;
    }
}