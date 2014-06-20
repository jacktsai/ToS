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
            if (MyGameConfig.floor.requestFriend)
                RUNNER.Add(new AcceptFriend());

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

    private static void PromptRegister()
    {
        if (!Game.localUserExists)
        {
            ViewController.SwitchView(delegate
            {
                DialogBuilder builder = MyDialog.Create();
                builder.SetMessage("是否要自動註冊新帳號？\n" + SystemInformation.LocalKey);
                builder.AddButton(Locale.t("LABEL_OK"), delegate
                {
                    var name = String.Format("#{0:000}", UnityEngine.Random.Range(1, 10000));
                    var partner = MyGameConfig.register.partner;
                    var type = "device";

                    Game.UniqueKey = SystemInformation.LocalKey;
                    Game.runtimeData.registerName = name;
                    Game.runtimeData.selectedPartner = partner;
                    Game.runtimeData.registrationType = type;

                    Game.Register(name, partner, type,
                        Game.runtimeData.registrationSocialUID,
                        Game.runtimeData.registrationSocialToken,
                        PromptAutomation,
                        null
                    );
                });
                builder.AddButton(Locale.t("LABEL_CANCEL"), delegate
                {
                    ViewController.SwitchView(ViewIndex.REGISTER_TYPESELECTION);
                });

                builder.Show();
            });
        }
    }

    private static void PromptAutomation()
    {
        if (RUNNER.Count > 0)
        {
            ViewController.SwitchView(delegate
            {
                Thread.Sleep(3000);

                DialogBuilder builder = MyDialog.Create();
                builder.SetMessage("是否要啟動自動化程序？");
                builder.AddButton(Locale.t("LABEL_OK"), delegate
                {
                    ViewController.SwitchView(ViewIndex.WORLDMAP_WORLD_MAP);
                    NextAction();
                });
                builder.AddButton(Locale.t("LABEL_CANCEL"), delegate
                {
                    ViewController.SwitchView(ViewIndex.WORLDMAP_WORLD_MAP);
                });

                builder.Show();
            });
        }
    }

    public static void GetConfig(Action onSuccess)
    {
        Game.GetConfig(onSuccess);
    }

    public static void SetConfig(Config config, bool restore = false)
    {
        MyDebug.Log(">> - {0}.SetConfig", typeof(MyGame).Name);
        Game.SetConfig(config, restore);
        Core.Config.AdMob_PublisherId = string.Empty;

        if (!Game.restoreOnResume && !Game.floorDataReady)
        {
            PromptRegister();
        }

        MyDebug.Log("<< - {0}.SetConfig", typeof(MyGame).Name);
    }

    public static void Login(Action onSuccess)
    {
        MyDebug.Log(">> - {0}.Login", typeof(MyGame).Name);
        Action successHook = () =>
        {
            onSuccess();
            PromptAutomation();
        };
        Game.Login(successHook);
        MyDebug.Log("<< - {0}.Login", typeof(MyGame).Name);
    }

    public static void SetData(Login.Data data, bool restore = false)
    {
        MyDebug.Log(">> - {0}.SetData", typeof(MyGame).Name);
        Game.SetData(data, restore);
        MyDebug.Log("<< - {0}.SetData", typeof(MyGame).Name);
    }

    public static void SetUser(BaseJson userInfo, bool restore = false)
    {
        MyDebug.Log(">> - {0}.SetUser", typeof(MyGame).Name);
        Game.SetUser(userInfo, restore);
        MyDebug.Log("<< - {0}.SetUser", typeof(MyGame).Name);
    }
}