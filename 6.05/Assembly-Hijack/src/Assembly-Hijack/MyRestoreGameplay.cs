using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

public class MyRestoreGameplay
{
    public static void StartGame()
    {
        MyLog.Debug(">> - {0}.StartGame", typeof(MyRestoreGameplay).Name);

        RestoreGameplay.StartGame();
        MyPuzzle.SetupCustomSettings();

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
        MyLog.Debug("ACSJson: {0}", Game.GetACSJson());

        MyLog.Debug("<< - {0}.End", typeof(MyRestoreGameplay).Name);
    }
}