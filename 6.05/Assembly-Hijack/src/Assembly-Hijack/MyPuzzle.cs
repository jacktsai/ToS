using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

public class MyPuzzle
{
    public static ChangeDropChanceObject ActivateChangeDropChanceSkill(VoidDelegateRefIntArrayInt activateDelegate, VoidDelegateRefIntArrayInt deactivateDelegate, int priority)
    {
        MyLog.Debug(">> - {0}.ActivateChangeDropChanceSkill", typeof(MyPuzzle).Name);

        var result = Puzzle.ActivateChangeDropChanceSkill(activateDelegate, deactivateDelegate, priority);

        if (MyGame.config.puzzle.elements.Length > 0)
        {
            Puzzle.protectedData.canOnlyHaveThisElement.Set(MyGame.config.puzzle.elements);
            MyLog.Info("已設定限定珠");
        }

        MyLog.Debug("<< - {0}.ActivateChangeDropChanceSkill", typeof(MyPuzzle).Name);

        return result;
    }

    public static void DeActivateChangeDropChanceSkill(ChangeDropChanceObject changeDropChanceObject_in)
    {
        MyLog.Debug(">> - {0}.DeActivateChangeDropChanceSkill", typeof(MyPuzzle).Name);

        Puzzle.DeActivateChangeDropChanceSkill(changeDropChanceObject_in);

        if (MyGame.config.puzzle.elements.Length > 0)
        {
            Puzzle.protectedData.canOnlyHaveThisElement.Set(MyGame.config.puzzle.elements);
            MyLog.Info("已設定限定珠");
        }

        MyLog.Debug("<< - {0}.DeActivateChangeDropChanceSkill", typeof(MyPuzzle).Name);
    }
}