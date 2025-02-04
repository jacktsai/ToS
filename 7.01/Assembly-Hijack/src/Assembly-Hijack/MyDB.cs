﻿using System.Linq;

internal class MyDB
{
    public static Floor GetFloorByItemId(int itemId)
    {
        //各情境的第一個高級關卡編號
        int floorIdBase = 0;
        int itemIdBase = 0;

        if (itemId <= 20)
        {
            //黃道十二宮
            floorIdBase = 336;
            itemIdBase = 1;
        }
        else if (itemId <= 30)
        {
            //封神仙境
            floorIdBase = 723;
            itemIdBase = 21;
        }
        else if (itemId <= 40)
        {
            //魔宅異境
            floorIdBase = 820;
            itemIdBase = 31;
        }
        else
        {
            MyLog.Debug("無法分析出碎片 [{0:0000}] 可能會掉落的關卡", itemId);
            return null;
        }

        int floorId = floorIdBase + (itemId - itemIdBase) * 4;

        return Game.database.floors[floorId];
    }

    public static Floor GetFloorByMonsterId(int monsterId)
    {
        var monster = Game.database.monsters[monsterId];

        MyLog.Debug("開始分析 {0}({1})({2}) 可能會出現的關卡", monster.name, monster.rare, monster.type);

        int zoneId = (int)monster.element; // zone 編號與元素編號相同
        int stageIndex = 0;
        int floorIndex = 0;

        switch (monsterId)
        {
            case 87:
            case 89:
            case 91:
            case 93:
            case 95:
            case 107:
            case 109:
            case 111:
            case 113:
            case 115:
                stageIndex = 5;
                floorIndex = 5;
                break;

            case 97:
            case 99:
            case 101:
            case 103:
            case 105:
                stageIndex = 6;
                floorIndex = 5;
                break;

            default:
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
                        stageIndex = 4;
                        floorIndex = 5;
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
                break;
        }

        Floor floor = null;

        if (stageIndex > 0 && floorIndex > 0)
        {
            foreach (var zone in Game.runtimeData.availableZones)
            {
                if (zone.zoneId == zoneId)
                {
                    foreach (var stage in zone.stages.Values.OrderBy(s => s.stageId))
                    {
                        stageIndex--;

                        if (stageIndex == 0)
                        {
                            floor = stage.floors[floorIndex];
                            break;
                        }
                    }

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