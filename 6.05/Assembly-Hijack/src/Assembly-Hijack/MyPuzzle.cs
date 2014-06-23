using System;
using System.Diagnostics;
using System.Linq;
using System.Reflection;
using System.Text;

public class MyPuzzle
{
    public static void GetCanOnlyDropElement()
    {
        MyLog.Debug(">> - {0}.GetCanOnlyDropElement", typeof(MyPuzzle).Name);

        if (MyGame.config.puzzle.elements.Length > 0)
        {
            Puzzle.protectedData.canOnlyHaveThisElement.Set(MyGame.config.puzzle.elements);

            var s = String.Join(",", MyGame.config.puzzle.elements.Select(e => e.ToString()).ToArray());
            MyLog.Info("已設定限定珠為 [{0}]", s);
        }
        else
        {
            Puzzle.GetCanOnlyDropElement();
        }

        MyLog.Debug("<< - {0}.GetCanOnlyDropElement", typeof(MyPuzzle).Name);
    }
}