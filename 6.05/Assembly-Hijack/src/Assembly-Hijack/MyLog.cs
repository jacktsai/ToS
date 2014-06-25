using System;
using System.Collections.Generic;
using JsonFx.Json;
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
        NA,
    }

    private static Level level;

    static MyLog()
    {
        level = (Level)Enum.Parse(typeof(Level), MyGame.config.log.level, true);
    }

    public static void Verbose(string format, params object[] args)
    {
        if (level > Level.Verbose)
            return;

        string message = format;
        if (args.Length > 0)
            message = String.Format(format, args);

        Log(message);
    }

    public static void Debug(string format, params object[] args)
    {
        if (level > Level.Debug)
            return;

        string message = format;
        if (args.Length > 0)
            message = String.Format(format, args);

        Log(message);
    }

    public static void Info(string format, params object[] args)
    {
        if (level > Level.Info)
            return;

        string message = format;
        if (args.Length > 0)
            message = String.Format(format, args);

        Log(message);
    }

    public static void Error(string format, params object[] args)
    {
        if (level > Level.Error)
            return;

        string message = format;
        if (args.Length > 0)
            message = String.Format(format, args);

        UnityEngine.Debug.LogError(message);
    }

    public static void Debug(object o)
    {
        if (level > Level.Debug)
            return;

        string json = JsonWriter.Serialize(o);
        Log(json);
    }

    /// <summary>
    /// 每行有長度限制，所以會拆每行最多800個字。
    /// </summary>
    /// <param name="message"></param>
    private static void Log(string message)
    {
        char[] chars = message.ToCharArray();
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

            UnityEngine.Debug.Log(new String(charBuffer.ToArray()));
            packageIndex++;
            charBuffer.Clear();
        }
    }
}