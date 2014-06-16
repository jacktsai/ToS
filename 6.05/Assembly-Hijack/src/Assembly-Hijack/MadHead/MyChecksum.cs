using UnityEngine;

namespace MadHead
{
    public class MyChecksum
    {
        public static string GetHash(string input, string salt = "")
        {
            Debug.Log("input=" + input);
            string hash = Checksum.GetHash(input, salt);
            Debug.Log("hash=" + hash);

            return hash;
        }
    }
}