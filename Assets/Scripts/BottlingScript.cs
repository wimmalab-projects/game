using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class BottlingScript : MonoBehaviour {

    public GameMaster.BottlingState bottlingState;
    private float timer;
    public string niceTime;
    public string wineName;

    private int bottlingTimeMinutes;
    private int bottlingTimeSeconds;

    public float Timer
    {
        get
        {
            return timer;
        }

        set
        {
            timer = value;
        }
    }

    // Update is called once per frame
    void Update()
    {

        if (bottlingState != GameMaster.BottlingState.NotBottling && bottlingState != GameMaster.BottlingState.Bottled)
        {
            if (timer >= 0)
            {
                timer -= Time.deltaTime;
                bottlingTimeMinutes = Mathf.FloorToInt(timer / 60F);
                bottlingTimeSeconds = Mathf.FloorToInt(timer - bottlingTimeMinutes * 60);
                niceTime = string.Format("{0:0}:{1:00}", bottlingTimeMinutes, bottlingTimeSeconds);
            }

            if (timer <= 0)
            {
                bottlingState = GameMaster.BottlingState.Bottled;
            }
        }
        else
            niceTime = string.Format("0:00");
    }
}
