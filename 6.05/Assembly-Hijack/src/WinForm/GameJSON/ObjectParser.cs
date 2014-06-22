using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Linq;
using System.Text;

namespace WinForm.GameJSON
{
    internal class ObjectParser
    {
        public static Story ParseStory(string input, char separator = '|')
        {
            if (string.IsNullOrEmpty(input))
            {
                Debug.WriteLine("[Parser] ParseStory() could not parse data - \"" + input + "\", please check input data");
                return null;
            }
            string[] array = input.Split(separator);
            return new Story
            {
                storyId = MParser.ArrayItemParseToInt(ref array, 0, 0),
                name = MParser.ArrayItemParseToString(ref array, 1, string.Empty),
                relatedFloorId = MParser.ArrayItemParseToInt(ref array, 2, 0),
                storyIndex = MParser.ArrayItemParseToInt(ref array, 3, 0)
            };
        }

        public static Floor ParseFloor(string input, char separator = '|')
        {
            if (string.IsNullOrEmpty(input))
            {
                Debug.WriteLine("[Parser] ParseFloor() could not parse data - \"" + input + "\", please check input data");
                return null;
            }
            string[] array = input.Split(separator);
            var floor = new Floor
            {
                floorId = MParser.ArrayItemParseToInt(ref array, 0, 0),
                stageId = MParser.ArrayItemParseToInt(ref array, 1, 0),
                floorIndex = MParser.ArrayItemParseToInt(ref array, 2, 0),
                monsterId = MParser.ArrayItemParseToInt(ref array, 3, 0),
                stamina = MParser.ArrayItemParseToInt(ref array, 4, 0),
                waveCount = MParser.ArrayItemParseToInt(ref array, 5, 0),
                tutorialStep = MParser.ArrayItemParseToString(ref array, 6, string.Empty),
                title = MParser.ArrayItemParseToString(ref array, 7, string.Empty),
                maxTeamCost = MParser.ArrayItemParseToInt(ref array, 8, 0),
                isChallengeFloor = MParser.ArrayItemParseToBool(ref array, 9, false),
                unlockByItem = MParser.ArrayItemParseToBool(ref array, 10, false),
                limitedTurns = MParser.ArrayItemParseToInt(ref array, 11, 0),
                bossScript = MParser.ArrayItemParseToString(ref array, 12, string.Empty),
                startScript = MParser.ArrayItemParseToString(ref array, 13, string.Empty),
                requiredItemAmount = MParser.ArrayItemParseToInt(ref array, 15, 0),
                isNoRetry = MParser.ArrayItemParseToBool(ref array, 16, false),
                relatedFloorId = MParser.ArrayItemParseToInt(ref array, 17, 0),
                endScript = MParser.ArrayItemParseToString(ref array, 18, string.Empty),
                isRankingAvailable = MParser.ArrayItemParseToBool(ref array, 19, false),
                startTime = MParser.ArrayItemParseToInt(ref array, 20, 0),
                endTime = MParser.ArrayItemParseToInt(ref array, 21, 0),
                teamMinMember = MParser.ArrayItemParseToInt(ref array, 22, 0),
                teamMaxMember = MParser.ArrayItemParseToInt(ref array, 23, 0),
                teamRacialTypes = MParser.ArrayItemParseToIntArray(ref array, 24, ',', null),
                teamAttributes = MParser.ArrayItemParseToIntArray(ref array, 25, ',', null)
            };

            DateTime dateTime = new DateTime(1970, 1, 1, 0, 0, 0, 0, DateTimeKind.Utc);
            floor.startTime2 = dateTime.AddSeconds((double)floor.startTime).ToUniversalTime();
            floor.endTime2 = dateTime.AddSeconds((double)floor.endTime).ToUniversalTime();

            return floor;
        }

        public static Stage ParseStage(string input, char separator = '|')
        {
            if (string.IsNullOrEmpty(input))
            {
                Debug.WriteLine("[Parser] ParseStage() could not parse data - \"" + input + "\", please check input data");
                return null;
            }
            string[] array = input.Split(separator);
            return new Stage
            {
                stageId = MParser.ArrayItemParseToInt(ref array, 0, 0),
                previousStageId = MParser.ArrayItemParseToInt(ref array, 1, 0),
                nextStageId = MParser.ArrayItemParseToInt(ref array, 2, 0),
                zone = MParser.ArrayItemParseToInt(ref array, 3, 0),
                typeEnum = (Stage.Type)MParser.ArrayItemParseToInt(ref array, 4, 0),
                typeValue = MParser.ArrayItemParseToString(ref array, 5, string.Empty),
                stoneType = MParser.ArrayItemParseToInt(ref array, 6, 0),
                startTime = MParser.ArrayItemParseToInt(ref array, 7, 0),
                endTime = MParser.ArrayItemParseToInt(ref array, 8, 0),
                title = MParser.ArrayItemParseToString(ref array, 9, string.Empty),
                sceneId = MParser.ArrayItemParseToInt(ref array, 10, 0),
                storyId = MParser.ArrayItemParseToInt(ref array, 11, 0),
                requiredItemId = MParser.ArrayItemParseToInt(ref array, 12, 0),
                requiredItemCollectLimit = MParser.ArrayItemParseToInt(ref array, 13, 0),
                showAllFloors = MParser.ArrayItemParseToBool(ref array, 14, false)
            };
        }
    }
}