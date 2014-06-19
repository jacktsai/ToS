using System;

namespace AssemblyHijack.Automation
{
    internal class AcceptFriend : Runnable
    {
        protected override bool Check()
        {
            return Game.runtimeData.friendRequests.Count > 0 && !Game.runtimeData.user.isFriendsFull;
        }

        protected override void Execute(Action next)
        {
            MyDialog.ShowWaiting("正在接受所有好友的申請");
            Game.AcceptAllFriendRequest(() =>
                {
                    MyDialog.Close();
                    next();
                }, () => { });
        }
    }
}