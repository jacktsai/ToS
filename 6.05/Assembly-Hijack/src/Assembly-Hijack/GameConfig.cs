using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Text;
using UnityEngine;

public class GameConfig
{
    public Log log = new Log();
    public User user = new User();
    public Helper helper = new Helper();
    public Labyrinth labyrinth = new Labyrinth();
    public Puzzle puzzle = new Puzzle();

    public Registration registration = new Registration();
    public Automation automation = new Automation();

    public class Log
    {
        public string level = "NA";
    }

    public class User
    {
        public bool tutorial = true;

        /// <summary>
        /// 自動申請加入的公會
        /// </summary>
        public int requestGuild = 0;

        public int teamSize = 0;
        public int teamRoom = 0;

        public bool teamEnabled = false;
        public Card[] team0 = new Card[0];
        public Card[] team1 = new Card[0];
        public Card[] team2 = new Card[0];
        public Card[] team3 = new Card[0];
        public Card[] team4 = new Card[0];
        public Card[] team5 = new Card[0];
        public Card[] team6 = new Card[0];
        public Card[] team7 = new Card[0];
        public Card[] team8 = new Card[0];
        public Card[] team9 = new Card[0];

        public Inventory inventory = new Inventory();

        public class Inventory
        {
            public bool enabled = false;
            public Card[] desires = new Card[0];
        }
    }

    public class Helper
    {
        public Card[] desires = new Card[0];
    }

    public class Card
    {
        public int monsterId = 0;
        public int monsterLv = 0;
        public int skillLv = 0;
        public int refineLv = 0;
    }

    public class Labyrinth
    {
        public bool alwaysWin = true;
    }

    public class Puzzle
    {
        public int timeout = 0;

        /// <summary>
        /// 1 = 水
        /// 2 = 火
        /// 3 = 木
        /// 4 = 光
        /// 5 = 暗
        /// 6 = 心
        /// </summary>
        public int[] elements = null;

        public float comboDamageMultiplier = 0;
    }

    public class Registration
    {
        public bool enabled = false;
        public Element.ID partner = Element.ID.FIRE;
    }

    public class Automation
    {
        public bool acceptFriends = false;
        public Inventory inventory = new Inventory();
        public Reward reward = new Reward();
        public Guild guild = new Guild();
        public Floor floor = new Floor();
        public Recovery recovery = new Recovery();
        public Merge merge = new Merge();
        public Sell sell = new Sell();

        public class Inventory
        {
            public int capacity = 0;
        }

        public class Reward
        {
            /// <summary>
            /// 每n秒更新一次清單
            /// </summary>
            public int period = 0;

            /// <summary>
            /// 自動領取獎賞別
            /// </summary>
            public global::Reward.Type[] types = new global::Reward.Type[0];
        }

        public class Guild
        {
            /// <summary>
            /// 自動接受公會申請
            /// </summary>
            public bool acceptMembers = false;

            /// <summary>
            /// 自動完成公會任務
            /// </summary>
            public bool achieveMissions = false;

            /// <summary>
            /// 捐獻保留金額，大於等於 0 才運作
            /// </summary>
            public int reserveCoin = -1;
        }

        public class Floor
        {
            public bool enabled = false;
            public int[] floorIds = new int[0];
            public bool requestFriend = false;
        }

        /// <summary>
        /// 自動回復體力機制
        /// </summary>
        public class Recovery
        {
            public int threshold = 0;

            /// <summary>
            /// 使用體力回復獎賞
            /// </summary>
            public bool reward = false;

            /// <summary>
            /// 使用魔法石回復
            /// </summary>
            public bool diamond = false;
        }

        public class Merge
        {
            public bool enabled = false;
            public int[] sacrificers = new int[0];
        }

        public class Sell
        {
            public bool enabled = false;

            /// <summary>
            /// 保留數量
            /// </summary>
            public int reserveAmount = 1;

            /// <summary>
            /// 卡片出售判斷的最低稀有度，高於此設定的不列入出售範圍
            /// </summary>
            public Monster.RareType lowestRare = Monster.RareType.NONE;

            /// <summary>
            /// 列入出售的卡片，即使稀有程度大於 lowestRare
            /// </summary>
            public int[] includeMonsterIds = new int[0];

            /// <summary>
            /// 不列入出售的卡片
            /// </summary>
            public int[] excludeMonsterIds = new int[0];
        }
    }
}