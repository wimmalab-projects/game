using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class PlantGround : MonoBehaviour
{

    public bool isPlanted;
    public string plantName;
    public Sprite plantSprite;
    private float timer = 200;
    private int harvestTimeMinutes;
    private int harvestTimeSeconds;
    public string niceTime;

    public List<Sprite> Sprites = new List<Sprite>();


    public GameMaster.PlantState plantState = GameMaster.PlantState.NotPlanted;
	
	// Update is called once per frame
	void Update ()
    {
        if(plantState != GameMaster.PlantState.NotPlanted)
        {
            timer -= Time.deltaTime;
            harvestTimeMinutes = Mathf.FloorToInt(timer / 60F);
            harvestTimeSeconds = Mathf.FloorToInt(timer - harvestTimeMinutes * 60);
            niceTime = string.Format("{0:0}:{1:00}", harvestTimeMinutes, harvestTimeSeconds);

            if (timer == 0)
            {
                plantState = GameMaster.PlantState.Grapes;
                
            }
            else if (timer < 60)
            {
                plantState = GameMaster.PlantState.Trimmed;
            }
            else if (timer < 120)
            {
                plantState = GameMaster.PlantState.Overgrowth;
            }
            else if (timer < 200)
            {
                GetComponent<SpriteRenderer>().sprite = Sprites[0];
                plantState = GameMaster.PlantState.JustPlanted;
            }
        }
	}
}
