using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class ClarificationScript : MonoBehaviour
{

    public GameMaster.ClarificationState ClarificationState { get; set; }
    [SerializeField]
    public float Timer { get; set; }
    public string NiceTime { get; private set; }
    public string WineName { get; set; }

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
        // If wine is being clarificated run the timer or check if its below 0.
        if (ClarificationState != GameMaster.ClarificationState.NotClarificating && ClarificationState != GameMaster.ClarificationState.Clarificated)
        {
            // If timer is running, start counting down and format the time to mins/seconds nicely.
            if (Timer >= 0)
            {
                isTimerRunning = true;
                Timer -= Time.deltaTime;
                int clarificationTimeMinutes = Mathf.FloorToInt(Timer / 60F);
                int clarificationTimeSeconds = Mathf.FloorToInt(Timer - clarificationTimeMinutes * 60);
                NiceTime = string.Format("{0:0}:{1:00}", clarificationTimeMinutes, clarificationTimeSeconds);
            }

            // If timer goes to zero or below it, stop the timer and set the state to ready.
            if (Timer <= 0)
            {
                isTimerRunning = false;
                ClarificationState = GameMaster.ClarificationState.Clarificated;
            }
        }
        else
            NiceTime = string.Format("0:00");
    }

    private void OnApplicationFocus(bool hasFocus)
    {
        if (isTimerRunning)
        {
            if (!hasFocus)
            {
                timePaused = System.DateTime.Now;
            }
            else
            {
                float timeLapsed;
                timeUnpaused = System.DateTime.Now;
                System.TimeSpan difference = timePaused.Subtract(timeUnpaused);
                timeLapsed = (float)difference.TotalSeconds;
                Timer = (Timer + timeLapsed);
                Debug.Log(Timer);
            }
        }
    }

    private void OnApplicationPause(bool paused)
    {
        if (isTimerRunning)
        {
            if (paused)
            {
                timePaused = System.DateTime.Now;
            }
            else
            {
                float timeLapsed;
                timeUnpaused = System.DateTime.Now;
                System.TimeSpan difference = timePaused.Subtract(timeUnpaused);
                timeLapsed = (float)difference.TotalSeconds;
                Timer = (Timer + timeLapsed);
                Debug.Log(Timer);
            }
        }
    }
}
