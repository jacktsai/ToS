using System;

namespace AssemblyHijack.Automation
{
    internal class AcceptMember : Runnable
    {
        private int TotalMember = 0;

        private bool alreadyRun = false;

        public override void AppendReport(System.Text.StringBuilder builder)
        {
            if (TotalMember > 0)
                builder.AppendFormat("共接受 {0:#,0} 位公會成員的申請\n", TotalMember);
        }

        protected override bool Check()
        {
            var guild = Game.runtimeData.user.guild; ;

            return !alreadyRun && guild != null && guild.leaderUid == Game.runtimeData.user.uid;
        }

        protected override void Execute(Action next)
        {
            alreadyRun = true;

            Game.GuildSystem.GetRequests(
                delegate
                {
                    AcceptRequest(next);
                },
                null);
        }

        private void AcceptRequest(Action next)
        {
            var guild = Game.runtimeData.user.guild;

            if (guild.requests.Count > 0)
            {
                var helper = guild.requests[0];
                Game.GuildSystem.AcceptRequest(
                    helper,
                    delegate
                    {
                        TotalMember++;
                        AcceptRequest(next);
                    },
                    null,
                    null);
                return;
            }

            next();
        }
    }
}