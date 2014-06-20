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
        public string[] userCards;
        public string[] helperCards;

        public int? teamSize = null;
        public bool clearAllFloors = false;
        public bool unlockFloors = false;
        public bool disableAds = false;

        public Register register = new Register();
        public Floor floor = new Floor();
        public Merge merge = new Merge();
        public Sell sell = new Sell();
        public Reward reward = new Reward();
    }

    public class Register
    {
        public bool enabled = false;
        public Element.ID partner = Element.ID.FIRE;
    }

    public class Floor
    {
        public bool enabled = false;
        public bool requestFriend = false;
        public int[] floorIds = new int[0];
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
        public int[] cards = new int[] { 270, 271, 272, 273, 274, 275, 276, 277, 278, 279 };
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

    public static List<GameJSON.Card> desiredMonsters;
    public static List<GameJSON.Card> desiredHelpers;
    public static int? teamSize;
    public static bool clearAllFloors;
    public static bool unlockFloors;
    public static bool disableAds;
    public static Register register;
    public static Floor floor;
    public static Merge merge;
    public static Sell sell;
    public static Reward reward;

    static MyGameConfig()
    {
        Debug.Log("Loading game_config.json ...");
        LoadConfig();
        Debug.Log("game_config.json loaded !!");
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

                    desiredMonsters = ParseCardStrings(config.userCards);
                    desiredHelpers = ParseCardStrings(config.helperCards);

                    teamSize = config.teamSize;
                    clearAllFloors = config.clearAllFloors;
                    unlockFloors = config.unlockFloors;
                    disableAds = config.disableAds;
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

    private static List<GameJSON.Card> ParseCardStrings(string[] cardStrings)
    {
        List<GameJSON.Card> cardList = new List<GameJSON.Card>();

        if (cardStrings != null && cardStrings.Length > 0)
        {
            foreach (var cardString in cardStrings)
            {
                string[] values = cardString.Split(',');
                GameJSON.Card card = new GameJSON.Card
                {
                    monsterId = MParser.ArrayItemParseToInt(ref values, 0, 1),
                    level = MParser.ArrayItemParseToInt(ref values, 1, 0),
                    skillLevel = MParser.ArrayItemParseToInt(ref values, 2, 0),
                };

                cardList.Add(card);
            }
        }

        return cardList;
    }
}