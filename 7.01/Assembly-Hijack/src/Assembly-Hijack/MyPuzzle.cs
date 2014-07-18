using System;
using System.Collections.Generic;
using System.Linq;

public class MyPuzzle
{
    public static void GetCanOnlyDropElement()
    {
        MyLog.Debug(">> - {0}.GetCanOnlyDropElement", typeof(MyPuzzle).Name);

        if (MyGame.config.puzzle.elements != null)
        {
            int[] elements;

            if (MyGame.config.puzzle.elements.Length != 0)
                elements = MyGame.config.puzzle.elements.Select(e => (int)e).ToArray();
            else
                elements = AddCurrentTeamElementsToCurrentChance();

            Puzzle.protectedData.canOnlyHaveThisElement.Set(elements);
            var s = String.Join(",", elements.Select(e => ((Element.ID)e).ToString()).ToArray());
            MyLog.Info("已設定限定珠為 [{0}]", s);
        }
        else
        {
            Puzzle.GetCanOnlyDropElement();
        }

        MyLog.Debug("<< - {0}.GetCanOnlyDropElement", typeof(MyPuzzle).Name);
    }

    public static void SetupCustomSettings()
    {
        if (MyGame.config.puzzle.timeout != 0)
        {
            Puzzle.protectedData.timeBarCountDownTime = MyGame.config.puzzle.timeout;
            MyLog.Info("已設定轉珠時間為 {0} 秒", MyGame.config.puzzle.timeout);
        }

        if (MyGame.config.puzzle.comboDamageMultiplier != 0)
        {
            Puzzle.protectedData.comboDamageMultiplier = MyGame.config.puzzle.comboDamageMultiplier;
            MyLog.Info("已設定 COMBO 傷害加乘為 {0} 倍", MyGame.config.puzzle.comboDamageMultiplier);
        }
    }

    private static int[] AddCurrentTeamElementsToCurrentChance()
    {
        var added = new List<int>();

        foreach (var card in Game.runtimeData.currentTeam.cards.Values)
        {
            if (card != null)
                added.Add((int)card.element);
        }

        if (Game.runtimeData.currentSelectedHelper != null)
        {
            added.Add((int)Game.runtimeData.currentSelectedHelper.helperCard.element);
        }

        MyLog.Debug("額外要增加的珠色有 [{0}]", String.Join(",", added.Select(e => ((Element.ID)e).ToString()).ToArray()));

        // 如果滿隊及正常珠：
        // 排列成 added[0] , org[0] , added[1] , org[1] , added[2] , org[2] , added[3] , org[3] , added[4] , org[4] , added[5]
        //
        int[] org = Puzzle.GetCanOnlyDropElementWithReturnValue();
        for (int i = 0; i < org.Length; i++)
        {
            int intentionIndex = 1 + i * 2;

            if (intentionIndex >= added.Count)
                added.Add(org[i]);
            else
                added.Insert(intentionIndex, org[i]);
        }

        return added.ToArray();
    }
}