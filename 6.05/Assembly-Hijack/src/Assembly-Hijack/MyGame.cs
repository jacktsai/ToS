using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Reflection;
using System.Text;
using System.Threading;
using AssemblyHijack;
using AssemblyHijack.Automation;
using GameJSON;
using JsonFx.Json;
using Native;
using UnityEngine;

public class MyGame
{
    private static readonly string CONFIG_PATH = "/sdcard/ToS/game_config.json";

    public static readonly GameConfig config = LoadConfig();

    private static readonly IList<IRunnable> runners = new List<IRunnable>();
    private static IRunnable completeFloor = new CompleteFloor();
    private static IRunnable claimReword = new ClaimReword();
    private static IRunnable sellCard = new SellCard();
    private static IRunnable mergeCard = new MergeCard();
    private static IRunnable acceptFriend = new AcceptFriend();
    private static IRunnable requestGuild = new RequestGuild();
    private static IRunnable acceptMember = new AcceptMember();
    private static IRunnable achieveMission = new AchieveMission();
    private static IRunnable expandInventory = new ExpandInventory();
    private static DateTime beginTime;
    private static DateTime endTime;

    static MyGame()
    {
        MyLog.Info("Loading RUNNERs ...");

        if (config.user.inventory.maxCapacity > 0)
        {
            MyLog.Debug("Add {0}", expandInventory.GetType().FullName);
            runners.Add(expandInventory);
        }

        if (config.user.guild.achieveMissions)
        {
            MyLog.Debug("Add {0}", achieveMission.GetType().FullName);
            runners.Add(achieveMission);
        }

        if (config.user.guild.requestGuild > 0)
        {
            MyLog.Debug("Add {0}", requestGuild.GetType().FullName);
            runners.Add(requestGuild);
        }

        if (config.reward.enabled)
        {
            MyLog.Debug("Add {0}", claimReword.GetType().FullName);
            runners.Add(claimReword);
        }

        if (config.sell.enabled)
        {
            MyLog.Debug("Add {0}", sellCard.GetType().FullName);
            runners.Add(sellCard);
        }

        if (config.merge.enabled)
        {
            MyLog.Debug("Add {0}", mergeCard.GetType().FullName);
            runners.Add(mergeCard);
        }

        if (config.user.guild.acceptMember)
        {
            MyLog.Debug("Add {0}", acceptMember.GetType().FullName);
            runners.Add(acceptMember);
        }

        if (config.user.acceptFriend)
        {
            MyLog.Debug("Add {0}", acceptFriend.GetType().FullName);
            runners.Add(acceptFriend);
        }

        if (config.floor.enabled)
        {
            MyLog.Debug("Add {0}", completeFloor.GetType().FullName);
            runners.Add(completeFloor);
        }

        MyLog.Info("{0} RUNNER(s) has been loaded !!", runners.Count);
    }

    private static GameConfig LoadConfig()
    {
        if (File.Exists(CONFIG_PATH))
        {
            UnityEngine.Debug.Log(String.Format("try to load config from [{0}]", CONFIG_PATH));
            try
            {
                using (StreamReader configFile = new StreamReader(CONFIG_PATH))
                {
                    string allContent = configFile.ReadToEnd();
                    var config = JsonFx.Json.JsonReader.Deserialize<GameConfig>(allContent);

                    UnityEngine.Debug.Log("config file loaded.");

                    return config;
                }
            }
            catch (Exception ex)
            {
                Debug.LogError(ex);
            }
        }

        UnityEngine.Debug.Log("config file does not exists, use default settings.");
        return new GameConfig();
    }

    private static void NextAction()
    {
        foreach (var runner in runners)
        {
            if (runner.CanRun())
            {
                runner.Run(NextAction);
                return;
            }
        }

        endTime = DateTime.Now;
        ShowReport();
    }

    private static void PromptRegister()
    {
        if (!Game.localUserExists && config.register.enabled)
        {
            Timer.Create(1000, delegate(bool timeout)
            {
                MyDialog.Confirm(
                    "是否要自動註冊新帳號？\n" + SystemInformation.LocalKey,
                    delegate
                    {
                        var name = String.Format("#{0:000}", UnityEngine.Random.Range(1, 10000));
                        var partner = config.register.partner;
                        var type = "device";

                        Game.UniqueKey = SystemInformation.LocalKey;
                        Game.runtimeData.registerName = name;
                        Game.runtimeData.selectedPartner = partner;
                        Game.runtimeData.registrationType = type;

                        Game.Register(name, partner, type,
                            Game.runtimeData.registrationSocialUID,
                            Game.runtimeData.registrationSocialToken,
                            PromptAutomation,
                            null);
                    },
                    delegate
                    {
                        ViewController.SwitchView(ViewIndex.REGISTER_TYPESELECTION);
                    });
            }).Run();
        }
    }

    private static void PromptAutomation()
    {
        if (runners.Count > 0)
        {
            Timer.Create(1000, delegate(bool timeout)
            {
                MyDialog.Confirm(
                    "是否要啟動自動化程序？",
                    delegate
                    {
                        ViewController.SwitchView(ViewIndex.WORLDMAP_WORLD_MAP);
                        beginTime = DateTime.Now;
                        NextAction();
                    },
                    delegate
                    {
                        ViewController.SwitchView(ViewIndex.WORLDMAP_WORLD_MAP);
                    });
            }).Run();
        }
    }

    private static void ShowReport()
    {
        StringBuilder reportBuilder = new StringBuilder();
        reportBuilder.AppendFormat("開始 {0:yyyy-MM-dd HH:mm:ss}\n", beginTime);
        reportBuilder.AppendFormat("結束 {0:yyyy-MM-dd HH:mm:ss}\n", endTime);
        TimeSpan duration = endTime - beginTime;
        reportBuilder.AppendFormat("費時 {0}天{1}時{2}分{3}秒\n", duration.Days, duration.Hours, duration.Minutes, duration.Seconds);

        completeFloor.AppendReport(reportBuilder);
        claimReword.AppendReport(reportBuilder);
        sellCard.AppendReport(reportBuilder);
        mergeCard.AppendReport(reportBuilder);
        acceptFriend.AppendReport(reportBuilder);
        acceptMember.AppendReport(reportBuilder);

        string reportContent = reportBuilder.ToString();
        MyLog.Info(reportContent);

        ViewController.SwitchView(delegate
        {
            AudioController.bgm.Play(TOS.BgmId.GAMEPLAY_RESULT);

            DialogBuilder builder = new DialogBuilder();

            if (duration.TotalMinutes < 1)
                builder.SetTitle("喔喔~ 沒什麼成果耶！");
            else if (duration.TotalMinutes < 5)
                builder.SetTitle("看起來小有成果哦~");
            else if (duration.TotalMinutes < 10)
                builder.SetTitle("大豐收！！！好累哦，換你了！");
            else
                builder.SetTitle("天啊~~~ 你是要操死我哦？！");

            builder.SetScrollText(reportContent);
            builder.AddButton(Locale.t("LABEL_OK"), delegate
            {
                ViewController.SwitchView(ViewIndex.WORLDMAP_WORLD_MAP);
            });
            builder.Show();
        });
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

        if (config.user.teamSize > 0 && userInfo.user != null)
        {
            MyLog.Debug("隊伍空間 [{0}] 改成 [{1}]", userInfo.user.teamSize, config.user.teamSize);
            userInfo.user.teamSize = config.user.teamSize;
        }

        if (config.user.reveal && userInfo.user != null)
        {
            userInfo.user.completedFloorIds = Game.database.floors.Keys.ToArray();
            userInfo.user.completedStageIds = Game.database.stages.Keys.ToArray();
            MyLog.Debug("玩家視野已全部打開");
        }

        if (config.user.inventory.desires.Length > 0 && userInfo.cards != null)
        {
            var newCardList = new List<GameJSON.Card>();
            var desireSettings = (GameConfig.Card[])config.user.inventory.desires.Clone();
            var replaceIndex = 0;
            foreach (var cardString in userInfo.cards)
            {
                if (replaceIndex >= desireSettings.Length)
                    break;

                var cardJson = ObjectParser.ParseCard(cardString);
                var currentCard = Game.database.monsters[cardJson.monsterId];

                //if (targets.Contains(currentCard.monsterId))
                if (replaceIndex < desireSettings.Length && racialTypes.Contains(currentCard.type))
                {
                    var desireSetting = desireSettings[replaceIndex];
                    var desireCard = Game.database.monsters[desireSetting.monsterId];

                    if (desireSetting.monsterId < 1)
                        desireSetting.monsterId = cardJson.monsterId;
                    if (desireSetting.monsterLv < 1)
                        desireSetting.monsterLv = cardJson.level;
                    if (desireSetting.skillLv < 1)
                        desireSetting.skillLv = cardJson.skillLevel;

                    MyLog.Debug("背包卡片抽換：[#{0}{1}] > [#{2}{3}], 卡片等級 [{4}] > [{5}], 技能等級 [{6}] > [{7}]",
                        cardJson.monsterId, currentCard.name,
                        desireSetting.monsterId, desireCard.name,
                        cardJson.level, desireSetting.monsterLv,
                        cardJson.skillLevel, desireSetting.skillLv);

                    cardJson.monsterId = desireSetting.monsterId;
                    cardJson.level = desireSetting.monsterLv;
                    cardJson.skillLevel = desireSetting.skillLv;
                    cardJson.exp = new Card(cardJson).LevelToExp(desireSetting.monsterLv);

                    replaceIndex++;
                }

                newCardList.Add(cardJson);
            }

            userInfo.cards = newCardList.Select(c => String.Format("{0}#{1}#{2}#{3}#{4}#{5}#{6}#{7}#{8}", c.cardId, c.monsterId, c.exp, c.level, c.skillLevel, c.created, c.extractableSoul, c.refineExp, c.refineLevel)).ToArray();
        }

        Game.SetUser(userInfo, restore);

        if (Game.tutorialMode && !config.user.tutorial)
        {
            while (Game.tutorialMode)
                TutorialController.Continue();

            MyLog.Debug("已跳過新手導覽");
        }

        MyLog.Debug("<< - {0}.SetUser", typeof(MyGame).Name);
    }

    public static List<Helper> GetHelperList(string[] helpers)
    {
        List<Helper> result = Game.GetHelperList(helpers);

        if (config.helper.desires.Length > 0)
        {
            for (int i = 0; i < result.Count && i < config.helper.desires.Length; i++)
            {
                var x = result[i].helperCard;
                var desire = config.helper.desires[i];
                var y = new Card(desire.monsterId, desire.monsterLv, desire.skillLv);
                y.cardId = x.cardId;
                y.exp = x.exp;
                y.refineLevel = x.refineLevel;

                result[i].helperCard = y;

                MyLog.Debug("好友卡片抽換：[{0:0000}]{1} > [{2:0000}]{3}, 卡片等級 [{4}] > [{5}], 技能等級 [{6}] > [{7}]", x.monsterId, x.name, y.monsterId, y.name, x.level, y.level, x.skillLevel, y.skillLevel);
            }
        }

        return result;
    }
}