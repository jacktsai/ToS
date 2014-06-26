using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Text;
using UnityEngine;

public class GameConfig
{
    public Log log = new Log();
    public User user = new User();
    public Helper helper = new Helper();
    public Labyrinth labyrinth = new Labyrinth();
    public Puzzle puzzle = new Puzzle();

    public Registration registration = new Registration();
    public Automation automation = new Automation();

    public class Log
    {
        public string level = "NA";
    }

    public class User
    {
        /// <summary>
        /// 是否啟用導覽功能
        /// </summary>
        public bool tutorial = true;

        /// <summary>
        /// 自動申請加入的公會
        /// </summary>
        public int requestGuild = 0;

        /// <summary>
        /// 設定隊伍空間
        /// </summary>
        public int teamSize = 0;

        /// <summary>
        /// 設定可編隊數量 (1~10)
        /// </summary>
        public int teamRoom = 0;

        /// <summary>
        /// 設定是否使用神兵隊伍
        /// </summary>
        public bool teamEnabled = false;

        /// <summary>
        /// 第1組神兵隊
        /// </summary>
        public Card[] team0 = new Card[0];

        /// <summary>
        /// 第2組神兵隊
        /// </summary>
        public Card[] team1 = new Card[0];

        public Card[] team2 = new Card[0];
        public Card[] team3 = new Card[0];
        public Card[] team4 = new Card[0];
        public Card[] team5 = new Card[0];
        public Card[] team6 = new Card[0];
        public Card[] team7 = new Card[0];
        public Card[] team8 = new Card[0];
        public Card[] team9 = new Card[0];

        public Inventory inventory = new Inventory();

        public class Inventory
        {
            /// <summary>
            /// 設定是否使用百寶袋
            /// </summary>
            public bool enabled = false;

            /// <summary>
            /// 想要讓背包出現的卡型
            /// </summary>
            public Card[] desires = new Card[0];
        }
    }

    public class Helper
    {
        /// <summary>
        /// 想要讓好友出現的卡型
        /// </summary>
        public Card[] desires = new Card[0];
    }

    public class Card
    {
        /// <summary>
        /// 怪物編號
        /// </summary>
        public int monsterId = 0;

        /// <summary>
        /// 怪物等級
        /// </summary>
        public int monsterLv = 0;

        /// <summary>
        /// 技能等級
        /// </summary>
        public int skillLv = 0;

        /// <summary>
        /// 昇華等級
        /// </summary>
        public int refineLv = 0;
    }

    public class Labyrinth
    {
        /// <summary>
        /// 設定總是贏，當手動進行關卡失敗時，可以將失敗改成勝利，但是戰鬥記錄只到最後打的那波
        /// </summary>
        public bool alwaysWin = true;
    }

    public class Puzzle
    {
        /// <summary>
        /// 轉珠逾時時間(秒)，官方預設 5 秒，大於 1 時啟用，可無視其它影響
        /// </summary>
        public int timeout = 0;

        /// <summary>
        /// 指定掉珠機率，可覆蓋某些限珠關卡的設定
        /// </summary>
        public Element.ID[] elements = null;

        /// <summary>
        /// 指定 combo 傷害加成倍數，官方預設 0.25
        /// </summary>
        public float comboDamageMultiplier = 0;
    }

    public class Registration
    {
        /// <summary>
        /// 是否使用自動註冊新帳號
        /// </summary>
        public bool enabled = false;

        /// <summary>
        /// 註冊新帳號時選擇的伙夥，僅可使用水、火、木
        /// </summary>
        public Element.ID partner = Element.ID.FIRE;
    }

    public class Automation
    {
        /// <summary>
        /// 是否自動接受好友
        /// </summary>
        public bool acceptFriends = false;

        public Inventory inventory = new Inventory();
        public Reward reward = new Reward();
        public Guild guild = new Guild();
        public Floor floor = new Floor();
        public Recovery recovery = new Recovery();
        public Merge merge = new Merge();
        public Sell sell = new Sell();

        public class Inventory
        {
            /// <summary>
            /// 設定背包自動擴充到指定格數
            /// </summary>
            public int capacity = 0;
        }

        public class Reward
        {
            /// <summary>
            /// 每 period 秒更新一次獎賞清單
            /// </summary>
            public int period = 0;

            /// <summary>
            /// 自動領取獎賞別
            /// </summary>
            public global::Reward.Type[] types = new global::Reward.Type[0];
        }

        public class Guild
        {
            /// <summary>
            /// 是否使用自動接受公會成員申請
            /// </summary>
            public bool acceptMembers = false;

            /// <summary>
            /// 是否使用自動完成公會任務
            /// </summary>
            public bool achieveMissions = false;

            /// <summary>
            /// 公會捐獻保留金額，大於等於 0 才運作
            /// 高於此值的，都儘可能用於捐獻
            /// </summary>
            public int reserveCoin = -1;
        }

        public class Floor
        {
            /// <summary>
            /// 是否使用關卡自動化功能
            /// </summary>
            public bool enabled = false;

            /// <summary>
            /// 指定進行關卡編號
            /// </summary>
            public int[] floorIds = new int[0];

            /// <summary>
            /// 每關進行完是否對 helper 提出好友申請
            /// </summary>
            public bool requestFriend = false;

            /// <summary>
            /// 只打一回關卡就讓自動流程中斷，用於追察特定關卡所出現問題
            /// </summary>
            public bool oneShot = false;

            /// <summary>
            /// 當設定為 -1 時，server 不會因為關卡進行時間太短 (每波時間小於5秒) 而不接受關卡完成
            /// </summary>
            public int gamePlayError = 0;

            /// <summary>
            /// 設定關卡每波 Thread.Sleep 秒數，僅在 gamePlayerError = 0 時有效
            /// </summary>
            public int waveTime = 5;
        }

        /// <summary>
        /// 自動回復體力機制
        /// </summary>
        public class Recovery
        {
            /// <summary>
            /// 回復體力判斷的下限，低於此值時進行回復動作
            /// </summary>
            public int threshold = 0;

            /// <summary>
            /// 是否使用體力回復獎賞
            /// </summary>
            public bool reward = false;

            /// <summary>
            /// 是否使用魔法石回復
            /// </summary>
            public bool diamond = false;
        }

        public class Merge
        {
            /// <summary>
            /// 是否使用卡片自動強化功能，目前僅針對代表卡進行強化
            /// </summary>
            public bool enabled = false;

            /// <summary>
            /// 飼料卡名單
            /// </summary>
            public int[] sacrificers = new int[0];
        }

        public class Sell
        {
            /// <summary>
            /// 是否使用背包自動清理功能
            /// </summary>
            public bool enabled = false;

            /// <summary>
            /// 每種卡片保留數量
            /// </summary>
            public int reserveAmount = 1;

            /// <summary>
            /// 卡片出售判斷的最低稀有度，高於此設定的不列入出售範圍
            /// </summary>
            public Monster.RareType lowestRare = Monster.RareType.NONE;

            /// <summary>
            /// 列入出售的卡片，即使稀有程度大於 lowestRare
            /// </summary>
            public int[] includeMonsterIds = new int[0];

            /// <summary>
            /// 不列入出售的卡片
            /// </summary>
            public int[] excludeMonsterIds = new int[0];
        }
    }
}