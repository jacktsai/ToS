using System;
using Native;

namespace AssemblyHijack.Automation
{
    internal class RegisterUser : Runnable
    {
        protected override bool Check()
        {
            return !Game.localUserExists;
        }

        protected override void Execute(Action next)
        {
            var name = String.Format("#{0:000}", UnityEngine.Random.Range(1, 10000));
            var partner = MyGameConfig.register.partner;
            var type = "device";

            Game.UniqueKey = SystemInformation.LocalKey;
            Game.runtimeData.registerName = name;
            Game.runtimeData.selectedPartner = partner;
            Game.runtimeData.registrationType = type;

            MyDialog.ShowWaiting("註冊新帳號中...\n名稱：{0}\n鍵值：{1}", name, Game.UniqueKey);
            Game.Register(name, partner, type,
                Game.runtimeData.registrationSocialUID,
                Game.runtimeData.registrationSocialToken,
                () =>
                {
                    MyDialog.Close();
                    next();
                },
                () => { }
            );
        }
    }
}