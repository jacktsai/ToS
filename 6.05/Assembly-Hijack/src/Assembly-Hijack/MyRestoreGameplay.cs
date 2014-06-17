using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using UnityEngine;

public class MyRestoreGameplay
{
    public static void StartGame()
    {
        Debug.Log(">> RestoreGameplay.StartGame");
        RestoreGameplay.StartGame();
        Debug.Log("<< RestoreGameplay.StartGame");
    }
}