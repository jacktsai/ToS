using System;

namespace AssemblyHijack.Automation
{
    internal class AcceptFriend : Runnable
    {
        private DateTime nextTime = DateTime.Now;

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
                        Game.AcceptAllFriendRequest(next, null);
                    }
                    else
                    {
                        next();
                    }
                });
        }
    }
}