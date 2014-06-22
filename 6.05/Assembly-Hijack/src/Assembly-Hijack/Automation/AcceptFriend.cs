using System;
using System.Collections.Generic;

namespace AssemblyHijack.Automation
{
    internal class AcceptFriend : Runnable
    {
        private const string REPORT_ACCEPT = "accept";

        private IDictionary<string, int> Report = new Dictionary<string, int>
        {
            { REPORT_ACCEPT, 0 },
        };

        private DateTime nextTime = DateTime.Now;

        public override void AppendReport(System.Text.StringBuilder builder)
        {
            foreach (var item in Report)
            {
                if (item.Value < 1)
                    continue;

                if (item.Key == REPORT_ACCEPT)
                    builder.AppendFormat("共接受 {0:#,0} 位好友的邀請\n", item.Value);
            }
        }

        protected override bool Check()
        {
            return nextTime < DateTime.Now;
        }

        protected override void Execute(Action next)
        {
            Game.GetFriendRequests(
                () =>
                {
                    nextTime = DateTime.Now.AddSeconds(120);

                    if (Game.runtimeData.friendRequests.Count > 0 && !Game.runtimeData.user.isFriendsFull)
                    {
                        MyLog.Info("接受所有好友邀請");
                        Game.AcceptAllFriendRequest(delegate
                        {
                            Report[REPORT_ACCEPT] += Game.runtimeData.friendRequests.Count;
                            next();
                        },
                        null);
                    }
                    else
                    {
                        next();
                    }
                });
        }
    }
}