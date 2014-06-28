using AssemblyHijack.Automation;
using Microsoft.VisualStudio.TestTools.UnitTesting;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Text;

namespace AssemblyHijack
{
    [TestClass]
    public class GameConfigTest
    {
        [TestMethod]
        public void GameConfig_ReadConfigTest()
        {
            using (StreamReader configFile = new StreamReader("game_config.json"))
            {
                string allContent = configFile.ReadToEnd();
                var config = JsonFx.Json.JsonReader.Deserialize<GameConfig>(allContent);
            }
        }
    }
}