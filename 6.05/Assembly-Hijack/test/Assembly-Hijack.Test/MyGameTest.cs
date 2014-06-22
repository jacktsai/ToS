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
        var BeginTime = DateTime.Now;
        var EndTime = BeginTime.AddDays(1);

        StringBuilder reportBuilder = new StringBuilder();
        reportBuilder.AppendFormat("開始 {0:yyyy-MM-dd HH:mm:ss}\n", BeginTime);
        reportBuilder.AppendFormat("結束 {0:yyyy-MM-dd HH:mm:ss}\n", EndTime);
        TimeSpan duration = EndTime - BeginTime;
        reportBuilder.AppendFormat("費時 {0}天{1}時{2}分{3}秒\n", duration.Days, duration.Hours, duration.Minutes, duration.Seconds);

        reportBuilder.AppendFormat("=== 地下城攻打成果 ===\n");
        reportBuilder.AppendFormat("[{1}] 通關 {2} 次\n", 123, "管治亡靈的冥神", 100);
        reportBuilder.AppendFormat("================\n");

        TestContext.WriteLine(reportBuilder.ToString());
        TestContext.WriteLine("string length: {0}", reportBuilder.Length);
    }
}