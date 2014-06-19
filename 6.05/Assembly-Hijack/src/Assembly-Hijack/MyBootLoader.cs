using AssemblyHijack.Automation;

public class MyBootLoader : BootLoader
{
    public static void NormalFlow(BootLoader bootLoader)
    {
        bootLoader.NormalFlow();
    }

    public static void RestoreFlow(BootLoader bootLoader)
    {
        bootLoader.RestoreFlow();
    }
}