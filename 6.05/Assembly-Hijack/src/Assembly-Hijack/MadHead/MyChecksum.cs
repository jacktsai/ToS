using UnityEngine;

namespace MadHead
{
    public class MyChecksum
    {
        public static string GetHash(string input, string salt = "")
        {
            string hash = Checksum.GetHash(input, salt);

            return hash;
        }
    }
}