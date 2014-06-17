using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Text;
using GameJSON;
using UnityEngine;

public class GameManager
{
    public static void Inspect(BaseJson json)
    {
        json.user = InspectUser(json.user);
        json.cards = InspectCards(json.cards);
    }

    private static GameJSON.User InspectUser(GameJSON.User user)
    {
        if (user != null)
        {
            user.teamSize = 120;
        }

        return user;
    }

    private static string[] InspectCards(string[] cards)
    {
        if (cards == null || cards.Length < 1)
            return cards;

        List<int> desiredMonsterIds = new List<int>();
        try
        {
            using (StreamReader cardRepo = new StreamReader("/sdcard/ToS/desired_monsters.txt"))
            {
                string content = cardRepo.ReadLine();
                desiredMonsterIds.AddRange(content.Split(new[] { ',' }).Select(s => int.Parse(s)));
            }
        }
        catch (Exception ex)
        {
            Debug.LogError(ex);
        }

        List<GameJSON.Card> cardList = new List<GameJSON.Card>();
        List<int> hasList = new List<int>();

        StringBuilder message = new StringBuilder();
        message.Append("目前卡片編號: ");
        int replacedCount = 0;
        foreach (var cardString in cards)
        {
            GameJSON.Card card = ObjectParser.ParseCard(cardString);

            if (card.exp > 0 && replacedCount < desiredMonsterIds.Count)
            {
                int originId = card.monsterId;
                card.monsterId = desiredMonsterIds[replacedCount];
                replacedCount++;
                message.AppendFormat("{0}({1}) ", card.monsterId, originId);
            }
            else
            {
                message.AppendFormat("{0} ", card.monsterId);
            }

            cardList.Add(card);
        }

        Debug.Log(message.ToString());

        return cardList.Select(c => String.Format("{0}#{1}#{2}#{3}#{4}#{5}#{6}#{7}#{8}", c.cardId, c.monsterId, c.exp, c.level, c.skillLevel, c.created, c.extractableSoul, c.refineExp, c.refineLevel)).ToArray();
    }
}