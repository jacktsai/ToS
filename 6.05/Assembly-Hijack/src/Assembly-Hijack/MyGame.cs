using System;
using System.Collections.Generic;
using System.Linq;
using System.Reflection;
using System.Threading;
using AssemblyHijack.Automation;
using GameJSON;
using JsonFx.Json;
using Native;
using UnityEngine;

public class MyGame
{
    private static readonly IList<IRunnable> RUNNER = new List<IRunnable>();

    static MyGame()
    {
        Debug.Log("Loading RUNNERs ...");

        if (MyGameConfig.sell.enabled)
            RUNNER.Add(new SellCard());

        if (MyGameConfig.merge.enabled)
            RUNNER.Add(new MergeCard());

        if (MyGameConfig.floor.enabled)
        {
            RUNNER.Add(new CompleteFloor());

            if (MyGameConfig.floor.requestFriend)
                RUNNER.Add(new AcceptFriend());
        }

        Debug.Log(String.Format("{0} RUNNER(s) has been loaded !!", RUNNER.Count));
    }

    private static void NextAction()
    {
        foreach (var runner in RUNNER)
        {
            if (runner.CanRun())
            {
                runner.Run(NextAction);
                return;
            }
        }
    }

    private static void PromptAutomation()
    {
        if (RUNNER.Count > 0)
        {
            MyDialog.ShowConfirmCancel("是否要啟動自動化程序？", NextAction);
        }
    }

    public static void GetConfig(Action onSuccess)
    {
        //MyDialog.ShowWaiting("正在取得設定檔...");

        Action successHook = () =>
            {
                onSuccess();

                //MyDialog.Close();

                if (MyGameConfig.register.enabled)
                {
                    var register = new RegisterUser();

                    if (register.CanRun())
                    {
                        MyDialog.ShowConfirmCancel("是否要自動註冊新帳號？\n" + SystemInformation.LocalKey, () => register.Run(PromptAutomation));
                    }
                }
            };

        Game.GetConfig(successHook);
    }

    public static void SetConfig(Config config, bool restore = false)
    {
        //MyDialog.ShowWaiting("設定檔載入中...");

        Game.SetConfig(config, restore);

        if (MyGameConfig.disableAds)
        {
            Core.Config.AdMob_PublisherId = string.Empty;
        }

        //MyDialog.Close();
    }

    public static void Login(Action onSuccess)
    {
        //MyDialog.ShowWaiting("帳號登入中...");

        Action successHook = () =>
            {
                onSuccess();

                //MyDialog.Close();
                PromptAutomation();
            };

        Game.Login(successHook);
    }

    public static void NetworkWaiting()
    {
        if (MyDialog.instance == null)
        {
            Game.NetworkWaiting();
        }
    }

    public static void NetworkCompleted(URLRequest request = null)
    {
        if (MyDialog.instance == null)
        {
            Game.NetworkCompleted(null);
        }
    }
}