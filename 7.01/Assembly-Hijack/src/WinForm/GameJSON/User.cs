namespace WinForm.GameJSON
{
    internal class User : BaseUser
    {
        public int created;
        public int updated;
        public int totalLogin;
        public string platform;
        public int exp;
        public int nextLevelExp;
        public int teamSize;
        public int teamRoom;
        public string team0Array = "0,0,0,0,0";
        public string team1Array = "0,0,0,0,0";
        public string team2Array = "0,0,0,0,0";
        public string team3Array = "0,0,0,0,0";
        public string team4Array = "0,0,0,0,0";
        public string team5Array = "0,0,0,0,0";
        public string team6Array = "0,0,0,0,0";
        public string team7Array = "0,0,0,0,0";
        public string team8Array = "0,0,0,0,0";
        public string team9Array = "0,0,0,0,0";
        public int totalSouls;
        public int inventoryCapacity;
        public int currentStamina;
        public int maxStamina;
        public int lastStaminaRecharge;
        public int friendPoint;
        public int coin;
        public int diamond;
        public string session;
        public int[] bookmarks;
        public int[] completedFloorIds;
        public int[] completedStageIds;
        public int[] playedFloorIds;
        public int[] lockedFloorIds;
        public int[] collectedMonsterIds;
        public int[] appearedMonsterIds;
        public int newFriend;
        public int newRequest;
        public int newReward;
        public int newMail;
        public int dailyUpdateExpire;
        public int servertime;
        public int tutorialStep;
        public int newGuildMission;
        public string facebookToken;
        public int soul;
    }
}