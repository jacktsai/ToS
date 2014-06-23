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
        Puzzle.AddChangePuzzleTimeFunc(ChangePuzzleTimeFunc, int.MinValue);

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
                while (Game.instance.MoveToNextWave())
                    ;
            }
            catch (Exception ex)
            {
                MyLog.Error(ex.ToString());
            }

            isWin = true;
            isGiveUp = false;
        }

        RestoreGameplay.End(isWin, isGiveUp, callGameMenu);
        Puzzle.RemoveChangePuzzleTimeFunc(ChangePuzzleTimeFunc);

        MyLog.Debug("<< - {0}.End", typeof(MyRestoreGameplay).Name);
    }

    private static void ChangePuzzleTimeFunc()
    {
        if (MyGame.config.puzzle.countDown > 0)
        {
            Puzzle.protectedData.timeBarCountDownTime = MyGame.config.puzzle.countDown;
            MyLog.Info("已設定轉珠時間為 {0:#,0} 秒", MyGame.config.puzzle.countDown);
        }

        if (MyGame.config.puzzle.elements.Length > 0)
        {
            Puzzle.protectedData.canOnlyHaveThisElement.Set(MyGame.config.puzzle.elements);
            MyLog.Info("已設定珠色的機率");
        }
    }
}