using JsonFx.Json;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using UnityEngine;

public class MyRestoreGameplay
{
    public static void StartGame()
    {
        MyLog.Debug(">> - {0}.StartGame", typeof(MyRestoreGameplay).Name);

        RestoreGameplay.StartGame();
        MyPuzzle.SetupCustomSettings();

        MyLog.Debug("*** currentWaveIndex [{0}] maxAttack [{1:#,0}] maxCombo [{2}]***", Game.runtimeData.currentWaveIndex, Game.runtimeData.maxAttack, Game.runtimeData.maxCombo);

        MyLog.Debug("<< - {0}.StartGame", typeof(MyRestoreGameplay).Name);
    }

    public static void End(bool isWin = true, bool isGiveUp = false, bool callGameMenu = true)
    {
        MyLog.Debug(">> - {0}.End", typeof(MyRestoreGameplay).Name);

        if (!isWin && MyGame.config.labyrinth.alwaysWin)
        {
            MyLog.Verbose("輸了？沒關係！看我的大絕「去去閃」，所有敵人已經閃了！");
            try
            {
                while (Game.getInstance().MoveToNextWave())
                    ;
            }
            catch (Exception ex)
            {
                MyLog.Error(ex.ToString());
            }

            isWin = true;
            isGiveUp = false;
            MyLog.Info("已強制將輸局轉成贏局");
        }

        RestoreGameplay.End(isWin, isGiveUp, callGameMenu);
        MyLog.Debug("*** currentWaveIndex [{0}] maxAttack [{1:#,0}] maxCombo [{2}]***", Game.runtimeData.currentWaveIndex, Game.runtimeData.maxAttack, Game.runtimeData.maxCombo);
        MyLog.Debug("ACSJson: {0}", GetACSJson());

        MyLog.Debug("<< - {0}.End", typeof(MyRestoreGameplay).Name);
    }

    public static string GetACSJson()
    {
        return JsonWriter.Serialize(new Dictionary<string, object>
	    {
            // 以三封 [76] 6 波關卡為例，每波皆一個 round 即解決所有怪，怪物沒有機會攻擊

            // 玩家隊伍資料，原則來說，以下兩個欄位完全相同
		    {"currentTeamData",Game.runtimeData.currentTeamData}, // "5|202|1402|442|3161|12|99|2|75|10|12|4,27|204|1499|392|3326|12|99|4|76|10|12|4,61|206|1291|412|3655|12|99|6|77|10|12|4,73|208|1305|453|3293|12|99|8|78|10|12|4,65|210|1540|409|3096|12|99|10|79|10|12|4,100026|202|1402|442|3161|12|99|2|75|10|12|4"
            // 遊戲進行時隊伍資料
		    {"currentGamePlayTeamData",Game.runtimeData.currentGamePlayTeamData}, // "5|202|1402|442|3161|12|99|2|75|10|12|4,27|204|1499|392|3326|12|99|4|76|10|12|4,61|206|1291|412|3655|12|99|6|77|10|12|4,73|208|1305|453|3293|12|99|8|78|10|12|4,65|210|1540|409|3096|12|99|10|79|10|12|4,100026|202|1402|442|3161|12|99|2|75|10|12|4"
            // 隊伍成員數量 (含helper)
		    {"monsterNum",Game.runtimeData.monsterNum}, // 6
             // 玩家隊伍總攻擊
		    {"maxUserAttackSumPerWave",Lib.ToString(Game.runtimeData.maxUserAttackSumPerWave)}, // "9519,9519,9519,9519,9519,9519,"

            // 遊戲進行時間 (秒)
		    {"gameplayTime",Game.runtimeData.gameplayTime}, // 371.04834 秒

            // 以下三個是關卡波數
		    {"currentWaveIndex",Game.runtimeData.currentWaveIndex}, // 6
		    {"waveMovedTime",Game.runtimeData.waveMovedTime}, // 6
		    {"numOfwave",Game.runtimeData.numOfwave}, // 6

		    {"maxAttack",Game.runtimeData.maxAttack}, // 68,1554
		    {"maxCombo",Game.runtimeData.maxCombo}, // 10
		    {"eatGemRound",Game.runtimeData.eatGemRound}, // 7 (因為王會變身，所以多打一回)

            // 最小血量
		    {"minHP",Game.runtimeData.minHP}, // 19,692 (隊伍成員總血量)
            // 最大血量
		    {"maxHP",Game.runtimeData.maxHP}, // 19,692 (隊伍成員總血量)
            // 每一波玩家的最低血量
		    {"minPlayerHPPerWave",Lib.ToString(Game.runtimeData.minPlayerHPPerWave)}, // "19692,19692,19692,19692,19692,19692,"

            // 最小承受傷害
		    {"minDamageTaken",Game.runtimeData.minDamageTaken}, // 0
            // 最大承受傷害
		    {"maxDamageTaken",Game.runtimeData.maxDamageTaken}, // 0
            // 玩家傷害承受總量
		    {"totalDamageTaken",Game.runtimeData.totalDamageTaken}, // 0
            // 心珠最大產生的回血量
		    {"maxRecoverHP",Game.runtimeData.maxRecoverHP}, // 10,237
            // 心珠最小產生的回血量
		    {"minRecoverHP",Game.runtimeData.minRecoverHP}, // 5,460
            // 總回血量，即心珠產生的回血量
		    {"totalRecoverHP",Game.runtimeData.totalRecoverHP}, // 23,887
            // 每一波玩家承受的傷害量
		    {"maxDamageTakenPerWave",Lib.ToString(Game.runtimeData.maxDamageTakenPerWave)}, // "0,0,0,0,0,0,"

            // 每一波玩家的最大 combo
		    {"maxComboPerWave",Lib.ToString(Game.runtimeData.maxComboPerWave)}, // "3,5,5,10,9,7,"
            // 每一波玩家打出的最大攻擊
		    {"maxPlayerAttackPerWave",Lib.ToString(Game.runtimeData.maxPlayerAttackPerWave)}, // "31440,1086550,1520685,4639483,5952547,601189,"
            // 打王時，打出的最大攻擊
		    {"maxAttackPerRoundDuringBossWave",Game.runtimeData.maxAttackPerRoundDuringBossWave}, // 601189

            // 玩家最大攻擊時的 combo 數
		    {"maxComboCorrespondToMaxPlayerAttack",Game.runtimeData.maxComboCorrespondToMaxPlayerAttack}, // 9
            // 玩家移動珠盤的回合數，一次 end whole round 算一回合
		    {"sumMoveGemRoundPerWave",Lib.ToString(Game.runtimeData.sumMoveGemRoundPerWave)}, // "1,1,1,1,1,2,"
            // 玩家每波技能使用總數
		    {"SkillUsedTime",Game.runtimeData.SkillUsedTime}, // "0,0,0,0,0,0"
            // 玩家每波技能使用次數
		    {"skillUsedPerWave",Game.runtimeData.skillUsedPerWave},// "0|0|0|0|0|0,0|0|0|0|0|0,0|0|0|0|0|0,0|0|0|0|0|0,0|0|0|0|0|0,0|0|0|0|0|0,"

            // enemy 攻擊總次數
		    {"monsterAttackTime",Game.runtimeData.monsterAttackTime}, // 0
            // enemy 每波承受傷害總量，原則上以下兩者相同
            {"enemyDamageTakenPerWave",Lib.ToString(Game.runtimeData.enemyDamageTakenPerWave)}, // "8184,11965,16990,15746,19587,23954,"
            // enemy 每波的 hp 總量
		    {"sumEnemyHPPerWave",Lib.ToString(Game.runtimeData.sumEnemyHPPerWave)}, // "8184,11965,16990,15746,19587,21286,"
            // enemy 的 attack 總量
            {"sumEnemyAttackPerWave",Lib.ToString(Game.runtimeData.sumEnemyAttackPerWave)}, // "1475,2437,2501,3399,8654,1022,"
            // enemy 的 defence 總量
		    {"sumEnemyDefencePerWave",Lib.ToString(Game.runtimeData.sumEnemyDefencePerWave)}, // "22,41,28,60,469,10,"
            // enemy 的 cd 總量
		    {"sumEnemyCDPerWave",Lib.ToString(Game.runtimeData.sumEnemyCDPerWave)}, // "4,6,8,8,13,1,"
            // enemy 每一波攻擊次數
		    {"enemyAttackCountPerWave",Lib.ToString(Game.runtimeData.enemyAttackCountPerWave)}, // "0,0,0,0,0,0,"
            // enemy 的最大攻擊，可以都帶 0
		    {"maxEnemyAttackPerWave",Lib.ToString(Game.runtimeData.maxEnemyAttackPerWave)}, // "0,0,0,0,0,0,"

            // 以下不理
		    {"dieTime",Game.runtimeData.dieTime}, // 0
		    {"retryTime",Game.runtimeData.retryTime}, // 0
		    {"gamePlayError",Game.runtimeData.gamePlayError}, // 0
		    {"restoreCount",Game.runtimeData.restoreCount}, // 0
		    {"startMoveGemPosX",Game.runtimeData.startMoveGemPosX}, // null
		    {"startMoveGemPosY",Game.runtimeData.startMoveGemPosY}, // nul
		    {"endMoveGemPosX",Game.runtimeData.endMoveGemPosX}, // null
		    {"endMoveGemPosY",Game.runtimeData.endMoveGemPosY}, // null
		    {"numOfStraightLineMoveGem",Game.runtimeData.numOfStraightLineMoveGem}, // 0
		    {"numOfEqualPointMoveGem",Game.runtimeData.numOfEqualPointMoveGem} // 0
	    });
    }
}