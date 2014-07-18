namespace WinForm.GameJSON
{
    internal class Guild
    {
        public int guildId;
        public string name;
        public int leaderUid = 141010007;
        public string leaderName = string.Empty;
        public string committeeUids = string.Empty;
        public int level;
        public int exp;
        public int coins;
        public float activeRate;
        public string lastActiveUpdate;
        public int totalMembers;
        public string iconString;
        public string announcement;
        public string systemAnnouncement;
        public string data;
        public GuildSharedMission sharedMission;
        public int donatedGold = -1;
        public string eventName = string.Empty;
        public int eventPoint;
    }
}