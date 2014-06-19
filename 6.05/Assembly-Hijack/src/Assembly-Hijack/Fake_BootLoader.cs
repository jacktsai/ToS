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
        BootLoader.bootCam = base.camera;
        Core.coreLoadComplete = false;
        Watchdog.Log("[BootLoader]*** Start Load Core ***");
        Application.LoadLevelAdditiveAsync("CoreScene");
        Watchdog.Log("[BootLoader]Game.restoreOnResume: " + Game.restoreOnResume);
        Watchdog.Log("[BootLoader]Game.floorDataReady: " + Game.floorDataReady);
        if (Game.restoreOnResume || Game.floorDataReady)
        {
            MyBootLoader.RestoreFlow(this);
        }
        else
        {
            MyBootLoader.NormalFlow(this);
        }
        AudioController.bgm.Play(TOS.Common.GetMainThemeBgmId());
    }
}