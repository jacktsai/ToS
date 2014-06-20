using System;
using UnityEngine;

namespace AssemblyHijack.Automation
{
    internal abstract class Runnable : IRunnable
    {
        public bool CanRun()
        {
            MyDebug.Log("Before - {0}.Check", this.GetType().Name);
            bool checkResult = false;
            try
            {
                checkResult = this.Check();
            }
            catch (Exception exception)
            {
                Debug.LogError(exception.ToString());
            }
            MyDebug.Log("After - {0}.Check, Result = {1}", this.GetType().Name, checkResult);

            return checkResult;
        }

        public void Run(Action next)
        {
            MyDebug.Log("Before - {0}.Execute", this.GetType().Name);
            try
            {
                this.Execute(next);
            }
            catch (Exception exception)
            {
                Debug.LogError(exception.ToString());
            }
            MyDebug.Log("After - {0}.Execute", this.GetType().Name);
        }

        protected abstract bool Check();

        protected abstract void Execute(Action next);
    }
}