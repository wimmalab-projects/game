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
    public string niceTime;

    private float timer;
    private int fermentTimeMinutes;
    private int fermentTimeSeconds;
    private CrushScript crushScript;
    private GameMaster gameMaster;
    private SlotScript slotScript;

    private void Awake()
    {
        gameMaster = GameObject.Find("GameManager").GetComponent<GameMaster>();
        slotScript = GameObject.Find("GameManager").GetComponent<SlotScript>();
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
        if (gameMaster.State == GameMaster.GameState.GrapeCrush)
        {
            crushScript = GameObject.Find("CrushView(Clone)").GetComponent<CrushScript>();

            if(crushScript && crushScript.didWin)
            {
                crushScript.didWin = false;
                grapeName = slotScript.currentlySelectedName;
                Debug.Log(grapeName);
            }

            //if (timer >= 0)
            //{
            //    timer -= Time.deltaTime;
            //    fermentTimeMinutes = Mathf.FloorToInt(timer / 60F);
            //    fermentTimeSeconds = Mathf.FloorToInt(timer - fermentTimeMinutes * 60);
            //    niceTime = string.Format("{0:0}:{1:00}", fermentTimeMinutes, fermentTimeSeconds);
            //}

            //if (timer <= 0)
            //{
            //    //GetComponent<SpriteRenderer>().sprite = Sprites[0];
            //    FermentationState = GameMaster.PlantState.Grapes;
            //}
            //else if (timer < 60)
            //{
            //    //GetComponent<SpriteRenderer>().sprite = Sprites[0];
            //    FermentationState = GameMaster.PlantState.Trimmed;
            //}
            //else if (timer < 120)
            //{
            //    //GetComponent<SpriteRenderer>().sprite = Sprites[0];
            //    FermentationState = GameMaster.PlantState.Overgrowth;
            //}
            //else if (timer < 200)
            //{
            //    GetComponent<SpriteRenderer>().sprite = Sprites[0];
            //    FermentationState = GameMaster.PlantState.JustPlanted;
            //}
        }
        else
            Debug.Log("Nope");
    }

    public void resetTimer()
    {
        timer = 10;
    }
}
