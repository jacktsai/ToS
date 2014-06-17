using System;
using System.Collections.Generic;
using System.Linq;
using System.Reflection;
using System.Text;
using GameJSON;
using JsonFx.Json;
using UnityEngine;

public class MyAPI
{
    public static API.Result _startURLRequest(string path, Dictionary<string, object> param, Action<URLRequest> onSuccess, Action<URLRequest> onFailed, API.Mode mode = API.Mode.NORMAL, bool isDataRequest = false)
    {
        Debug.Log("_startURLRequest");

        Action<URLRequest> successHook = request =>
            {
                //if (path.Equals("user/login"))
                //{
                //    try
                //    {
                //        InspectLoginData(request);
                //    }
                //    catch (Exception ex)
                //    {
                //        Debug.LogError(ex.ToString());
                //    }
                //}

                onSuccess(request);
            };

        Action<URLRequest> failedHook = request =>
            {
                onFailed(request);
            };

        return (API.Result)API._startURLRequest(path, param, successHook, failedHook, mode, isDataRequest);
    }

    private static void InspectLoginData(URLRequest request)
    {
        Login loginData = JsonReader.Deserialize<Login>(request.RespondText);

        loginData.user.teamSize = 120;

        List<GameJSON.Card> cardList = new List<GameJSON.Card>();

        StringBuilder message = new StringBuilder();
        message.Append("已擁有卡片編號: ");
        foreach (var cardString in loginData.cards)
        {
            GameJSON.Card card = ObjectParser.ParseCard(cardString);

            switch (card.cardId)
            {
                case 1:
                    card.monsterId = 510;
                    break;

                case 2:
                    card.monsterId = 287;
                    break;

                case 3:
                    card.monsterId = 360;
                    break;

                case 4:
                    card.monsterId = 370;
                    break;

                case 5:
                    card.monsterId = 412;
                    break;
            }

            message.AppendFormat("{0} ", card.monsterId);
            cardList.Add(card);
        }

        Debug.Log(message.ToString());

        loginData.cards = cardList.Select(c => String.Format("{0}#{1}#{2}#{3}#{4}#{5}#{6}#{7}#{8}", c.cardId, c.monsterId, c.exp, c.level, c.skillLevel, c.created, c.extractableSoul, c.refineExp, c.refineLevel)).ToArray();
        request.RespondText = JsonWriter.Serialize(loginData);
    }
}