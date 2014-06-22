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

        if (MyGameConfig.puzzle.enabled)
        {
            Puzzle.AddChangePuzzleTimeFunc(ChangePuzzleTimeFunc, int.MinValue);
        }

        MyLog.Debug("<< - {0}.StartGame", typeof(MyRestoreGameplay).Name);
    }

    public static void End(bool isWin = true, bool isGiveUp = false, bool callGameMenu = true)
    {
        MyLog.Debug(">> - {0}.End", typeof(MyRestoreGameplay).Name);

        if (MyGameConfig.labyrinth.enabled)
        {
            if (isWin == false)
            {
                MyLog.Verbose("輸了？沒關係！看我的大絕「去去閃」，所有敵人已經閃了！");
                while (Game.instance.MoveToNextWave())
                    ;

                isWin = true;
                isGiveUp = false;
            }
        }

        RestoreGameplay.End(isWin, isGiveUp, callGameMenu);

        if (MyGameConfig.puzzle.enabled)
        {
            Puzzle.RemoveChangePuzzleTimeFunc(ChangePuzzleTimeFunc);
        }

        MyLog.Debug("<< - {0}.End", typeof(MyRestoreGameplay).Name);
    }

    private static void ChangePuzzleTimeFunc()
    {
        Puzzle.protectedData.timeBarCountDownTime = MyGameConfig.puzzle.countDown;
        MyLog.Info("已設定轉珠時間為 {0:#,0} 秒", MyGameConfig.puzzle.countDown);

        Puzzle.protectedData.canOnlyHaveThisElement.Set(MyGameConfig.puzzle.elements);
        MyLog.Info("已設定珠色的機率");
    }
}