using System;
using System.Collections.Generic;
using JsonFx.Json;
using UnityEngine;

internal class MyLog
{
    public static void Debug(string format, params object[] args)
    {
        UnityEngine.Debug.Log(String.Format(format, args));
    }

    /// <summary>
    /// 將物件序列化輸出到 catlog，但是每行有長度限制，所以會拆每行最多800個字。
    /// </summary>
    /// <param name="o"></param>
    public static void Debug(object o)
    {
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

            UnityEngine.Debug.Log(new String(charBuffer.ToArray()));
            packageIndex++;
            charBuffer.Clear();
        }
    }
}