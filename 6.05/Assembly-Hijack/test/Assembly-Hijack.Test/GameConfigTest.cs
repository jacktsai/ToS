using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Text;
using Microsoft.VisualStudio.TestTools.UnitTesting;

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

                Assert.AreEqual(5, config.user.inventory.desires.Length);
                GameConfig.Card card = config.user.inventory.desires[0];
                Assert.AreEqual(4, card.refineLv);
            }
        }
    }
}