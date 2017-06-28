using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using UnityEngine;

public class TestWineOne : MonoBehaviour {

    Wine wineTest;

    public GameObject go;
    Wine wineTwo;

    // Use this for initialization
    void Start () {

        wineTwo = go.GetComponent<TestWineTwo>().wineTest;

        wineTest = new Wine();
        
        wineTest.AClarity = Wine.AppearanceClarity.Clear;
        wineTest.AIntensity = Wine.AppearanceIntensity.Deep;

        wineTest.Color(Wine.AppearanceColorGategories.RedWineColour, (int)Wine.AppearanceRedWineColor.Purple);

        wineTest.NCondition = Wine.NoseCondition.Clean;
        wineTest.NIntensity = Wine.NoseIntensity.Deep;

        wineTest.Aromas[0] = wineTest.Aroma((int)Wine.MainGategories.Nose, (int)Wine.NoseGategories.Aroma, (int)Wine.AromaAndFlavourGategories.FloralFruit,     (int)Wine.FloralFruitGategories.CitrusFruit,        (int)Wine.AromaAndFlavourCitrusFruit.Grapefruit);
        wineTest.Aromas[1] = wineTest.Aroma((int)Wine.MainGategories.Nose, (int)Wine.NoseGategories.Aroma, (int)Wine.AromaAndFlavourGategories.OakOther,        (int)Wine.OakOtherGategories.Kernel,                (int)Wine.AromaAndFlavourKernel.Almond);
        wineTest.Aromas[2] = wineTest.Aroma((int)Wine.MainGategories.Nose, (int)Wine.NoseGategories.Aroma, (int)Wine.AromaAndFlavourGategories.SpiceVegetable,  (int)Wine.SpiceVegetableGategories.PungentSpice,    (int)Wine.AromaAndFlavourPungentSpice.BlackPepper);

        wineTest.PSweetness = Wine.PalateSweetness.Dry;
        wineTest.PAcidity = Wine.PalateAcidity.Medium;
        wineTest.PTannin = Wine.PalateTannin.Low;
        wineTest.PBody = Wine.PalateBody.Full;

        wineTest.Flavours[0] = wineTest.Aroma((int)Wine.MainGategories.Palate, (int)Wine.PalateGategories.FlavourCharasteristics, (int)Wine.AromaAndFlavourGategories.FloralFruit,      (int)Wine.FloralFruitGategories.CitrusFruit,    (int)Wine.AromaAndFlavourCitrusFruit.Grapefruit);
        wineTest.Flavours[1] = wineTest.Aroma((int)Wine.MainGategories.Palate, (int)Wine.PalateGategories.FlavourCharasteristics, (int)Wine.AromaAndFlavourGategories.OakOther,         (int)Wine.OakOtherGategories.Maturity,          (int)Wine.AromaAndFlavourMaturity.Cedar);
        wineTest.Flavours[2] = wineTest.Aroma((int)Wine.MainGategories.Palate, (int)Wine.PalateGategories.FlavourCharasteristics, (int)Wine.AromaAndFlavourGategories.SpiceVegetable,   (int)Wine.SpiceVegetableGategories.Herbal,      (int)Wine.AromaAndFlavourHerbal.Dill);
        
        wineTest.PFinish = Wine.PalateFinish.Medium;

        wineTest.WineQuality = Wine.Quality.Acceptable;

        wineTest.readyMatrix = wineTest.GetMatrixes();
        wineTwo.readyMatrix = wineTwo.GetMatrixes();
        int i = wineTest.CompareWines(wineTwo);

        Debug.Log("Wines had " + i + " similiarities");
    }

    
}