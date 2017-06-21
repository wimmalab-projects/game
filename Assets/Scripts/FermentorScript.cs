using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class FermentorScript : MonoBehaviour
{

    public List<Sprite> Sprites = new List<Sprite>();
    public GameMaster.FermentationState FermentationState;
    public bool isFermenting;
    public string grapeName;
    public Sprite grapeSprite;
    public float timer;
    public string niceTime;

    private int fermentTimeMinutes;
    private int fermentTimeSeconds;
    private CrushScript crushScript;
    private GameMaster gameMaster;
    private SlotScript slotScript;
    private bool isStarted;

    private void Awake()
    {
        gameMaster = GameObject.Find("GameManager").GetComponent<GameMaster>();
        slotScript = GameObject.Find("GameManager").GetComponent<SlotScript>();
        isStarted = false;
    }


    public float Timer
    {
        get
        {
            return timer;
        }
    }


    // Update is called once per frame
    void Update()
    {
        if (gameMaster.CrushisActive)
        {
            if (isStarted == false)
            {
                crushScript = GameObject.Find("CrushView(Clone)").GetComponent<CrushScript>();
                isStarted = true;
            }
            Debug.Log(CrushScript.didWin);
            if (CrushScript.didWin)
            {
                slotScript.Ferment();
            }
        }

        if (FermentationState != GameMaster.FermentationState.NotFermentating && FermentationState != GameMaster.FermentationState.Fermented)
        {
            if (timer >= 0)
            {
                timer -= Time.deltaTime;
                fermentTimeMinutes = Mathf.FloorToInt(timer / 60F);
                fermentTimeSeconds = Mathf.FloorToInt(timer - fermentTimeMinutes * 60);
                niceTime = string.Format("{0:0}:{1:00}", fermentTimeMinutes, fermentTimeSeconds);
            }

            if (timer <= 0)
            {
                FermentationState = GameMaster.FermentationState.Fermented;
            }
        }
        else
            niceTime = string.Format("0:00");
    }
}
