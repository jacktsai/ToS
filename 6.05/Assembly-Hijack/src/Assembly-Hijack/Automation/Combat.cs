using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading;
using R = UnityEngine.Random;

namespace AssemblyHijack.Automation
{
    internal class Combat
    {
        private DateTime beginTime = DateTime.Now;

        private IList<Wave> waves;
        private IList<Card> cards;

        private int waveOrder;
        private int waveMoved;

        private int maxUserAttackSum;
        private IList<int> maxUserAttackSumPerWave = new List<int>();
        private float maxUserHPSum;
        private IList<float> maxUserHPSumPerWave = new List<float>();

        private int maxCombo;
        private IList<int> maxComboPerWave = new List<int>();
        private int maxAttack;
        private IList<int> maxPlayerAttackPerWave = new List<int>();
        private IList<int> sumMoveGemRoundPerWave = new List<int>();

        private IList<int> maxDamageTakenPerWave = new List<int>();

        private int sumEnemyCount;
        private IList<int> sumEnemyHPPerWave = new List<int>();
        private IList<int> sumEnemyAttackPerWave = new List<int>();
        private IList<int> sumEnemyDefencePerWave = new List<int>();
        private IList<int> sumEnemyCDPerWave = new List<int>();
        private IList<int> enemyAttackCountPerWave = new List<int>();
        private IList<int> maxEnemyAttackPerWave = new List<int>();

        public Combat(IList<Wave> waves)
        {
            this.waves = waves;

            this.CreateTeam();
        }

        private void CreateTeam()
        {
            cards = Game.runtimeData.currentTeam.cards.Values.Where(c => c != null).ToList();

            var helper = Game.runtimeData.currentSelectedHelper;
            if (helper != null)
                cards.Add(helper.helperCard);

            foreach (var card in cards)
            {
                maxUserAttackSum += card.attack;
                maxUserHPSum += card.HP;
            }
        }

        public void GoGoGo(Action<int, int> OnWaveBegin, Action<int, int> OnWaveEnd, Action<Enemy> OnEnemyAppeared, Action OnCleared)
        {
            maxCombo = R.Range(3, 16);

            foreach (var wave in waves)
            {
                waveOrder++;
                waveMoved++;

                if (OnWaveBegin != null)
                    OnWaveBegin(waveOrder, waves.Count);

                int sumEnemyHP = 0, sumEnemyAttack = 0, sumEnemyDefence = 0, sumEnemyCD = 0;
                foreach (var enemy in wave.enemies)
                {
                    sumEnemyCount++;

                    #region 固定資訊

                    sumEnemyHP += enemy.HP;
                    sumEnemyAttack += enemy.attack;
                    sumEnemyDefence += enemy.defense;
                    sumEnemyCD += enemy.attackDuration;

                    #endregion 固定資訊

                    if (OnEnemyAppeared != null)
                        OnEnemyAppeared(enemy);
                }

                #region 固定資訊

                maxUserAttackSumPerWave.Add(maxUserAttackSum);
                maxUserHPSumPerWave.Add(maxUserHPSum);
                sumEnemyHPPerWave.Add(sumEnemyHP);
                sumEnemyAttackPerWave.Add(sumEnemyAttack);
                sumEnemyDefencePerWave.Add(sumEnemyDefence);
                sumEnemyCDPerWave.Add(sumEnemyCD);

                enemyAttackCountPerWave.Add(0);
                maxEnemyAttackPerWave.Add(0);

                maxDamageTakenPerWave.Add(0);

                #endregion 固定資訊

                int attack = 0;
                if (waveOrder == waves.Count)
                {
                    int round = R.Range(2, 5);
                    sumMoveGemRoundPerWave.Add(round);
                    attack = (int)R.Range(sumEnemyHP / round * 2.323f, sumEnemyHP / round * 3.855f); // 用敵人的血量來回推應該有的攻擊量
                }
                else
                {
                    sumMoveGemRoundPerWave.Add(1);
                    attack = (int)R.Range(sumEnemyHP * 1.223f, sumEnemyHP * 1.955f);
                }

                maxComboPerWave.Add(R.Range(2, maxCombo));

                maxPlayerAttackPerWave.Add(attack);
                maxAttack = Math.Max(maxAttack, attack);

                if (MyGame.config.automation.floor.gamePlayError == 0)
                {
                    // 當 gamePlayError = 0 時，server 會檢查通關時間是否過短
                    Thread.Sleep(MyGame.config.automation.floor.waveTime * 1000);
                }

                if (OnWaveEnd != null)
                    OnWaveEnd(waveOrder, waves.Count);
            }

            SetAntiCheatingData();

            MyLog.Debug("*** currentWaveIndex [{0}] maxAttack [{1:#,0}] maxCombo [{2}]***", Game.runtimeData.currentWaveIndex, Game.runtimeData.maxAttack, Game.runtimeData.maxCombo);
            MyLog.Debug("ACSJson: {0}", MyRestoreGameplay.GetACSJson());

            if (OnCleared != null)
                OnCleared();
        }

        private void SetAntiCheatingData()
        {
            var data = Game.runtimeData;

            // 關卡狀態(6)
            data.currentWaveIndex = waveOrder;
            data.waveMovedTime = waveMoved;
            data.numOfwave = waves.Count;
            data.currentGamePlayTeamData = data.currentTeamData;
            data.monsterNum = cards.Count;
            data.gameplayTime = (float)((DateTime.Now - beginTime).TotalSeconds);

            // 我方攻擊資訊(14)
            data.maxUserAttackSumPerWave = maxUserAttackSumPerWave.ToArray();
            data.minHP = (int)maxUserHPSum;
            data.maxHP = (int)maxUserHPSum;
            data.minPlayerHPPerWave = maxUserHPSumPerWave.ToArray();
            data.eatGemRound = waves.Count + R.Range(1, 5);
            data.maxAttack = maxAttack;
            data.maxCombo = maxCombo;
            data.maxComboPerWave = maxComboPerWave.ToArray();
            data.maxPlayerAttackPerWave = maxPlayerAttackPerWave.ToArray();
            data.maxAttackPerRoundDuringBossWave = maxAttack;
            data.maxComboCorrespondToMaxPlayerAttack = maxCombo;
            data.sumMoveGemRoundPerWave = sumMoveGemRoundPerWave.ToArray();
            data.SkillUsedTime = "0,0,0,0,0,0";
            data.skillUsedPerWave = String.Join(",", waves.Select(w => "0|0|0|0|0|0").ToArray()) + ",";

            // 我方被攻擊資訊 (7)
            data.minDamageTaken = 0;
            data.maxDamageTaken = 0;
            data.totalDamageTaken = 0;
            data.maxRecoverHP = R.Range(10000, 20000);
            data.minRecoverHP = R.Range(2000, data.maxRecoverHP);
            data.totalRecoverHP = (data.maxRecoverHP + data.minRecoverHP) / 2 * data.eatGemRound;
            data.maxDamageTakenPerWave = maxDamageTakenPerWave.ToArray();

            // enemy 攻擊資訊 (8)
            data.monsterAttackTime = 0;
            data.sumEnemyHPPerWave = sumEnemyHPPerWave.ToArray();
            data.enemyDamageTakenPerWave = data.sumEnemyHPPerWave;
            data.sumEnemyAttackPerWave = sumEnemyAttackPerWave.ToArray();
            data.sumEnemyDefencePerWave = sumEnemyDefencePerWave.ToArray();
            data.sumEnemyCDPerWave = sumEnemyCDPerWave.ToArray();
            data.enemyAttackCountPerWave = enemyAttackCountPerWave.ToArray();
            data.maxEnemyAttackPerWave = maxEnemyAttackPerWave.ToArray();

            // 其它資訊 (10)
            data.dieTime = 0;
            data.retryTime = 0;
            data.gamePlayError = MyGame.config.automation.floor.gamePlayError;
            data.restoreCount = 0;
            data.startMoveGemPosX = null;
            data.startMoveGemPosY = null;
            data.endMoveGemPosX = null;
            data.endMoveGemPosY = null;
            data.numOfStraightLineMoveGem = 0;
            data.numOfEqualPointMoveGem = 0;
        }
    }
}