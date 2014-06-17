using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using UnityEngine;

public class MyPuzzle
{
    public static MyPuzzle instance = new MyPuzzle();

    public void MyStart()
    {
        Debug.Log(">> Puzzle.MyStart");
        Puzzle.instance.MyStart();
        Debug.Log("<< Puzzle.MyStart");
    }

    public void buttonDownFunction(Transform t = null)
    {
        Debug.Log(">> Puzzle.buttonDownFunction");
        Puzzle.instance.buttonDownFunction(t);
        Debug.Log("<< Puzzle.buttonDownFunction");
    }
}