using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading;
using AssemblyHijack.Automation;
using GameJSON;
using JsonFx.Json;
using Native;
using UnityEngine;

public class MyGame
{
    private static readonly IEnumerable<IRunnable> RUNNER;

    static MyGame()
    {
        var runner = new List<IRunnable>();
        runner.Add(new CompleteCurrentFloor());
        runner.Add(new RegisterUser());
        runner.Add(new EnterFloor());

        RUNNER = runner;
    }

    private static void NextAction()
    {
        foreach (var runner in RUNNER)
        {
            if (runner.CanRun())
            {
                Game.NetworkWaiting();
                runner.Run(NextAction);
                Game.NetworkCompleted(null);
                return;
            }
        }
    }

    private static void MergeCard()
    {
        // find out source card
        // if source card level is max, quit.
        // find out target cards max 5
        // if target cards count zero, quit.
        // do merge
        // do NextAction() on complete.
    }

    public static void GetConfig(Action onSuccess)
    {
        Debug.Log("GetConfig");
        Action successHook = () =>
            {
                onSuccess();
                NextAction();
            };

        Game.GetConfig(successHook);
    }

    public static void SetConfig(Config config, bool restore = false)
    {
        Debug.Log("SetConfig");
        Game.SetConfig(config, restore);

        if (MyGameConfig.disableAds)
        {
            Core.Config.AdMob_PublisherId = string.Empty;
        }
    }

    public static void Login(Action onSuccess)
    {
        Debug.Log("Login");

        Action successHook = () =>
            {
                onSuccess();
                NextAction();
            };

        Game.Login(successHook);
    }
}