using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Linq;
using System.Text;
using Microsoft.VisualStudio.TestTools.UnitTesting;

namespace MadHead
{
    [TestClass]
    public class ChecksumTest
    {
        [TestMethod]
        public void GetHashTest()
        {
            //string path = "user/login";
            //Dictionary<string, object> dict = new Dictionary<string, object>();
            //dict.Add("type", "device");
            //dict.Add("uniqueKey", "d93322721b4ba0d61a0010f7c9a0042c");
            //dict.Add("deviceKey", "5284047f4ffb4e04824a2fd1d1f0cd62");
            //dict.Add("sysInfo", "Android OS 4.4.2 / API-19 (KOT49I.D80220c/D80220c.1400599432):ARMv7 VFPv3 NEON:4:1853:195:Adreno (TM) 330:FALSE:OpenGL ES 3.0 V@66.0 AU@ (CL@):Full:FALSE:4096:6.05:::");
            //dict.Add("session", "b4b95f02f2de7705755777d15ec82f76");
            //dict.Add("idfv", string.Empty);
            //dict.Add("mac", string.Empty);
            //dict.Add("geoData", "25.05917,121.612");
            //dict.Add("language", "zh_TW");
            //dict.Add("platform", "android");
            //dict.Add("version", "6.05");
            //dict.Add("timestamp", "1402888308");
            //dict.Add("timezone", 8);
            //dict.Add("nData", "033b79dd67c6774ac072bb99cbced67d");
            //dict.Add("iay", "42dbeab");
            //string input = "/api/" + path + URLBuilder.BuildQuery(dict, true);
            //string input = "/api/user/login?type=device&uniqueKey=d93322721b4ba0d61a0010f7c9a0042c&deviceKey=5284047f4ffb4e04824a2fd1d1f0cd62&sysInfo=Android+OS+4.4.2+%2f+API-19+(KOT49I.D80220c%2fD80220c.1400599432)%7cARMv7+VFPv3+NEON%7c4%7c1853%7c195%7cAdreno+(TM)+330%7cFALSE%7cOpenGL+ES+3.0+V%4066.0+AU%40++(CL%40)%7cFull%7cFALSE%7c4096%7c6.05%7c%7c%7c&session=b4b95f02f2de7705755777d15ec82f76&idfv=&mac=&geoData=25.05917%2c121.612&language=zh_TW&platform=android&version=6.05&timestamp=1402888308&timezone=8&nData=033b79dd67c6774ac072bb99cbced67d&iay=42dbeab";
            string input = "/api/user/login?type=device&uniqueKey=d93322721b4ba0d61a0010f7c9a0042c&deviceKey=5284047f4ffb4e04824a2fd1d1f0cd62&sysInfo=Android+OS+4.4.2+%2f+API-19+(KOT49I.D80220c%2fD80220c.1400599432)%7cARMv7+VFPv3+NEON%7c4%7c1853%7c195%7cAdreno+(TM)+330%7cFALSE%7cOpenGL+ES+3.0+V%4066.0+AU%40++(CL%40)%7cFull%7cFALSE%7c4096%7c6.05%7c%7c%7c&session=b4b95f02f2de77050e5db5b4b58c1845&idfv=&mac=&geoData=25.05917%2c121.612&language=zh_TW&platform=android&version=6.05&timestamp=1402898230&timezone=8&nData=580e2188624d04176eb3e46b34500b0a";
            Debug.WriteLine(input);
            string hash = Checksum.GetHash(input, string.Empty);
            Debug.WriteLine("Hash = " + hash); //87f70d87c908ed1a8e18a1a1148269f5
        }
    }
}