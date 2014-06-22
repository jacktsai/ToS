using System;

namespace AssemblyHijack.Automation
{
    internal class RequestGuild : Runnable
    {
        private bool requestSent = false;

        protected override bool Check()
        {
            return Game.runtimeData.user.guild == null && MyGameConfig.guild.request > 0 && !requestSent;
        }

        protected override void Execute(Action next)
        {
            Game.GuildSystem.SendRequest(MyGameConfig.guild.request, delegate
            {
                MyLog.Info("已對公會 [#{0}] 送出申請", MyGameConfig.guild.request);
                requestSent = true;
                next();
            });
        }
    }
}