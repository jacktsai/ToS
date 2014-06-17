using GameJSON;
using JsonFx.Json;
using UnityEngine;

public class MyGame
{
    public static void SetConfig(Config config, bool restore = false)
    {
        Game.SetConfig(config, restore);
    }
}