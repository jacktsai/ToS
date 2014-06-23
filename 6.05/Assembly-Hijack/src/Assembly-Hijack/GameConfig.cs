using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Text;
using UnityEngine;

public class GameConfig
{
    public Log log = new Log();
    public Register register = new Register();
    public User user = new User();
    public Helper helper = new Helper();
    public Labyrinth labyrinth = new Labyrinth();
    public Puzzle puzzle = new Puzzle();
    public Floor floor = new Floor();
    public Merge merge = new Merge();
    public Sell sell = new Sell();
    public Reward reward = new Reward();

    public class Log
    {
        public string level = "NA";
    }

    public class Register
    {
        public bool enabled = false;
        public Element.ID partner = Element.ID.FIRE;
    }

    public class User
    {
        public bool tutorial = true;
        public int teamSize = 0;
        public bool reveal = false;
        public bool acceptFriend = false;

        public Guild guild = new Guild();
        public Inventory inventory = new Inventory();

        public class Guild
        {
            /// <summary>
            /// 自動申請加入的公會
            /// </summary>
            public int requestGuild = 0;

            /// <summary>
            /// 自動接受公會申請
            /// </summary>
            public bool acceptMember = false;

            /// <summary>
            /// 自動完成公會任務
            /// </summary>
            public bool achieveMissions = false;
        }

        public class Inventory
        {
            public int maxCapacity = 0;
            public Card[] desires = new Card[0];
            public Card[] replace = new Card[0];
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
    }

    public class Labyrinth
    {
        public bool alwaysWin = true;
    }

    public class Puzzle
    {
        public float countDown = 0;

        /// <summary>
        /// 1 = 水
        /// 2 = 火
        /// 3 = 木
        /// 4 = 光
        /// 5 = 暗
        /// 6 = 心
        /// </summary>
        public int[] elements = new int[0];
    }

    public class Floor
    {
        public bool enabled = false;
        public int[] floors = new int[0];
        public bool requestFriend = false;

        public Recovery recovery = new Recovery();

        /// <summary>
        /// 自動回復體力機制
        /// </summary>
        public class Recovery
        {
            public bool enabled = false;

            public int threshold = 5;

            /// <summary>
            /// 使用體力回復獎賞
            /// </summary>
            public bool reward = true;

            /// <summary>
            /// 使用魔法石回復
            /// </summary>
            public bool diamond = false;
        }
    }

    public class Merge
    {
        public bool enabled = false;
        public int[] sacrificer = new int[] { 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284 };
    }

    public class Sell
    {
        public bool enabled = false;
        public int[] cards = new int[] { 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115 };
    }

    public class Reward
    {
        public bool enabled = false;

        /// <summary>
        /// 每n秒更新一次清單
        /// </summary>
        public int period = 120;

        /// <summary>
        /// 自動領取獎賞別
        /// </summary>
        public int[] types = new int[] { 1, 2, 4, 13, 14 };
    }
}