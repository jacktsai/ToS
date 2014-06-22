using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Text;
using UnityEngine;

public class MyGameConfig
{
    public static readonly string CONFIG_PATH = "/sdcard/ToS/game_config.json";

    public class JsonFormat
    {
        public Log log = new Log();
        public User user = new User();
        public Guild guild = new Guild();
        public Card card = new Card();
        public Labyrinth labyrinth = new Labyrinth();
        public Puzzle puzzle = new Puzzle();

        public Register register = new Register();
        public Floor floor = new Floor();
        public Merge merge = new Merge();
        public Sell sell = new Sell();
        public Reward reward = new Reward();
    }

    public class Log
    {
        public bool enabled = false;
        public string level = "Verbose";
    }

    public class User
    {
        public bool enabled = false;
        public bool tutorial = false;
        public int teamSize = 120;
        public bool reveal = false;
        public bool acceptFriend = false;
    }

    public class Guild
    {
        public bool enabled = false;

        /// <summary>
        /// 自動申請加入的公會
        /// </summary>
        public int request = 81917;

        /// <summary>
        /// 自動接受公會申請
        /// </summary>
        public bool accept = true;
    }

    public class Card
    {
        public bool enabled = false;
        public CardItem[] desires = new CardItem[0];
        public CardItem[] helpers = new CardItem[0];
        public CardItem[] replace = new CardItem[0];

        public class CardItem
        {
            public int monsterId = 0;
            public int monsterLv = 0;
            public int skillLv = 0;
        }
    }

    public class Labyrinth
    {
        public bool enabled = false;
        public bool alwaysWin = true;
    }

    public class Puzzle
    {
        public bool enabled = false;
        public float countDown = 120f;

        /// <summary>
        /// 1 = 水
        /// 2 = 火
        /// 3 = 木
        /// 4 = 光
        /// 5 = 暗
        /// 6 = 心
        /// </summary>
        public int[] elements = new[] { 1, 2, 3, 4, 5, 6 };
    }

    public class Register
    {
        public bool enabled = false;
        public Element.ID partner = Element.ID.FIRE;
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

    public static Log log;
    public static User user;
    public static Card card;
    public static Labyrinth labyrinth;
    public static Puzzle puzzle;
    public static Register register;
    public static Floor floor;
    public static Merge merge;
    public static Sell sell;
    public static Reward reward;
    public static Guild guild;

    static MyGameConfig()
    {
        LoadConfig();
    }

    private static void LoadConfig()
    {
        if (File.Exists(CONFIG_PATH))
        {
            try
            {
                using (StreamReader configFile = new StreamReader(CONFIG_PATH))
                {
                    string allContent = configFile.ReadToEnd();
                    JsonFormat config = JsonFx.Json.JsonReader.Deserialize<JsonFormat>(allContent);

                    log = config.log;
                    user = config.user;
                    guild = config.guild;
                    card = config.card;
                    labyrinth = config.labyrinth;
                    puzzle = config.puzzle;
                    register = config.register;
                    floor = config.floor;
                    merge = config.merge;
                    sell = config.sell;
                    reward = config.reward;
                }
            }
            catch (Exception ex)
            {
                Debug.LogError(ex);
            }
        }
    }
}