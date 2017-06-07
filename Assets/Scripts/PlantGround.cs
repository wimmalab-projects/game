using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class PlantGround : MonoBehaviour {

    public bool isPlanted;
    public string plantName;
    public Sprite plantSprite;
    private float timer = 300;
    private int harvestTimeMinutes;
    private int harvestTimeSeconds;
    public string niceTime;

    // Use this for initialization
    void Start ()
    {
		
	}
	
	// Update is called once per frame
	void Update ()
    {
        if(isPlanted)
        {
            timer -= Time.deltaTime;
            harvestTimeMinutes = Mathf.FloorToInt(timer / 60F);
            harvestTimeSeconds = Mathf.FloorToInt(timer - harvestTimeMinutes * 60);
            niceTime = string.Format("{0:0}:{1:00}", harvestTimeMinutes, harvestTimeSeconds);
        }
	}
}
