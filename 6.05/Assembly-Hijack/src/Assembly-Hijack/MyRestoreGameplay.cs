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

        if (MyGame.config.puzzle.time > 0)
        {
            Puzzle.protectedData.timeBarCountDownTime = MyGame.config.puzzle.time;
            MyLog.Info("已設定轉珠時間為 [{0}] 秒", MyGame.config.puzzle.time);
        }

        if (MyGame.config.puzzle.comboMultiplier > 0)
        {
            Puzzle.protectedData.comboDamageMultiplier = MyGame.config.puzzle.comboMultiplier;
            MyLog.Info("已設定 COMBO 傷害為 [{0}] 倍", MyGame.config.puzzle.comboMultiplier);
        }

        Puzzle.protectedData.comboDamageMultiplier = 1;

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

        MyLog.Debug("<< - {0}.End", typeof(MyRestoreGameplay).Name);
    }
}