using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

public class MyIMPlayerPrefManager
{
    public static int GetInt(string key, int defaultValue = 0)
    {
        int result = IMPlayerPrefManager.GetInt(key, defaultValue);

        if (MyGameConfig.user.enabled)
        {
            if (key.Equals("MH_GAME_TUTORIAL_CURRENT_STEP") && result <= 45 && !MyGameConfig.user.tutorial)
            {
                MyLog.Verbose("跳過導覽模式");
                result = 46;
            }
        }

        return result;
    }

    public static void SetInt(string key, int val)
    {
        IMPlayerPrefManager.SetInt(key, val);
    }
}
