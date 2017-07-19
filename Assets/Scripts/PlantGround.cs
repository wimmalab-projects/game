/* Script that runs the plant process */

using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class PlantGround : MonoBehaviour
{
    public List<Sprite> Sprites = new List<Sprite>();
    public GameMaster.PlantState PlantState { get; set; }
    public bool IsPlanted { get; set; }
    public string PlantName;
    public string NiceTime { get; private set; }

    private float timer = 90;

    private bool isTimerRunning;
    private bool spritesSet;
    private Item plantItem;
    private Inventory inventory;

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

    private void Awake()
    {
        inventory = GameObject.FindGameObjectWithTag("GameManager").GetComponent<Inventory>();
    }

    private void Start()
    {
        isTimerRunning = false;
        spritesSet = false;
    }
    // Update is called once per frame
    void Update()
    {
        if (PlantState != GameMaster.PlantState.NotPlanted && PlantState != GameMaster.PlantState.Grapes)
        {
            if (timer >= 0)
            {
                isTimerRunning = true;
                timer -= Time.deltaTime;
                int harvestTimeMinutes = Mathf.FloorToInt(timer / 60F);
                int harvestTimeSeconds = Mathf.FloorToInt(timer - harvestTimeMinutes * 60);
                NiceTime = string.Format("{0:0}:{1:00}", harvestTimeMinutes, harvestTimeSeconds);
            }

            // Different states for growth, and change the sprite accordingly to that
            if (timer <= 0)
            {
                isTimerRunning = false;
                PlantState = GameMaster.PlantState.Grapes;
            }

            else if (timer < 30)
            {
                GetComponent<SpriteRenderer>().sprite = Sprites[1];
                PlantState = GameMaster.PlantState.Trimmed;
            }

            else if (timer < 60)
            {
                GetComponent<SpriteRenderer>().sprite = Sprites[3];
                PlantState = GameMaster.PlantState.Overgrowth;
            }

            else if (timer < 90)
            {
                GetComponent<SpriteRenderer>().sprite = Sprites[5];
                PlantState = GameMaster.PlantState.JustPlanted;
                
            }
        }

        else if (PlantState == GameMaster.PlantState.Grapes && !spritesSet)
        {
            SetSprites(PlantName);
        }

        else
            NiceTime = string.Format("0:00");
    }

    public void resetTimer()
    {
        timer = 90;
    }

    private void SetSprites(string name)
    {
        foreach (KeyValuePair<string, Item> pair in inventory.Items)
        {
            if (pair.Value.Name == name && ((VineGrape)pair.Value).GoV == VineGrape.GrapeOrVine.Grape)
                name = pair.Key;
        }

        plantItem = inventory.Items[name];

        if (plantItem.SpriteName == "White")
        {
            GetComponent<SpriteRenderer>().sprite = Sprites[7];
        }

        else if (plantItem.SpriteName == "Red")
        {
            GetComponent<SpriteRenderer>().sprite = Sprites[6];
        }

        else if (plantItem.SpriteName == "Black")
        {
            GetComponent<SpriteRenderer>().sprite = Sprites[0];
        }

        else if (plantItem.SpriteName == "Green")
        {
            GetComponent<SpriteRenderer>().sprite = Sprites[2];
        }

        spritesSet = true;
    }
}
