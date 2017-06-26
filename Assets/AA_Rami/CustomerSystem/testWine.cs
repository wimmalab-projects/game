using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class testWine : MonoBehaviour {

    Wine wineTest;


	// Use this for initialization
	void Start () {
        wineTest = new Wine();

        // appearance
        wineTest.AClarity = Wine.AppearanceClarity.Hazy;
        wineTest.AIntensity = Wine.AppearanceIntensity.Pale;
        wineTest.Color(Wine.AppearanceColorGategories.WhiteWineColour, (int)Wine.AppearanceWhiteWineColor.Gold);

        // nose
        wineTest.NCondition = Wine.NoseCondition.Clean;
        wineTest.NIntensity = Wine.NoseIntensity.Light;
        wineTest.Aromas[0] = wineTest.Aroma((int)Wine.MainGategories.Nose, (int)Wine.NoseGategories.Aroma, (int)Wine.AromaAndFlavourGategories.FloralFruit, (int)Wine.FloralFruitGategories.CitrusFruit, (int)Wine.AromaAndFlavourCitrusFruit.Grapefruit);
        wineTest.Aromas[1] = wineTest.Aroma((int)Wine.MainGategories.Nose, (int)Wine.NoseGategories.Aroma, (int)Wine.AromaAndFlavourGategories.OakOther, (int)Wine.OakOtherGategories.Autolytic, (int)Wine.AromaAndFlavourAutolytic.Yeast);
        wineTest.Aromas[2] = wineTest.Aroma((int)Wine.MainGategories.Nose, (int)Wine.NoseGategories.Aroma, (int)Wine.AromaAndFlavourGategories.FloralFruit, (int)Wine.FloralFruitGategories.GreenFruit, (int)Wine.AromaAndFlavourGreenFruit.GreenApple);

        wineTest.PSweetness = Wine.PalateSweetness.Dry;
        wineTest.PAcidity = Wine.PalateAcidity.Medium;
        wineTest.PTannin = Wine.PalateTannin.Low;
        wineTest.PBody = Wine.PalateBody.Full;
        wineTest.Flavours[0] = wineTest.Aroma((int)Wine.MainGategories.Palate, (int)Wine.PalateGategories.FlavourCharasteristics, (int)Wine.AromaAndFlavourGategories.SpiceVegetable, (int)Wine.SpiceVegetableGategories.Underripeness, (int)Wine.AromaAndFlavourUnderripeness.GreenBellPepper);
        wineTest.Flavours[1] = wineTest.Aroma((int)Wine.MainGategories.Palate, (int)Wine.PalateGategories.FlavourCharasteristics, (int)Wine.AromaAndFlavourGategories.SpiceVegetable, (int)Wine.SpiceVegetableGategories.Herbal, (int)Wine.AromaAndFlavourHerbal.Lavender);
        wineTest.Flavours[2] = wineTest.Aroma((int)Wine.MainGategories.Palate, (int)Wine.PalateGategories.FlavourCharasteristics, (int)Wine.AromaAndFlavourGategories.FloralFruit, (int)Wine.FloralFruitGategories.DriedFruit, (int)Wine.AromaAndFlavourDriedFruit.Raisin);
        wineTest.PFinish = Wine.PalateFinish.Medium;

        wineTest.WineQuality = Wine.Quality.Acceptable;








        int[][] test = wineTest.GetMatrixes();
        string line = "s";

        for (int i = 0; i < test.Length; i++)
        {
            for (int x = 0; x < test[i].Length; x++)
            {
                line += test[i][x] + ", ";
            }
            Debug.Log(line);
            line = "";
        }
    }
	
	// Update is called once per frame
	void Update () {
		
	}
}
