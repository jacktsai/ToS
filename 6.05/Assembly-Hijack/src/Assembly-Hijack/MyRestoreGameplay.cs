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
        MyLog.Debug("已設定轉珠時間為 {0:#,0} 秒", MyGameConfig.puzzle.countDown);

        Puzzle.protectedData.canOnlyHaveThisElement.Set(MyGameConfig.puzzle.elements);
        MyLog.Debug("已設定限定珠");
    }
}