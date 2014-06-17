using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using GameJSON;
using JsonFx.Json;

public class Fake_Game
{
    public static void SetUser(BaseJson userInfo, bool restore = false)
    {
        GameManager.Inspect(userInfo);

        Watchdog.Log("*** Game.SetUser() ***");
        if (userInfo.user != null)
        {
            if (userInfo.user.servertime > 0)
            {
                Game.SetServerTimeOffset(userInfo.user.servertime);
            }
            Game.runtimeData.userJson.user = userInfo.user;
            if (IMPlayerPrefManager.GetInt("GAME_LOCAL_USER", 0) != userInfo.user.uid)
            {
                IMPlayerPrefManager.SetInt("GAME_LOCAL_USER", userInfo.user.uid);
            }
            int staminaNotification = userInfo.user.lastStaminaRecharge + (userInfo.user.maxStamina - userInfo.user.currentStamina) * Game.runtimeData.staminaRechargeSpan;
            if (userInfo.user.maxStamina - userInfo.user.currentStamina > 0)
            {
                Game.SetStaminaNotification(staminaNotification);
            }
            else
            {
                Game.CancelStaminaNotification();
            }
            Game.SetDailyUpdateTimer(userInfo.user.dailyUpdateExpire);
            Game.runtimeData.maxLevel = userInfo.user.level;
            Game.runtimeData.maxCoin = userInfo.user.coin;
            if (userInfo.user.appearedMonsterIds != null)
            {
                Game.runtimeData.appearedMonsterCount = userInfo.user.appearedMonsterIds.Length;
            }
            if (userInfo.user.guildId == 0)
            {
                Game.runtimeData.userGuildJson = null;
            }
            else
            {
                if (userInfo.user.guildId != 0 && userInfo.user.guild != null)
                {
                    Game.runtimeData.userGuildJson = userInfo.user.guild;
                }
            }
            if (Game.runtimeData.userGuildJson != null)
            {
                Game.runtimeData.userJson.user.guild = Game.runtimeData.userGuildJson;
            }
        }
        if (userInfo.cards != null)
        {
            Game.runtimeData.userJson.cards = userInfo.cards;
        }
        if (userInfo.items != null)
        {
            Game.runtimeData.userJson.items = userInfo.items;
        }
        Game.runtimeData.user = new User(Game.runtimeData.userJson);
        if (!restore)
        {
            GameStateManager.Write("RUNTIME_USER_JSON", JsonWriter.Serialize(Game.runtimeData.userJson));
            GameStateManager.Commit(GameStateManager.CommitLevel.RUNTIME);
        }
        Game.StoreSimpleUserData();
        Game.runtimeData.materialMonstersCount.Clear();
        foreach (Card current in Game.runtimeData.user.inventory.cards.Values)
        {
            List<int> list = new List<int>
		{
			20,
			21,
			22,
			24,
			32,
			36,
			37,
			41,
			42,
			43
		};
            if (list.Contains(current.seriesId))
            {
                if (!current.inUse && !current.bookmark)
                {
                    if (Game.runtimeData.materialMonstersCount.ContainsKey(current.monsterId))
                    {
                        Dictionary<int, int> materialMonstersCount;
                        Dictionary<int, int> expr_32C = materialMonstersCount = Game.runtimeData.materialMonstersCount;
                        int num;
                        int expr_335 = num = current.monsterId;
                        num = materialMonstersCount[num];
                        expr_32C[expr_335] = num + 1;
                    }
                    else
                    {
                        Game.runtimeData.materialMonstersCount.Add(current.monsterId, 1);
                    }
                }
            }
        }
        Game.UserInfoUpdated();
    }
}