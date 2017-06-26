using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class testWine : MonoBehaviour {

    Wine wineTest;


	// Use this for initialization
	void Start () {
        wineTest = new Wine();

        wineTest.AClarity = Wine.AppearanceClarity.Hazy;
        wineTest.AIntensity = Wine.AppearanceIntensity.Medium;








	}
	
	// Update is called once per frame
	void Update () {
		
	}
}
