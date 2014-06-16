using GameJSON;
using JsonFx.Json;
using UnityEngine;

public class MyGame
{
    public static void SetConfig(Config config, bool restore = false)
    {
        Debug.Log("device unique ID: " + SystemInfo.deviceUniqueIdentifier);
        Game.SetConfig(config, restore);
    }
}