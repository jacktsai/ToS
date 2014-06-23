using AssemblyHijack;
using AssemblyHijack.Automation;
using GameJSON;
using JsonFx.Json;
using Native;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Reflection;
using System.Text;
using System.Threading;
using UnityEngine;

public class MyGame
{
    private static readonly IList<IRunnable> RUNNER = new List<IRunnable>();
    private static IRunnable completeFloor = new CompleteFloor();
    private static IRunnable claimReword = new ClaimReword();
    private static IRunnable sellCard = new SellCard();
    private static IRunnable mergeCard = new MergeCard();
    private static IRunnable acceptFriend = new AcceptFriend();
    private static IRunnable requestGuild = new RequestGuild();
    private static IRunnable acceptMember = new AcceptMember();
    private static IRunnable achieveMission = new AchieveMission();
    private static DateTime BeginTime;
    private static DateTime EndTime;

    static MyGame()
    {
        MyLog.Info("Loading RUNNERs ...");

        if (MyGameConfig.guild.enabled)
        {
            MyLog.Verbose("Add {0}", requestGuild.GetType().FullName);
            RUNNER.Add(requestGuild);

            if (MyGameConfig.guild.accept)
            {
                MyLog.Verbose("Add {0}", acceptMember.GetType().FullName);
                RUNNER.Add(acceptMember);
            }

            if (MyGameConfig.guild.achieveMissions)
            {
                MyLog.Verbose("Add {0}", achieveMission.GetType().FullName);
                RUNNER.Add(achieveMission);
            }
        }

        if (MyGameConfig.reward.enabled)
        {
            MyLog.Verbose("Add {0}", claimReword.GetType().FullName);
            RUNNER.Add(claimReword);
        }

        if (MyGameConfig.user.acceptFriend)
        {
            MyLog.Verbose("Add {0}", acceptFriend.GetType().FullName);
            RUNNER.Add(acceptFriend);
        }

        if (MyGameConfig.sell.enabled)
        {
            MyLog.Verbose("Add {0}", sellCard.GetType().FullName);
            RUNNER.Add(sellCard);
        }

        if (MyGameConfig.merge.enabled)
        {
            MyLog.Verbose("Add {0}", mergeCard.GetType().FullName);
            RUNNER.Add(mergeCard);
        }

        if (MyGameConfig.floor.enabled)
        {
            MyLog.Verbose("Add {0}", completeFloor.GetType().FullName);
            RUNNER.Add(completeFloor);
        }

        MyLog.Info("{0} RUNNER(s) has been loaded !!", RUNNER.Count);
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

        EndTime = DateTime.Now;
        ShowReport();
    }

    private static void PromptRegister()
    {
        if (!Game.localUserExists && MyGameConfig.register.enabled)
        {
            Timer.Create(1000, delegate(bool timeout)
            {
                MyDialog.Confirm(
                    "是否要自動註冊新帳號？\n" + SystemInformation.LocalKey,
                    delegate
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
        if (RUNNER.Count > 0)
        {
            Timer.Create(1000, delegate(bool timeout)
            {
                MyDialog.Confirm(
                    "是否要啟動自動化程序？",
                    delegate
                    {
                        ViewController.SwitchView(ViewIndex.WORLDMAP_WORLD_MAP);
                        BeginTime = DateTime.Now;
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
        reportBuilder.AppendFormat("開始 {0:yyyy-MM-dd HH:mm:ss}\n", BeginTime);
        reportBuilder.AppendFormat("結束 {0:yyyy-MM-dd HH:mm:ss}\n", EndTime);
        TimeSpan duration = EndTime - BeginTime;
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

        if (MyGameConfig.user.enabled)
        {
            if (MyGameConfig.user.teamSize > 0 && userInfo.user != null)
            {
                MyLog.Verbose("隊伍空間 [{0}] 改成 [{1}]", userInfo.user.teamSize, MyGameConfig.user.teamSize);
                userInfo.user.teamSize = MyGameConfig.user.teamSize;
            }

            if (MyGameConfig.user.reveal && userInfo.user != null)
            {
                userInfo.user.completedFloorIds = Game.database.floors.Keys.ToArray();
                userInfo.user.completedStageIds = Game.database.stages.Keys.ToArray();
                MyLog.Verbose("玩家視野已全部打開");
            }
        }

        if (MyGameConfig.card.enabled && userInfo.cards != null)
        {
            if (MyGameConfig.card.desires.Length > 0)
            {
                var newCardList = new List<GameJSON.Card>();
                var desireSettings = (MyGameConfig.Card.CardItem[])MyGameConfig.card.desires.Clone();
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

                        MyLog.Verbose("背包卡片抽換：[#{0}{1}] > [#{2}{3}], 卡片等級 [{4}] > [{5}], 技能等級 [{6}] > [{7}]",
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
        }

        Game.SetUser(userInfo, restore);

        if (MyGameConfig.user.enabled)
        {
            if (Game.tutorialMode && !MyGameConfig.user.tutorial)
            {
                while (Game.tutorialMode)
                    TutorialController.Continue();

                MyLog.Verbose("已跳過新手導覽");
            }
        }

        MyLog.Debug("<< - {0}.SetUser", typeof(MyGame).Name);
    }

    public static List<Helper> GetHelperList(string[] helpers)
    {
        List<Helper> result = Game.GetHelperList(helpers);

        if (MyGameConfig.card.enabled)
        {
            for (int i = 0; i < result.Count && i < MyGameConfig.card.helpers.Length; i++)
            {
                var x = result[i].helperCard;
                var desireInfo = MyGameConfig.card.helpers[i];
                var y = new Card(desireInfo.monsterId, desireInfo.monsterLv, desireInfo.skillLv);

                result[i].helperCard = y;

                MyLog.Verbose("好友卡片抽換：[#{0}{1}] > [#{2}{3}], 卡片等級 [{4}] > [{5}], 技能等級 [{6}] > [{7}]", x.monsterId, x.name, y.monsterId, y.name, x.level, y.level, x.skillLevel, y.skillLevel);
            }
        }

        return result;
    }
}