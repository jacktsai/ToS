using System;
using System.Text;

namespace AssemblyHijack.Automation
{
    internal interface IRunnable
    {
        bool CanRun();

        void Run(Action next);

        void AppendReport(StringBuilder builder);
    }
}