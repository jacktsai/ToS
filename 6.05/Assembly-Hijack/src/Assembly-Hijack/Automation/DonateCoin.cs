using System;
using System.Text;

namespace AssemblyHijack.Automation
{
    internal class DonateCoin : Runnable
    {
        private int donateCoin;
        private int totalAmount = 0;

        public override void AppendReport(StringBuilder builder)
        {
            if (totalAmount < 1)
                return;

            builder.AppendFormat("捐獻 {0:#,0} 給公會\n", totalAmount);
        }

        protected override bool Check()
        {
            var available = Game.runtimeData.user.coin - MyGame.config.user.guild.reservedCoin;

            if (available >= 1000000)
                donateCoin = 1000000;
            else if (available >= 500000)
                donateCoin = 500000;
            else if (available >= 200000)
                donateCoin = 200000;
            else if (available >= 100000)
                donateCoin = 100000;
            else
                donateCoin = 0;

            return donateCoin > 0;
        }

        protected override void Execute(Action next)
        {
            Game.GuildSystem.DonateCoin(
                donateCoin,
                delegate
                {
                    MyLog.Info("已完成公會捐獻金額 {0:#,0}", donateCoin);
                    totalAmount += donateCoin;
                    next();
                });
        }
    }
}