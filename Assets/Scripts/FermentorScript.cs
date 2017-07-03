/* Script that runs the fermentation process */

using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class FermentorScript : MonoBehaviour
{

    public GameMaster.FermentationState FermentationState { get; set; }
    public GameMaster.Winetype WineType { get; set; }
    public bool IsFermenting { get; set; }
    public string GrapeName { get; set; }
    public float Timer { get; set; }
    public string NiceTime { get; private set; }

    private GameMaster gameMaster;
    private SlotScript slotScript;
    private bool isStarted;

    private void Awake()
    {
        gameMaster = GameObject.Find("GameManager").GetComponent<GameMaster>();
        slotScript = GameObject.Find("GameManager").GetComponent<SlotScript>();
        isStarted = false;
    }

    // Update is called once per frame
    void Update()
    {
        if (gameMaster.CrushisActive)
        {
            if (!isStarted)
            {
                isStarted = true;
            }
            // Check if the grape crush minigame was won and start the fermentation process.
            if (CrushScript.DidWin)
            {
                slotScript.Ferment();
            }
        }

        if (FermentationState != GameMaster.FermentationState.NotFermentating && FermentationState != GameMaster.FermentationState.Fermented)
        {
            if (Timer >= 0)
            {
                Timer -= Time.deltaTime;
                int fermentTimeMinutes = Mathf.FloorToInt(Timer / 60F);
                int fermentTimeSeconds = Mathf.FloorToInt(Timer - fermentTimeMinutes * 60);
                NiceTime = string.Format("{0:0}:{1:00}", fermentTimeMinutes, fermentTimeSeconds);
            }

            if (Timer <= 0)
            {
                FermentationState = GameMaster.FermentationState.Fermented;
            }
        }
        else
            NiceTime = string.Format("0:00");
    }
}
