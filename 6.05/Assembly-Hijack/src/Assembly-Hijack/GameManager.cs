using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Reflection;
using System.Text;
using GameJSON;

using UnityEngine;

public class GameManager
{
    public class GameConfig
    {
        public string[] userCards;
        public string[] helperCards;

        public int? teamSize = null;
        public bool? clearFloors = null;
        public bool? unlockFloors = null;
    }

    private static readonly string CONFIG_PATH = "/sdcard/ToS/game_config.json";
    private static List<GameJSON.Card> desiredMonsters = new List<GameJSON.Card>();
    private static List<GameJSON.Card> desiredHelpers = new List<GameJSON.Card>();
    private static int? teamSize = null;
    private static bool clearFloors = false;
    private static bool unlockFloors = false;

    static GameManager()
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
                    GameConfig config = JsonFx.Json.JsonReader.Deserialize<GameConfig>(allContent);

                    desiredMonsters = ParseCardStrings(config.userCards);
                    desiredHelpers = ParseCardStrings(config.helperCards);

                    teamSize = config.teamSize;

                    if (config.clearFloors.HasValue)
                        clearFloors = config.clearFloors.Value;

                    if (config.unlockFloors.HasValue)
                        unlockFloors = config.unlockFloors.Value;
                }
            }
            catch (Exception ex)
            {
                Debug.LogError(ex);
            }
        }
    }

    public static void InspectData(Login.Data data)
    {
        //data.shouldShowChristmasEffect = true;
        //data.shouldShowBduck = true;
    }

    public static void InspectUser(BaseJson json)
    {
        json.user = InspectUser(json.user);
        json.cards = InspectCards(json.cards);
    }

    public static void InspectHelpers(int index, GameJSON.Helper helper)
    {
        if (index < desiredHelpers.Count)
        {
            GameJSON.Card currentHelper = helper.helperCard;
            GameJSON.Card desiredHelper = desiredHelpers[index];

            currentHelper.monsterId = desiredHelper.monsterId;

            if (desiredHelper.level > 0)
                currentHelper.level = desiredHelper.level;

            if (desiredHelper.skillLevel > 0)
                currentHelper.skillLevel = desiredHelper.skillLevel;
        }
    }

    private static GameJSON.User InspectUser(GameJSON.User user)
    {
        if (user != null)
        {
            if (teamSize != null)
                user.teamSize = teamSize.Value;

            if (clearFloors)
            {
                // 全部通關完成
                user.completedStageIds = Game.database.stages.Keys.ToArray();
                user.completedFloorIds = Game.database.floors.Keys.ToArray();
            }

            if (unlockFloors)
            {
                // 解除每日限定
                user.lockedFloorIds = new int[0];
            }
        }

        return user;
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

    private static string[] InspectCards(string[] cardStrings)
    {
        if (cardStrings == null || cardStrings.Length < 1)
            return cardStrings;

        List<GameJSON.Card> newCardList = new List<GameJSON.Card>();

        int replaceIndex = 0;
        foreach (var cardString in cardStrings)
        {
            GameJSON.Card currentCard = ObjectParser.ParseCard(cardString);

            // 史萊姆大變身
            if (currentCard.monsterId >= 96 && currentCard.monsterId <= 105)
            {
                if (currentCard.exp > 0 && replaceIndex < desiredMonsters.Count)
                {
                    GameJSON.Card desiredMonster = desiredMonsters[replaceIndex];

                    currentCard.monsterId = desiredMonster.monsterId;

                    if (desiredMonster.level > 0)
                        currentCard.level = desiredMonster.level;

                    if (desiredMonster.skillLevel > 0)
                        currentCard.skillLevel = desiredMonster.skillLevel;

                    replaceIndex++;
                }
            }

            newCardList.Add(currentCard);
        }

        return newCardList.Select(c => String.Format("{0}#{1}#{2}#{3}#{4}#{5}#{6}#{7}#{8}", c.cardId, c.monsterId, c.exp, c.level, c.skillLevel, c.created, c.extractableSoul, c.refineExp, c.refineLevel)).ToArray();
    }
}