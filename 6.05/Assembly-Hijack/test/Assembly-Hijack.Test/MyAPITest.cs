using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Linq;
using System.Text;
using Microsoft.VisualStudio.TestTools.UnitTesting;

namespace Assembly_Hijack.Test
{
    [TestClass]
    public class UnitTest1
    {
        [TestMethod]
        public void _startURLRequestTest()
        {
            MyAPI._startURLRequest(null, null, null, null);
        }
    }
}