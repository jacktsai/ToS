using System;
using System.Linq;

namespace WinForm
{
    internal class MParser
    {
        public static string ParseToString(ref string str, string defaultValue)
        {
            if (string.IsNullOrEmpty(str))
            {
                return defaultValue;
            }
            return str;
        }

        public static int ParseToInt(ref string str, int defaultValue)
        {
            if (string.IsNullOrEmpty(str))
            {
                return defaultValue;
            }
            int result;
            if (int.TryParse(str, out result))
            {
                return result;
            }
            throw new ArgumentException("Unable parse [" + str + "] toInt");
        }

        public static float ParseToFloat(ref string str, float defaultValue)
        {
            if (string.IsNullOrEmpty(str))
            {
                return defaultValue;
            }
            float result;
            if (float.TryParse(str, out result))
            {
                return result;
            }
            throw new ArgumentException("Unable parse [" + str + "] toFloat");
        }

        public static bool ParseToBool(ref string str, bool defaultValue)
        {
            if (string.IsNullOrEmpty(str))
            {
                return defaultValue;
            }
            if (str.Equals("1"))
            {
                return true;
            }
            if (str.Equals("0"))
            {
                return false;
            }
            bool result;
            if (bool.TryParse(str, out result))
            {
                return result;
            }
            throw new ArgumentException("Unable parse [" + str + "] toBool");
        }

        public static string[] ParseToStringArray(ref string str, char separator, string[] defaultValue)
        {
            if (string.IsNullOrEmpty(str))
            {
                return defaultValue;
            }
            return str.Split(new char[]
		{
			separator
		});
        }

        public static int[] ParseToIntArray(ref string str, char separator, int[] defaultValue)
        {
            int[] array = (
                from val in MParser.ParseToStringArray(ref str, separator, new string[0])
                select MParser.ParseToInt(ref val, 0)).ToArray<int>();
            if (array.Length == 0)
            {
                return defaultValue;
            }
            return array;
        }

        public static float[] ParseToFloatArray(ref string str, char separator, float[] defaultValue)
        {
            float[] array = (
                from val in MParser.ParseToStringArray(ref str, separator, new string[0])
                select MParser.ParseToFloat(ref val, 0f)).ToArray<float>();
            if (array.Length == 0)
            {
                return defaultValue;
            }
            return array;
        }

        public static bool[] ParseToBoolArray(ref string str, char separator, bool[] defaultValue)
        {
            bool[] array = (
                from val in MParser.ParseToStringArray(ref str, separator, new string[0])
                select MParser.ParseToBool(ref val, false)).ToArray<bool>();
            if (array.Length == 0)
            {
                return defaultValue;
            }
            return array;
        }

        public static string ArrayItemParseToString(ref string[] serializedList, int index, string defaultValue)
        {
            if (index >= serializedList.Length)
            {
                return defaultValue;
            }
            return MParser.ParseToString(ref serializedList[index], defaultValue);
        }

        public static int ArrayItemParseToInt(ref string[] serializedList, int index, int defaultValue)
        {
            if (index >= serializedList.Length)
            {
                return defaultValue;
            }
            return MParser.ParseToInt(ref serializedList[index], defaultValue);
        }

        public static float ArrayItemParseToFloat(ref string[] serializedList, int index, float defaultValue)
        {
            if (index >= serializedList.Length)
            {
                return defaultValue;
            }
            return MParser.ParseToFloat(ref serializedList[index], defaultValue);
        }

        public static bool ArrayItemParseToBool(ref string[] serializedList, int index, bool defaultValue)
        {
            if (index >= serializedList.Length)
            {
                return defaultValue;
            }
            return MParser.ParseToBool(ref serializedList[index], defaultValue);
        }

        public static T ArrayItemParseToEnum<T>(ref string[] serializedList, int index, T defaultValue)
        {
            return (T)((object)Enum.Parse(typeof(T), MParser.ArrayItemParseToString(ref serializedList, index, defaultValue.ToString())));
        }

        public static string[] ArrayItemParseToStringArray(ref string[] serializedList, int index, char separator, string[] defaultValue)
        {
            if (index >= serializedList.Length)
            {
                return defaultValue;
            }
            return MParser.ParseToStringArray(ref serializedList[index], separator, defaultValue);
        }

        public static int[] ArrayItemParseToIntArray(ref string[] serializedList, int index, char separator, int[] defaultValue)
        {
            if (index >= serializedList.Length)
            {
                return defaultValue;
            }
            return MParser.ParseToIntArray(ref serializedList[index], separator, defaultValue);
        }

        public static float[] ArrayItemParseToFloatArray(ref string[] serializedList, int index, char separator, float[] defaultValue)
        {
            if (index >= serializedList.Length)
            {
                return defaultValue;
            }
            return MParser.ParseToFloatArray(ref serializedList[index], separator, defaultValue);
        }

        public static bool[] ArrayItemParseToBoolArray(ref string[] serializedList, int index, char separator, bool[] defaultValue)
        {
            if (index >= serializedList.Length)
            {
                return defaultValue;
            }
            return MParser.ParseToBoolArray(ref serializedList[index], separator, defaultValue);
        }
    }
}