using System;
using UnityEngine;

namespace AssemblyHijack.Automation
{
    internal abstract class Runnable : IRunnable
    {
        public bool CanRun()
        {
            Debug.Log(String.Format("Before - {0}.Check", this.GetType().Name));
            bool checkResult = false;
            try
            {
                checkResult = this.Check();
            }
            catch (Exception exception)
            {
                Debug.LogError(exception.ToString());
            }
            Debug.Log(String.Format("After - {0}.Check, Result = {1}", this.GetType().Name, checkResult));

            return checkResult;
        }

        public void Run(Action next)
        {
            Debug.Log(String.Format("Before - {0}.Execute", this.GetType().Name));
            try
            {
                this.Execute(next);
            }
            catch (Exception exception)
            {
                Debug.LogError(exception.ToString());
            }
            Debug.Log(String.Format("After - {0}.Execute", this.GetType().Name));
        }

        protected abstract bool Check();

        protected abstract void Execute(Action next);
    }
}