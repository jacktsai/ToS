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
        Puzzle.instance.MyStart();
    }

    public void buttonDownFunction(Transform t = null)
    {
        Puzzle.instance.buttonDownFunction(t);
    }
}