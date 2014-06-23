using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace AssemblyHijack.Automation
{
    internal class AchieveMission : Runnable
    {
        private bool missionCleared = false;

        protected override bool Check()
        {
            return Game.runtimeData.user.guild != null && !missionCleared;
        }

        protected override void Execute(Action next)
        {
            Game.GuildSystem.GetMissions(delegate
            {
                AchieveMission(next);
            }, null);
        }

        private void AchieveMission(Action next)
        {
            ClaimReward(next);
        }

        private void ClaimReward(Action next)
        {
            Game.GuildSystem.ClaimMissionsReward((x, y, z) =>
            {
                missionCleared = true;
                next();
            }, null);
        }
    }
}