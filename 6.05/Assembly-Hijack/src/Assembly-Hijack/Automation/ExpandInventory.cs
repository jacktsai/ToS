using System;

namespace AssemblyHijack.Automation
{
    internal class ExpandInventory : Runnable
    {
        private int count = 0;

        public override void AppendReport(System.Text.StringBuilder builder)
        {
            if (count < 1)
                return;

            builder.AppendFormat("共擴充背包 {0:#,0} 次", count);
        }

        protected override bool Check()
        {
            if (!Game.runtimeData.user.inventory.isFull)
            {
                MyLog.Debug("背包未滿, 暫不判定需要擴充背包");
                return false;
            }

            if (Game.runtimeData.user.inventory.maxCapacity < MyGame.config.user.inventory.capacity)
            {
                if (Game.runtimeData.user.diamond < 1)
                {
                    MyLog.Debug("魔法石不足, 無法進行背包擴充");
                    return false;
                }

                return true;
            }
            else
            {
                MyLog.Debug("背包空間 [{0}] 未小於設定最大空間 [{1}], 不執行擴充", Game.runtimeData.user.inventory.maxCapacity, MyGame.config.user.inventory.capacity);
                return false;
            }
        }

        protected override void Execute(Action next)
        {
            Game.ExtendBox(delegate
            {
                MyLog.Info("背包擴充完成");
                count++;
                next();
            }, null);
        }
    }
}