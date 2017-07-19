using System;
using System.Collections;
using System.Collections.Generic;
using System.IO;
using UnityEngine;

public static class Player
{
    public static string Name = "Homo";
    public static int Exp = 0;
    public const int ExpConst = 120;
    public static int Level = 1;
    public static int Money = 500;
    public static double ExpNeeded = Math.Floor(Math.Pow((ExpConst * 1), 1.3));

    static Player()
    {

    }

    public static void GainExperience(int amount)
    {
        Exp += amount;
        if (Exp >= ExpNeeded)
        {
            LevelUp();
        }
        else
        {
            GameObject.FindGameObjectWithTag("GameManager").GetComponent<GameMaster>().StartCoroutine("ShowMessage", "Experience gained:\n" + amount);
        }
    }

    public static void LevelUp()
    {
        Level++;
        ExpNeeded = Math.Floor(Math.Pow((ExpConst * Level), 1.3));
        GameObject.FindGameObjectWithTag("GameManager").GetComponent<GameMaster>().StartCoroutine("ShowMessage", "Level up!\nYou're level " + Level + " now!");
    }

    public static void AddMoney(int amount)
    {
        Money += amount;
    }
}
