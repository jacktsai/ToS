using System;
using System.Collections.Generic;

namespace AssemblyHijack.Automation
{
    internal class AcceptFriend : Runnable
    {
        private int TotalFriend = 0;

        private DateTime nextTime = DateTime.Now;

        public override void AppendReport(System.Text.StringBuilder builder)
        {
            if (TotalFriend > 0)
                builder.AppendFormat("接受 {0:#,0} 位好友的邀請\n", TotalFriend);
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
                    nextTime = DateTime.Now.AddSeconds(600);

                    if (Game.runtimeData.friendRequests.Count > 0 && !Game.runtimeData.user.isFriendsFull)
                    {
                        MyLog.Info("接受所有好友邀請");
                        Game.AcceptAllFriendRequest(delegate
                        {
                            TotalFriend += Game.runtimeData.friendRequests.Count;
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