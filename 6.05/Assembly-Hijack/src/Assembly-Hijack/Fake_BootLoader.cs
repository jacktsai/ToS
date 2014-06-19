using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using Native;
using UnityEngine;

public class Fake_BootLoader : BootLoader
{
    public new void Start()
    {
        MyBootLoader.BeforeStart();
        BootLoader.bootCam = base.camera;
        Core.coreLoadComplete = false;
        Watchdog.Log("[BootLoader]*** Start Load Core ***");
        Application.LoadLevelAdditiveAsync("CoreScene");
        Watchdog.Log("[BootLoader]Game.restoreOnResume: " + Game.restoreOnResume);
        Watchdog.Log("[BootLoader]Game.floorDataReady: " + Game.floorDataReady);
        if (Game.restoreOnResume || Game.floorDataReady)
        {
            this.RestoreFlow();
        }
        else
        {
            this.NormalFlow();
        }
        AudioController.bgm.Play(TOS.Common.GetMainThemeBgmId());
        MyBootLoader.AfterStart();
    }

    private void RestoreFlow()
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