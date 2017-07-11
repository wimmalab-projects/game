/* Script that runs the fermentation process */

using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class FermentorScript : MonoBehaviour
{

    public GameMaster.FermentationState FermentationState { get; set; }
    public GameMaster.Winetype WineType { get; set; }
    public bool IsFermenting { get; set; }
    public string GrapeName;
    public float Timer { get; set; }
    public string NiceTime { get; private set; }

    private GameMaster gameMaster;
    private SlotScript slotScript;
    private bool testing = true;
    private bool isPaused = false;
    private bool isTimerRunning = false;
    private WinePrefab ourWine;
    private bool wineTypeDecided = false;

    System.DateTime timePaused;
    System.DateTime timeUnpaused;

    private void Awake()
    {
        gameMaster = GameObject.Find("GameManager").GetComponent<GameMaster>();
        slotScript = GameObject.Find("GameManager").GetComponent<SlotScript>();
        ourWine = gameMaster.OurWine.GetComponent<WinePrefab>();
    }

    // Update is called once per frame
    void Update()
    {
        //if (gameMaster.CrushisActive)
        //{
        //    //if (!isStarted)
        //    //{
        //    //    isStarted = true;
        //    //}
        //    // Check if the grape crush minigame was won and start the fermentation process.
        //    if (CrushScript.DidWin)
        //    {
        //        slotScript.Ferment();
        //    }
        //}
        if (FermentationState != GameMaster.FermentationState.NotFermentating && FermentationState != GameMaster.FermentationState.Fermented)
        {
            if (Timer >= 0)
            {
                isTimerRunning = true;
                Timer -= Time.deltaTime;
                int fermentTimeMinutes = Mathf.FloorToInt(Timer / 60F);
                int fermentTimeSeconds = Mathf.FloorToInt(Timer - fermentTimeMinutes * 60);
                NiceTime = string.Format("{0:0}:{1:00}", fermentTimeMinutes, fermentTimeSeconds);
            }

            if (Timer < 50 && slotScript.didCollect && !wineTypeDecided)
            {
                WineType = GameMaster.Winetype.RedWine;
                ourWine.wineType = (Wine.WineType)WineType;
                wineTypeDecided = true;
                Debug.Log(WineType);
            }

            else if (Timer < 100 && slotScript.didCollect && !wineTypeDecided)
            {
                WineType = GameMaster.Winetype.RoseWine;
                ourWine.wineType = (Wine.WineType)WineType;
                wineTypeDecided = true;
                Debug.Log(WineType);
            }

            else if (Timer < 150 && slotScript.didCollect && !wineTypeDecided)
            {
                WineType = GameMaster.Winetype.WhiteWine;
                ourWine.wineType = (Wine.WineType)WineType;
                wineTypeDecided = true;
                Debug.Log(WineType);
            }

            if (Timer <= 0)
            {
                FermentationState = GameMaster.FermentationState.Fermented;
                Debug.Log(WineType);
            }
        }
        else
            NiceTime = string.Format("0:00");
    }
}
