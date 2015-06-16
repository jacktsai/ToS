namespace WinForm.GameJSON
{
    internal class BaseUser
    {
        public int uid;
        public string name;
        public int lastLogin;
        public int level;
        public int totalFriends;
        public int friendsCapacity;
        public int helperCardId;
        public string loginType;
        public int attribute;
        public string language;
        public string locale;
        public int timezone;
        public Card helperCard;
        public int guildId;
        public int guildAllowedJoin;
        public Guild guild;
        public bool enableChat;
        public int banned;
    }
}