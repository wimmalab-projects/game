/* Script that runs the bottling process*/

using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class BottlingScript : MonoBehaviour
{
    public ItemOurWine ourWine;
    public GameMaster.BottlingState BottlingState { get; set; }
    public string NiceTime { get; private set; }
    public string WineName { get; set; }
    public float Timer { get; set; }

    private bool isTimerRunning;
    private System.DateTime timePaused;
    private System.DateTime timeUnpaused;

    private void Start()
    {
        isTimerRunning = false;
    }
    // Update is called once per frame
    void Update()
    {

        if (BottlingState != GameMaster.BottlingState.NotBottling && BottlingState != GameMaster.BottlingState.Bottled)
        {
            if (Timer >= 0)
            {
                isTimerRunning = true;
                Timer -= Time.deltaTime;
                int bottlingTimeMinutes = Mathf.FloorToInt(Timer / 60F);
                int bottlingTimeSeconds = Mathf.FloorToInt(Timer - bottlingTimeMinutes * 60);
                NiceTime = string.Format("{0:0}:{1:00}", bottlingTimeMinutes, bottlingTimeSeconds);
            }

            if (Timer <= 0)
            {
                isTimerRunning = false;
                BottlingState = GameMaster.BottlingState.Bottled;
            }
        }
        else
            NiceTime = string.Format("0:00");
    }
}
