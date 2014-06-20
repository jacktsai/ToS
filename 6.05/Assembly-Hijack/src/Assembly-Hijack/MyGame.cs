using System;
using System.Collections.Generic;
using System.Linq;
using System.Reflection;
using System.Threading;
using AssemblyHijack;
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
        MyDebug.Log("Loading RUNNERs ...");

        if (MyGameConfig.sell.enabled)
            RUNNER.Add(new SellCard());

        if (MyGameConfig.reward.enabled)
            RUNNER.Add(new ClaimReword());

        if (MyGameConfig.merge.enabled)
            RUNNER.Add(new MergeCard());

        if (MyGameConfig.floor.enabled)
        {
            // 會造成不明原因卡住，先不使用
            //if (MyGameConfig.floor.requestFriend)
            //    RUNNER.Add(new AcceptFriend());

            RUNNER.Add(new CompleteFloor());
        }

        MyDebug.Log("{0} RUNNER(s) has been loaded !!", RUNNER.Count);
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
        Action successHook = () =>
            {
                onSuccess();

                //if (MyGameConfig.register.enabled)
                //{
                //    var register = new RegisterUser();

                //    if (register.CanRun())
                //    {
                //        MyDialog.ShowConfirmCancel("是否要自動註冊新帳號？\n" + SystemInformation.LocalKey, () => register.Run(PromptAutomation));
                //    }
                //}
            };

        Game.GetConfig(successHook);
    }

    public static void Login(Action onSuccess)
    {
        Action successHook = () =>
            {
                onSuccess();

                //PromptAutomation();
            };

        Game.Login(successHook);
    }

    public static void SetConfig(Config config, bool restore = false)
    {
        MyDebug.Log("Before - {0}.SetConfig", typeof(MyGame).Name);
        MyDialog.ShowConfirm("設定檔載入中...");

        Game.SetConfig(config, restore);
        Core.Config.AdMob_PublisherId = string.Empty;

        MyDebug.Log("After - {0}.SetConfig", typeof(MyGame).Name);
    }

    public static void SetData(Login.Data data, bool restore = false)
    {
        MyDebug.Log("Before - {0}.SetData", typeof(MyGame).Name);
        Game.SetData(data, restore);
        MyDebug.Log("After - {0}.SetData", typeof(MyGame).Name);
    }

    public static void SetUser(BaseJson userInfo, bool restore = false)
    {
        MyDebug.Log("Before - {0}.SetUser", typeof(MyGame).Name);
        Game.SetUser(userInfo, restore);
        MyDebug.Log("After - {0}.SetUser", typeof(MyGame).Name);
    }
}