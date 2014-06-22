using GameJSON;
using JsonFx.Json;
using Microsoft.VisualStudio.TestTools.UnitTesting;
using System.IO;
using System.Linq;

namespace AssemblyHijack.Automation
{
    [TestClass]
    public class MergeCardTest
    {
        [TestMethod]
        public void TestMethod1()
        {
            GameJSON.Login login;
            using (var reader = new StreamReader("1403319111.txt"))
            {
                string json = reader.ReadToEnd();
                login = JsonReader.Deserialize<GameJSON.Login>(json);
            }

            Game.SetData(login.data);

            Card card = login.cards
                .Select((s) =>
                {
                    GameJSON.Card c = ObjectParser.ParseCard(s);
                    return new Card(c);
                })
                .First(o => o.cardId == 434);
        }
    }
}