using System;

namespace AssemblyHijack.Automation
{
    internal class RequestGuild : Runnable
    {
        private bool requestSent = false;

        protected override bool Check()
        {
            return !requestSent && Game.runtimeData.user.guild == null;
        }

        protected override void Execute(Action next)
        {
            Game.GuildSystem.SendRequest(MyGame.config.user.guild.requestGuild, delegate
            {
                MyLog.Info("已對公會 [{0}] 送出申請", MyGame.config.user.guild.requestGuild);
                requestSent = true;
                next();
            });
        }
    }
}