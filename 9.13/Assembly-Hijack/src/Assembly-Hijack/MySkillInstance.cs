public class MySkillInstance
{
    public static void EndWholeRoundEvent()
    {
        MyLog.Debug(">> - {0}.EndWholeRoundEvent", typeof(MySkillInstance).Name);

        SkillInstance.EndWholeRoundEvent();
        MyPuzzle.SetupCustomSettings();

        MyLog.Debug("<< - {0}.EndWholeRoundEvent", typeof(MySkillInstance).Name);
    }
}