public class MySkillInstance
{
    public static void EndWholeRoundEvent()
    {
        MyLog.Debug(">> - {0}.EndWholeRoundEvent", typeof(MySkillInstance).Name);

        SkillInstance.EndWholeRoundEvent();

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

        MyLog.Debug("<< - {0}.EndWholeRoundEvent", typeof(MySkillInstance).Name);
    }
}