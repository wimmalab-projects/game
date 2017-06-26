using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class ClarificationScript : MonoBehaviour
{

    public GameMaster.ClarificationState clarificationState;
    private float timer;
    public string niceTime;
    public string wineName;

    private int clarificationTimeMinutes;
    private int clarificationTimeSeconds;

    // Timer getter / setter
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
        // If wine is being clarificated run the timer or check if its below 0.
        if (clarificationState != GameMaster.ClarificationState.NotClarificating && clarificationState != GameMaster.ClarificationState.Clarificated)
        {
            // If timer is running, start counting down and format the time to mins/seconds nicely.
            if (timer >= 0)
            {
                timer -= Time.deltaTime;
                clarificationTimeMinutes = Mathf.FloorToInt(timer / 60F);
                clarificationTimeSeconds = Mathf.FloorToInt(timer - clarificationTimeMinutes * 60);
                niceTime = string.Format("{0:0}:{1:00}", clarificationTimeMinutes, clarificationTimeSeconds);
            }

            // If timer goes to zero or below it, stop the timer and set the state to ready.
            if (timer <= 0)
            {
                clarificationState = GameMaster.ClarificationState.Clarificated;
            }
        }
        else
            niceTime = string.Format("0:00");
    }
}
