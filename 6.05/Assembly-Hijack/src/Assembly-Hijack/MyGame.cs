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
        MyLog.Debug("Loading RUNNERs ...");

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

        MyLog.Debug("{0} RUNNER(s) has been loaded !!", RUNNER.Count);
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
        if (!Game.localUserExists && MyGameConfig.register.enabled)
        {
            Game.NetworkCompleted();

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
            Game.NetworkCompleted();

            ViewController.SwitchView(delegate
            {
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
        MyLog.Debug(">> - {0}.SetConfig", typeof(MyGame).Name);
        Game.SetConfig(config, restore);
        Core.Config.AdMob_PublisherId = string.Empty;

        if (!Game.restoreOnResume && !Game.floorDataReady)
        {
            PromptRegister();
        }

        MyLog.Debug("<< - {0}.SetConfig", typeof(MyGame).Name);
    }

    public static void Login(Action onSuccess)
    {
        MyLog.Debug(">> - {0}.Login", typeof(MyGame).Name);
        Action successHook = () =>
        {
            onSuccess();
            PromptAutomation();
        };
        Game.Login(successHook);
        MyLog.Debug("<< - {0}.Login", typeof(MyGame).Name);
    }

    public static void SetData(Login.Data data, bool restore = false)
    {
        MyLog.Debug(">> - {0}.SetData", typeof(MyGame).Name);
        Game.SetData(data, restore);
        MyLog.Debug("<< - {0}.SetData", typeof(MyGame).Name);
    }

    //private static int[] targets = new int[] { 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115 };
    private static Monster.RacialType[] racialTypes = new[] { Monster.RacialType.HUMAN, Monster.RacialType.MONSTER, Monster.RacialType.FAIRY, Monster.RacialType.DRAGON, Monster.RacialType.GOD, Monster.RacialType.DEVIL };

    public static void SetUser(BaseJson userInfo, bool restore = false)
    {
        MyLog.Debug(">> - {0}.SetUser", typeof(MyGame).Name);

        if (MyGameConfig.user.enabled)
        {
            if (MyGameConfig.user.teamSize > 0)
            {
                MyLog.Debug("隊伍空間 [{0}] 改成 [{1}]", userInfo.user.teamSize, MyGameConfig.user.teamSize);
                userInfo.user.teamSize = MyGameConfig.user.teamSize;
            }

            if (MyGameConfig.user.reveal)
            {
                userInfo.user.completedFloorIds = Game.database.floors.Keys.ToArray();
                userInfo.user.completedStageIds = Game.database.stages.Keys.ToArray();
                MyLog.Debug("玩家視野已全部打開");
            }

            if (userInfo.cards != null && MyGameConfig.user.desires.Length > 0)
            {
                var newCardList = new List<GameJSON.Card>();
                var replaceIndex = 0;
                foreach (var cardString in userInfo.cards)
                {
                    if (replaceIndex >= MyGameConfig.user.desires.Length)
                        break;

                    var cardJson = ObjectParser.ParseCard(cardString);
                    var currentCard = Game.database.monsters[cardJson.monsterId];

                    //if (targets.Contains(currentCard.monsterId))
                    if (racialTypes.Contains(currentCard.type))
                    {
                        var desireSetting = MyGameConfig.user.desires[replaceIndex];
                        var desireCard = Game.database.monsters[desireSetting.monsterId];

                        MyLog.Debug("背包卡片抽換：[#{0}{1}] > [#{2}{3}], 卡片等級 [{4}] > [{5}], 技能等級 [{6}] > [{7}]",
                            cardJson.monsterId, currentCard.name,
                            desireSetting.monsterId, desireCard.name,
                            cardJson.level, desireSetting.monsterLv,
                            cardJson.skillLevel, desireSetting.skillLv);

                        cardJson.monsterId = desireSetting.monsterId;
                        cardJson.level = desireSetting.monsterLv;
                        cardJson.skillLevel = desireSetting.skillLv;
                        cardJson.exp += new Card(cardJson).LevelToExp(desireSetting.monsterLv);

                        replaceIndex++;
                    }

                    newCardList.Add(cardJson);
                }

                userInfo.cards = newCardList.Select(c => String.Format("{0}#{1}#{2}#{3}#{4}#{5}#{6}#{7}#{8}", c.cardId, c.monsterId, c.exp, c.level, c.skillLevel, c.created, c.extractableSoul, c.refineExp, c.refineLevel)).ToArray();
            }
        }

        Game.SetUser(userInfo, restore);

        if (MyGameConfig.user.enabled)
        {
            if (Game.tutorialMode && !MyGameConfig.user.tutorial)
            {
                while (Game.tutorialMode)
                    TutorialController.Continue();

                MyLog.Debug("已跳過新手導覽");
            }
        }

        MyLog.Debug("<< - {0}.SetUser", typeof(MyGame).Name);
    }

    public static List<Helper> GetHelperList(string[] helpers)
    {
        List<Helper> result = Game.GetHelperList(helpers);

        if (MyGameConfig.user.enabled)
        {
            for (int i = 0; i < result.Count && i < MyGameConfig.user.helpers.Length; i++)
            {
                var x = result[i].helperCard;
                var desireInfo = MyGameConfig.user.helpers[i];
                var y = new Card(desireInfo.monsterId, desireInfo.monsterLv, desireInfo.skillLv);

                result[i].helperCard = y;

                MyLog.Debug("好友卡片抽換：[#{0}{1}] > [#{2}{3}], 卡片等級 [{4}] > [{5}], 技能等級 [{6}] > [{7}]", x.monsterId, x.name, y.monsterId, y.name, x.level, y.level, x.skillLevel, y.skillLevel);
            }
        }

        return result;
    }
}