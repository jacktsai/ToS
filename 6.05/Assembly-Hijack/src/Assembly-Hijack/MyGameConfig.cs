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
        public User user = new User();
        public Puzzle puzzle = new Puzzle();

        public Register register = new Register();
        public Floor floor = new Floor();
        public Merge merge = new Merge();
        public Sell sell = new Sell();
        public Reward reward = new Reward();
    }

    public class User
    {
        public bool enabled = false;
        public bool tutorial = false;
        public int teamSize = 120;
        public bool reveal = false;
        public Card[] desires = new Card[0];
        public Card[] helpers = new Card[0];

        public class Card
        {
            public int monsterId = 0;
            public int monsterLv = 0;
            public int skillLv = 0;
        }
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
        /// <summary>
        /// 極限模式, 目的是把體力作最佳運用。
        /// </summary>
        public const string MODE_EXTREME = "extreme";

        /// <summary>
        /// 獎勵模式, 一切講求「省」。
        /// </summary>
        public const string MODE_BONUS_ONLY = "bonusOnly";

        /// <summary>
        /// 闖關模式, 除了過關, 其餘免談。
        /// </summary>
        public const string MODE_CLEAR_ONLY = "clearOnly";

        /// <summary>
        /// 隨選模式, 應設定關卡進行。
        /// </summary>
        public const string MODE_DEDICATED = "dedicated";

        public bool enabled = false;
        public string mode = MODE_EXTREME;
        public int[] floors = new int[0];

        /// <summary>
        /// 是否優先進行每日關卡
        /// </summary>
        public bool daily = false;

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
        public int period = 30;

        /// <summary>
        /// 自動領取獎賞別
        /// </summary>
        public int[] types = new int[] { 1, 2, 14 };
    }

    public static User user;
    public static Register register;
    public static Floor floor;
    public static Merge merge;
    public static Sell sell;
    public static Reward reward;
    public static Puzzle puzzle;

    static MyGameConfig()
    {
        MyLog.Debug("Loading game_config.json ...");
        LoadConfig();
        MyLog.Debug("game_config.json loaded !!");
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

                    user = config.user;
                    register = config.register;
                    floor = config.floor;
                    merge = config.merge;
                    sell = config.sell;
                    reward = config.reward;
                    puzzle = config.puzzle;
                }
            }
            catch (Exception ex)
            {
                Debug.LogError(ex);
            }
        }
    }
}