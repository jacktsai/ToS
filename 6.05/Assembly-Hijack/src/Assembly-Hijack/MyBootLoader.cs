using System;
using System.Collections.Generic;
using System.Linq;
using System.Reflection;
using System.Text;
using System.Threading;
using Native;
using UnityEngine;

public class MyBootLoader : BootLoader
{
    public static void BeforeStart()
    {
    }

    public static void AfterStart()
    {
    }

    private void NormalFlow()
    {
        Watchdog.Log("[BootLoader]*** BootLoader normal flow ***");
        BootLoader.startTime = Watchdog.GetTimeStamp();
        MyGame.GetConfig(delegate
        {
            if (Game.localUserExists)
            {
                Game.Login(delegate
                {
                    BootLoader.waitStandyBy = true;
                });
            }
            else
            {
                BootLoader.waitStandyBy = true;
            }
            if (Core.Config.enableAdMobPublishing && Core.Config.AdMob_PublisherId != string.Empty)
            {
                AdsManager.Init(Core.Config.AdMob_PublisherId);
            }
        });
    }
}