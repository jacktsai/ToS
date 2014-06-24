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
    private static IRunnable acceptMember = new AcceptMember();
    private static IRunnable achieveMission = new AchieveMissions();
    private static IRunnable expandInventory = new ExpandInventory();
    private static IRunnable donateCoin = new DonateCoin();
    private static bool running = false;
    private static DateTime beginTime;
    private static DateTime endTime;

    static MyGame()
    {
        MyLog.Info("Loading RUNNERs ...");

        if (config.user.acceptFriend)
        {
            MyLog.Debug("Add {0}", acceptFriend.GetType().FullName);
            runners.Add(acceptFriend);
        }

        if (config.user.guild.acceptMember)
        {
            MyLog.Debug("Add {0}", acceptMember.GetType().FullName);
            runners.Add(acceptMember);
        }

        if (config.reward.period > 0)
        {
            MyLog.Debug("Add {0}", claimReword.GetType().FullName);
            runners.Add(claimReword);
        }

        if (config.user.inventory.capacity > 0)
        {
            MyLog.Debug("Add {0}", expandInventory.GetType().FullName);
            runners.Add(expandInventory);
        }

        if (config.sell.enabled)
        {
            MyLog.Debug("Add {0}", sellCard.GetType().FullName);
            runners.Add(sellCard);
        }

        if (config.user.guild.achieveMissions)
        {
            MyLog.Debug("Add {0}", achieveMission.GetType().FullName);
            runners.Add(achieveMission);
        }

        if (config.merge.enabled)
        {
            MyLog.Debug("Add {0}", mergeCard.GetType().FullName);
            runners.Add(mergeCard);
        }

        if (config.floor.enabled)
        {
            MyLog.Debug("Add {0}", completeFloor.GetType().FullName);
            runners.Add(completeFloor);
        }

        if (config.user.guild.reservedCoin > 0)
        {
            MyLog.Debug("Add {0}", donateCoin.GetType().FullName);
            runners.Add(donateCoin);
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
        running = false;
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
                        running = true;
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

        acceptFriend.AppendReport(reportBuilder);
        acceptMember.AppendReport(reportBuilder);
        expandInventory.AppendReport(reportBuilder);
        donateCoin.AppendReport(reportBuilder);
        claimReword.AppendReport(reportBuilder);
        mergeCard.AppendReport(reportBuilder);
        achieveMission.AppendReport(reportBuilder);
        completeFloor.AppendReport(reportBuilder);
        sellCard.AppendReport(reportBuilder);

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

        Game.Login(delegate
        {
            onSuccess();

            if (config.user.guild.requestGuild > 0 && Game.runtimeData.user.guild == null)
            {
                Game.GuildSystem.SendRequest(config.user.guild.requestGuild, delegate
                {
                    MyLog.Info("已對公會 [{0}] 送出申請", config.user.guild.requestGuild);
                    PromptAutomation();
                });
            }
            else
            {
                MyLog.Debug("未對公會送出申請");
                PromptAutomation();
            }
        });

        MyLog.Debug("<< - {0}.Login", typeof(MyGame).Name);
    }

    public static void SetData(Login.Data data, bool restore = false)
    {
        MyLog.Debug(">> - {0}.SetData", typeof(MyGame).Name);
        Game.SetData(data, restore);

        foreach (var stage in Game.database.stages.Values)
        {
            stage.name = String.Format("[{0}]{1}", stage.stageId, stage.name);
        }

        foreach (var floor in Game.database.floors.Values)
        {
            floor.name = String.Format("[{0}]{1}", floor.floorId, floor.name);
        }

        foreach (var monster in Game.database.monsters.Values)
        {
            var nameKey = String.Format("MONSTER_{0}", monster.monsterId);
            SimpleLocale._localeDictionary[nameKey] = String.Format("[{0:0000}]{1}", monster.monsterId, monster.name);
        }

        MyLog.Debug("<< - {0}.SetData", typeof(MyGame).Name);
    }

    public static void SetUser(BaseJson userInfo, bool restore = false)
    {
        MyLog.Debug(">> - {0}.SetUser", typeof(MyGame).Name);

        if (!running && userInfo.user != null)
        {
            if (config.user.teamSize > 0)
            {
                userInfo.user.teamSize = config.user.teamSize;
                MyLog.Info("隊伍空間 [{0}] 已調整為 [{1}]", userInfo.user.teamSize, config.user.teamSize);
            }

            if (config.user.reveal)
            {
                userInfo.user.completedFloorIds = Game.database.floors.Keys.ToArray();
                userInfo.user.completedStageIds = Game.database.stages.Keys.ToArray();
                MyLog.Info("已打開玩家全部視野");
            }
        }

        if (!running && userInfo.cards != null && config.user.inventory.desires.Length > 0)
        {
            var newCardList = new List<string>();
            var desireSettings = (GameConfig.Card[])config.user.inventory.desires.Clone();
            var replaceIndex = 0;

            foreach (var cardString in userInfo.cards)
            {
                var cardString_new = cardString;

                var cardJson = ObjectParser.ParseCard(cardString);
                var currentCard = Game.database.monsters[cardJson.monsterId];

                if (replaceIndex < desireSettings.Length)
                {
                    var desireSetting = desireSettings[replaceIndex];

                    if (desireSetting.monsterId < 1)
                        desireSetting.monsterId = cardJson.monsterId;
                    if (desireSetting.skillLv < 1)
                        desireSetting.skillLv = cardJson.skillLevel;
                    if (desireSetting.refineLv < 1)
                        desireSetting.refineLv = cardJson.refineLevel;

                    var desireCard = new Card(desireSetting.monsterId, 0, desireSetting.skillLv, 0, desireSetting.refineLv);

                    // 調整到相對等級
                    if (desireSetting.monsterLv < 1)
                        desireCard.exp = cardJson.exp;

                    desireCard.refineLevelToExp(desireSetting.refineLv);

                    MyLog.Info("背包卡片抽換：{0} > {1} 等級 {2} > {3} 技能 {4} > {5} 昇華 {6} > {7}",
                         currentCard.name, desireCard.name,
                        cardJson.level, desireCard.level,
                        cardJson.skillLevel, desireCard.skillLevel,
                        cardJson.refineLevel, desireCard.refineLevel);

                    cardJson.monsterId = desireCard.monsterId;
                    cardJson.level = desireCard.level;
                    cardJson.skillLevel = desireCard.skillLevel;
                    cardJson.refineLevel = desireCard.refineLevel;
                    cardJson.exp = desireCard.exp;

                    cardString_new = String.Format("{0}#{1}#{2}#{3}#{4}#{5}#{6}#{7}#{8}", cardJson.cardId, cardJson.monsterId, cardJson.exp, cardJson.level, cardJson.skillLevel, cardJson.created, cardJson.extractableSoul, cardJson.refineExp, cardJson.refineLevel);
                    replaceIndex++;
                }

                newCardList.Add(cardString_new);
            }

            userInfo.cards = newCardList.ToArray();
        }

        Game.SetUser(userInfo, restore);

        if (!running && Game.tutorialMode && !config.user.tutorial)
        {
            while (Game.tutorialMode)
                TutorialController.Continue();

            MyLog.Info("已跳過新手導覽");
        }

        MyLog.Debug("<< - {0}.SetUser", typeof(MyGame).Name);
    }

    public static List<Helper> GetHelperList(string[] helpers)
    {
        MyLog.Debug(">> - {0}.GetHelperList", typeof(MyGame).Name);

        List<Helper> result = Game.GetHelperList(helpers);

        if (!running && config.helper.desires.Length > 0)
        {
            var desireSettings = (GameConfig.Card[])config.helper.desires.Clone();

            for (int i = 0; i < result.Count && i < config.helper.desires.Length; i++)
            {
                var x = result[i].helperCard;
                var desireSetting = config.helper.desires[i];

                if (desireSetting.monsterId < 1)
                    desireSetting.monsterId = x.monsterId;
                if (desireSetting.skillLv < 1)
                    desireSetting.skillLv = x.skillLevel;
                if (desireSetting.refineLv < 1)
                    desireSetting.refineLv = x.refineLevel;

                var y = new Card(desireSetting.monsterId, desireSetting.monsterLv, desireSetting.skillLv, 0, desireSetting.refineLv);

                // 調整到相對等級
                if (desireSetting.monsterLv < 1)
                {
                    MyLog.Debug("卡片等級未設定, 套用目標經驗值 {0:#,0}", x.exp);
                    y.exp = x.exp;
                }

                y.cardId = x.cardId;
                y.refineLevel = x.refineLevel;

                result[i].helperCard = y;

                MyLog.Info("好友卡片抽換：{0} > {1} 等級 {2} > {3} 技能 {4} > {5} 昇華 {6} > {7}",
                     x.name, y.name, x.level, y.level, x.skillLevel, y.skillLevel, x.refineLevel, y.refineLevel);
            }
        }

        MyLog.Debug("<< - {0}.GetHelperList", typeof(MyGame).Name);

        return result;
    }
}