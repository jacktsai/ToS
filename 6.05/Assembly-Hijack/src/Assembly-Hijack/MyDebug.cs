using System;
using System.Collections.Generic;
using JsonFx.Json;
using UnityEngine;

namespace AssemblyHijack
{
    internal class MyDebug
    {
        public static void Log(string format, params object[] args)
        {
            Debug.Log(String.Format(format, args));
        }

        public static void Log(object o)
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

                Debug.Log(new String(charBuffer.ToArray()));
                packageIndex++;
                charBuffer.Clear();
            }
        }
    }
}