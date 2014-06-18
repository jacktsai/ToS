using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Reflection;
using System.Text;
using GameJSON;

using UnityEngine;

public class MyGameManager
{
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
        if (index < MyGameConfig.desiredHelpers.Count)
        {
            GameJSON.Card currentHelper = helper.helperCard;
            GameJSON.Card desiredHelper = MyGameConfig.desiredHelpers[index];

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
            if (MyGameConfig.teamSize != null)
                user.teamSize = MyGameConfig.teamSize.Value;

            if (MyGameConfig.clearFloors)
            {
                // 全部通關完成
                if (Game.database != null)
                {
                    if (Game.database.stages != null)
                        user.completedStageIds = Game.database.stages.Keys.ToArray();

                    if (Game.database.floors != null)
                        user.completedFloorIds = Game.database.floors.Keys.ToArray();
                }
            }

            if (MyGameConfig.unlockFloors)
            {
                // 解除每日限定
                user.lockedFloorIds = new int[0];
            }
        }

        return user;
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
                if (currentCard.exp > 0 && replaceIndex < MyGameConfig.desiredMonsters.Count)
                {
                    GameJSON.Card desiredMonster = MyGameConfig.desiredMonsters[replaceIndex];

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