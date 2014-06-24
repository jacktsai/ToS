using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

internal class MyDB
{
    public static Floor GetFloorByItemId(int itemId)
    {
        //各情境的第一個高級關卡編號
        int floorIdBase = 0;

        if (itemId <= 20)
        {
            //黃道十二宮
            floorIdBase = 336;
        }
        else if (itemId <= 30)
        {
            //封神仙境
            floorIdBase = 723;
        }
        else if (itemId <= 40)
        {
            //魔宅異境
            floorIdBase = 820;
        }
        else
        {
            MyLog.Debug("無法分析出碎片 [{0:0000}] 可能會掉落的關卡", itemId);
            return null;
        }

        int floorId = floorIdBase + (itemId - 1) * 4;

        return Game.database.floors[floorId];
    }

    public static Floor GetFloorByMonsterId(int monsterId)
    {
        var monster = Game.database.monsters[monsterId];

        MyLog.Debug("開始分析 {0}({1})({2}) 可能會出現的關卡", monster.name, monster.rare, monster.type);

        int stageIndex = 0;
        int floorIndex = 0;

        switch (monster.rare)
        {
            case Monster.RareType.NORMAL:
                stageIndex = 1;
                floorIndex = 1;
                break;

            case Monster.RareType.BRONZE:
                stageIndex = 3; // 第三個 stage
                switch (monster.type)
                {
                    case Monster.RacialType.DEVIL:
                        floorIndex = 5; // 第一個 floor
                        break;

                    case Monster.RacialType.DRAGON:
                        floorIndex = 2;
                        break;

                    case Monster.RacialType.FAIRY:
                        floorIndex = 1;
                        break;

                    case Monster.RacialType.GOD:
                        break;

                    case Monster.RacialType.HUMAN:
                        floorIndex = 3;
                        break;

                    case Monster.RacialType.MONSTER:
                        floorIndex = 4;
                        break;

                    default:
                        break;
                }
                break;

            case Monster.RareType.SILVER:
                break;

            case Monster.RareType.GOLD:
                break;

            case Monster.RareType.PLATINUM:
                break;

            case Monster.RareType.DIAMOND:
                break;

            default:
                break;
        }

        Floor floor = null;

        if (stageIndex > 0 && floorIndex > 0)
        {
            foreach (var stageBonus in Game.runtimeData.stageBonus.stages.OrderBy(s => s.stageId))
            {
                stageIndex--;

                if (stageIndex == 0)
                {
                    var stage = Game.database.stages[stageBonus.stageId];
                    floor = stage.floors[floorIndex];
                    break;
                }
            }
        }

        if (floor == null)
        {
            MyLog.Debug("無法分析出 {0}({1})({2}) 可能會出現的關卡", monster.name, monster.rare, monster.type);
        }

        return floor;
    }
}