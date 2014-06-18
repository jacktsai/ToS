using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading;
using GameJSON;
using JsonFx.Json;
using Native;
using UnityEngine;

public class MyGame
{
    private static List<Floor> predicateFloors = new List<Floor>();
    private static int currentFloorIndex;

    private static void CompleteFloor(Action completeAction)
    {
        Game.runtimeData.currentFloor = predicateFloors[currentFloorIndex];
        Game.runtimeData.currentStage = Game.runtimeData.currentFloor.stage;
        Game.runtimeData.currentZone = Game.runtimeData.currentStage.zone;

        if (Game.runtimeData.currentFloor.floorId == 1)
        {
            Game.EnterCurrentFloor(() =>
            {
                Game.ClearCurrentFloor(completeAction);
            });
        }
        else
        {
            Game.GetHelperList(
                Game.runtimeData.currentFloor.floorId,
                helpers =>
                {
                    Game.runtimeData.currentSelectedHelper = helpers[0];
                    Game.EnterCurrentFloor(() =>
                    {
                        Game.ClearCurrentFloor(completeAction);
                    });
                },
                () =>
                {
                });
        }

        currentFloorIndex++;
    }

    public static void GetConfig(Action onSuccess)
    {
        Action successHook = () =>
            {
                onSuccess();

                if (!Game.localUserExists && MyGameConfig.registration != null && MyGameConfig.registration.auto)
                {
                    var name = String.Format("#{0:000}", UnityEngine.Random.Range(1, 10000));
                    var partner = MyGameConfig.registration.partner;
                    var type = "device";

                    Game.UniqueKey = SystemInformation.LocalKey;
                    Game.runtimeData.registerName = name;
                    Game.runtimeData.selectedPartner = partner;
                    Game.runtimeData.registrationType = type;
                    Game.Register(name, partner, type,
                        Game.runtimeData.registrationSocialUID,
                        Game.runtimeData.registrationSocialToken,
                        () =>
                        {
                            predicateFloors.Clear();
                            currentFloorIndex = 0;

                            Action nextAction = () => ViewController.SwitchView(ViewIndex.WORLDMAP_WORLD_MAP);

                            foreach (var item in Game.database.floors.Values)
                            {
                                predicateFloors.Add(item);

                                nextAction = () => CompleteFloor(nextAction);
                            }

                            nextAction();
                        },
                        () => { }
                    );
                }
            };

        Game.GetConfig(successHook);
    }

    public static void SetConfig(Config config, bool restore = false)
    {
        Game.SetConfig(config, restore);

        if (MyGameConfig.disableAds)
        {
            Core.Config.AdMob_PublisherId = string.Empty;
        }

        if (Game.restoreOnResume || Game.floorDataReady)
        {
        }
    }
}