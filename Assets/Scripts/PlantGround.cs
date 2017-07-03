/* Script that runs the plant process */

using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class PlantGround : MonoBehaviour
{
    public List<Sprite> Sprites = new List<Sprite>();
    public GameMaster.PlantState PlantState { get; set; }
    public bool IsPlanted { get; set; }
    public string PlantName { get; set; }
    public string NiceTime { get; private set; }

    private float timer = 10;


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
        if (PlantState != GameMaster.PlantState.NotPlanted && PlantState != GameMaster.PlantState.Grapes)
        {
            if (timer >= 0)
            {
                timer -= Time.deltaTime;
                int harvestTimeMinutes = Mathf.FloorToInt(timer / 60F);
                int harvestTimeSeconds = Mathf.FloorToInt(timer - harvestTimeMinutes * 60);
                NiceTime = string.Format("{0:0}:{1:00}", harvestTimeMinutes, harvestTimeSeconds);
            }

            // Different states for growth, and change the sprite accordingly to that
            if (timer <= 0)
            {
                //GetComponent<SpriteRenderer>().sprite = Sprites[0];
                PlantState = GameMaster.PlantState.Grapes;
            }
            else if (timer < 60)
            {
                //GetComponent<SpriteRenderer>().sprite = Sprites[0];
                PlantState = GameMaster.PlantState.Trimmed;
            }
            else if (timer < 120)
            {
                //GetComponent<SpriteRenderer>().sprite = Sprites[0];
                PlantState = GameMaster.PlantState.Overgrowth;
            }
            else if (timer < 200)
            {
                GetComponent<SpriteRenderer>().sprite = Sprites[0];
                PlantState = GameMaster.PlantState.JustPlanted;
            }
        }
        else
            NiceTime = string.Format("0:00");
    }

    public void resetTimer()
    {
        timer = 10;
    }
}
