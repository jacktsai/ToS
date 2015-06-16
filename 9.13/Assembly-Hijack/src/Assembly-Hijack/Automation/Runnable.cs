using System;
using System.Text;
using UnityEngine;

namespace AssemblyHijack.Automation
{
    internal abstract class Runnable : IRunnable
    {
        public bool CanRun()
        {
            bool checkResult = this.Check();

            if (!checkResult)
            {
                MyLog.Debug("{0}.Check, Result = {1}", this.GetType().Name, checkResult);
            }

            return checkResult;
        }

        public void Run(Action next)
        {
            this.Execute(next);
        }

        public virtual void AppendReport(StringBuilder builder)
        {
        }

        protected abstract bool Check();

        protected abstract void Execute(Action next);
    }
}