using JsonFx.Json;
using System;
using System.Collections.Generic;
using UnityEngine;

internal class MyLog
{
    private enum Level
    {
        Verbose,
        Debug,
        Info,
        Warn,
        Error,
        Assert,
    }

    private static bool enabled;
    private static Level level;

    static MyLog()
    {
        enabled = MyGameConfig.log.enabled;
        level = (Level)Enum.Parse(typeof(Level), MyGameConfig.log.level, true);
    }

    public static void Verbose(string format, params object[] args)
    {
        string message = format;
        if (args.Length > 0)
            message = String.Format(format, args);

        if (Level.Verbose >= level)
            UnityEngine.Debug.Log(message);
    }

    public static void Debug(string format, params object[] args)
    {
        string message = format;
        if (args.Length > 0)
            message = String.Format(format, args);

        if (Level.Debug >= level)
            UnityEngine.Debug.Log(message);
    }

    public static void Info(string format, params object[] args)
    {
        string message = format;
        if (args.Length > 0)
            message = String.Format(format, args);

        if (Level.Info >= level)
            UnityEngine.Debug.Log(message);
    }

    /// <summary>
    /// 將物件序列化輸出到 catlog，但是每行有長度限制，所以會拆每行最多800個字。
    /// </summary>
    /// <param name="o"></param>
    public static void Debug(object o)
    {
        if (Level.Debug < level)
            return;

        string json = JsonWriter.Serialize(o);
        char[] chars = json.ToCharArray();
        int packageIndex = 0;

        while (true)
        {
            var charBuffer = new List<char>(800);
            int baseIndex = packageIndex * charBuffer.Capacity;
            for (int i = 0; i < charBuffer.Capacity && baseIndex + i < chars.Length; i++)
            {
                charBuffer.Add(chars[baseIndex + i]);
            }

            if (charBuffer.Count < 1)
                break;

            Debug(new String(charBuffer.ToArray()));
            packageIndex++;
            charBuffer.Clear();
        }
    }
}