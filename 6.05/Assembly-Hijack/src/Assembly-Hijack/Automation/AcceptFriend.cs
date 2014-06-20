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
                    if (Game.runtimeData.friendRequests.Count > 0 && !Game.runtimeData.user.isFriendsFull)
                    {
                        Game.AcceptAllFriendRequest(next, null);
                    }

                    nextTime = DateTime.Now.AddSeconds(1);
                });
        }
    }
}