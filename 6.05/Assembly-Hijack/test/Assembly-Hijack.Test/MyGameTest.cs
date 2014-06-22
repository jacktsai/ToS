using Microsoft.VisualStudio.TestTools.UnitTesting;
using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Linq;
using System.Text;

[TestClass]
public class MyGameTest
{
    public TestContext TestContext { get; set; }

    [TestMethod]
    public void MyTestMethod()
    {
        StringBuilder reportBuilder = new StringBuilder();
        var s = DateTime.Now.AddSeconds(242342341) - DateTime.Now;
        reportBuilder.AppendFormat("費時 {0}天{1}時{2}分{3}秒\n", s.Days, s.Hours, s.Minutes, s.Seconds);

        TestContext.WriteLine(reportBuilder.ToString());
    }
}