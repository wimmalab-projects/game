using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using UnityEngine;

public class WinePrefab : MonoBehaviour
{
    Wine wineTest;

    public Wine.Clarity clarity;
    public Wine.Condition condition;
    public Wine.Intensity intensity;
    public Wine.Sweetness sweetness;
    public Wine.Acidity acidity;
    public Wine.Tannin tannin;
    public Wine.Body body;
    public Wine.Finish finish;

    [System.Serializable]
    public class AromasAndFlavours
    {
        public Wine.AromaFlavourGategories gategories;

        public Wine.Floral floral;
        public Wine.GreenFruit greenFruit;
        public Wine.CitrusFruit citrusFruit;
        public Wine.StoneFruit stoneFruit;
        public Wine.TropicalFruit tropicalFruit;
        public Wine.RedFruit redFruit;
        public Wine.BlackFruit blackFruit;
        public Wine.DriedFruit driedFruit;
        public Wine.Underripeness underripeness;
        public Wine.Herbaceous herbaceous;
        public Wine.Herbal herbal;
        public Wine.Vegetable vegetable;
        public Wine.SweetSpice sweetSpice;
        public Wine.PungentSpice pungentSpice;
        public Wine.Autolytic autolytic;
        public Wine.Dairy dairy;
        public Wine.Oak oak;
        public Wine.Kernel kernel;
        public Wine.Animal animal;
        public Wine.Maturity maturity;
        public Wine.Mineral mineral;
    }
    public List<AromasAndFlavours> Aromas, Flavours;


    // Use this for initialization
    void Start()
    {

        wineTest = new Wine();

        wineTest.clarity = clarity;
        wineTest.condition = condition;
        wineTest.intensity = intensity;
        wineTest.sweetness = sweetness;
        wineTest.acidity = acidity;
        wineTest.tannin = tannin;
        wineTest.body = body;
        wineTest.finish = finish;

        CreateAromaFlavour(Wine.MainGategories.Aroma, Aromas, wineTest.Aromas);
        CreateAromaFlavour(Wine.MainGategories.Flavour, Flavours, wineTest.Flavours);

        wineTest.ComparisonMatrix = wineTest.CreateMatrix();

        //foreach (int[] i in wineTest.ComparisonMatrix)
        //{
        //    string s = "";
        //    foreach (int ii in i)
        //    {
        //        s += ii + ",";
        //    }
        //    Debug.Log(s);
        //}
    }

    public void CreateAromaFlavour (Enum MainGategory, List<AromasAndFlavours> collection, List<int[]> targetList)
    {
        if (!(MainGategory.ToString() == Wine.MainGategories.Aroma.ToString() || MainGategory.ToString() == Wine.MainGategories.Flavour.ToString()))
        {
            Debug.Log("testi");
            return;
        }

        foreach (AromasAndFlavours aaf in collection)
        {
            switch (aaf.gategories)
            {
                case Wine.AromaFlavourGategories.Floral:
                    targetList.Add(wineTest.AromaFlavour(MainGategory, aaf.floral));
                    break;
                case Wine.AromaFlavourGategories.GreenFruit:
                    targetList.Add(wineTest.AromaFlavour(MainGategory, aaf.greenFruit));
                    break;
                case Wine.AromaFlavourGategories.CitrusFruit:
                    targetList.Add(wineTest.AromaFlavour(MainGategory, aaf.citrusFruit));
                    break;
                case Wine.AromaFlavourGategories.StoneFruit:
                    targetList.Add(wineTest.AromaFlavour(MainGategory, aaf.stoneFruit));
                    break;
                case Wine.AromaFlavourGategories.TropicalFruit:
                    targetList.Add(wineTest.AromaFlavour(MainGategory, aaf.tropicalFruit));
                    break;
                case Wine.AromaFlavourGategories.RedFruit:
                    targetList.Add(wineTest.AromaFlavour(MainGategory, aaf.redFruit));
                    break;
                case Wine.AromaFlavourGategories.BlackFruit:
                    targetList.Add(wineTest.AromaFlavour(MainGategory, aaf.blackFruit));
                    break;
                case Wine.AromaFlavourGategories.DriedFruit:
                    targetList.Add(wineTest.AromaFlavour(MainGategory, aaf.driedFruit));
                    break;
                case Wine.AromaFlavourGategories.Underripeness:
                    targetList.Add(wineTest.AromaFlavour(MainGategory, aaf.underripeness));
                    break;
                case Wine.AromaFlavourGategories.Herbaceous:
                    targetList.Add(wineTest.AromaFlavour(MainGategory, aaf.herbaceous));
                    break;
                case Wine.AromaFlavourGategories.Herbal:
                    targetList.Add(wineTest.AromaFlavour(MainGategory, aaf.herbal));
                    break;
                case Wine.AromaFlavourGategories.Vegetable:
                    targetList.Add(wineTest.AromaFlavour(MainGategory, aaf.vegetable));
                    break;
                case Wine.AromaFlavourGategories.SweetSpice:
                    targetList.Add(wineTest.AromaFlavour(MainGategory, aaf.sweetSpice));
                    break;
                case Wine.AromaFlavourGategories.PungentSpice:
                    targetList.Add(wineTest.AromaFlavour(MainGategory, aaf.pungentSpice));
                    break;
                case Wine.AromaFlavourGategories.Autolytic:
                    targetList.Add(wineTest.AromaFlavour(MainGategory, aaf.autolytic));
                    break;
                case Wine.AromaFlavourGategories.Dairy:
                    targetList.Add(wineTest.AromaFlavour(MainGategory, aaf.dairy));
                    break;
                case Wine.AromaFlavourGategories.Oak:
                    targetList.Add(wineTest.AromaFlavour(MainGategory, aaf.oak));
                    break;
                case Wine.AromaFlavourGategories.Kernel:
                    targetList.Add(wineTest.AromaFlavour(MainGategory, aaf.kernel));
                    break;
                case Wine.AromaFlavourGategories.Animal:
                    targetList.Add(wineTest.AromaFlavour(MainGategory, aaf.animal));
                    break;
                case Wine.AromaFlavourGategories.Maturity:
                    targetList.Add(wineTest.AromaFlavour(MainGategory, aaf.maturity));
                    break;
                case Wine.AromaFlavourGategories.Mineral:
                    targetList.Add(wineTest.AromaFlavour(MainGategory, aaf.mineral));
                    break;
            }
        }
    }
}