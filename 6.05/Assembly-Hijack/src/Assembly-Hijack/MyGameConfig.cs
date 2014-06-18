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
        public bool? clearFloors = null;
        public bool? unlockFloors = null;
        public bool? disableAds = null;

        public Registration registration = null;
    }

    public class Registration
    {
        public bool auto = false;
        public Element.ID partner = Element.ID.FIRE;
    }

    public static List<GameJSON.Card> desiredMonsters = new List<GameJSON.Card>();
    public static List<GameJSON.Card> desiredHelpers = new List<GameJSON.Card>();
    public static int? teamSize = null;
    public static bool clearFloors = false;
    public static bool unlockFloors = false;
    public static bool disableAds = false;
    public static Registration registration = null;

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

                    desiredMonsters = ParseCardStrings(config.userCards);
                    desiredHelpers = ParseCardStrings(config.helperCards);

                    teamSize = config.teamSize;

                    if (config.clearFloors.HasValue)
                        clearFloors = config.clearFloors.Value;

                    if (config.unlockFloors.HasValue)
                        unlockFloors = config.unlockFloors.Value;

                    if (config.disableAds.HasValue)
                        disableAds = config.disableAds.Value;

                    registration = config.registration;
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