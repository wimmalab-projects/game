using System;
using System.Collections;
using System.Collections.Generic;
//using UnityEditor;
using System.Linq;
using UnityEngine;

public class WinePrefab : MonoBehaviour
{
    private Wine wineHolder;
    public Wine WineHolder
    {
        get
        {
            return wineHolder;
        }
    }

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

    [Header("Appearance")]
    public Wine.WineType wineType; // these need to be public so they can be edited in editor
    public Wine.Clarity clarity;
    [Space(10)]

    [Header("Nose")]
    public Wine.Condition condition;
    public Wine.Intensity intensity;
    public List<AromasAndFlavours> Aromas;
    [Space(10)]

    [Header("Palate")]
    public Wine.Sweetness sweetness;
    public Wine.Acidity acidity;
    public Wine.Tannin tannin;
    public Wine.Body body;
    public Wine.Finish finish;
    public List<AromasAndFlavours> Flavours;

    // Use this for initialization
    void Start()
    {
        wineHolder = new Wine();

        WineHolder.clarity = clarity;
        WineHolder.condition = condition;
        WineHolder.intensity = intensity;
        WineHolder.sweetness = sweetness;
        WineHolder.acidity = acidity;
        WineHolder.tannin = tannin;
        WineHolder.body = body;
        WineHolder.finish = finish;

        CreateAromaFlavour(Wine.MainGategories.Aroma, Aromas, WineHolder.Aromas);
        CreateAromaFlavour(Wine.MainGategories.Flavour, Flavours, WineHolder.Flavours);

        WineHolder.ComparisonMatrix = WineHolder.CreateMatrix();
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
                    targetList.Add(WineHolder.AromaFlavour(MainGategory, aaf.floral));
                    break;
                case Wine.AromaFlavourGategories.GreenFruit:
                    targetList.Add(WineHolder.AromaFlavour(MainGategory, aaf.greenFruit));
                    break;
                case Wine.AromaFlavourGategories.CitrusFruit:
                    targetList.Add(WineHolder.AromaFlavour(MainGategory, aaf.citrusFruit));
                    break;
                case Wine.AromaFlavourGategories.StoneFruit:
                    targetList.Add(WineHolder.AromaFlavour(MainGategory, aaf.stoneFruit));
                    break;
                case Wine.AromaFlavourGategories.TropicalFruit:
                    targetList.Add(WineHolder.AromaFlavour(MainGategory, aaf.tropicalFruit));
                    break;
                case Wine.AromaFlavourGategories.RedFruit:
                    targetList.Add(WineHolder.AromaFlavour(MainGategory, aaf.redFruit));
                    break;
                case Wine.AromaFlavourGategories.BlackFruit:
                    targetList.Add(WineHolder.AromaFlavour(MainGategory, aaf.blackFruit));
                    break;
                case Wine.AromaFlavourGategories.DriedFruit:
                    targetList.Add(WineHolder.AromaFlavour(MainGategory, aaf.driedFruit));
                    break;
                case Wine.AromaFlavourGategories.Underripeness:
                    targetList.Add(WineHolder.AromaFlavour(MainGategory, aaf.underripeness));
                    break;
                case Wine.AromaFlavourGategories.Herbaceous:
                    targetList.Add(WineHolder.AromaFlavour(MainGategory, aaf.herbaceous));
                    break;
                case Wine.AromaFlavourGategories.Herbal:
                    targetList.Add(WineHolder.AromaFlavour(MainGategory, aaf.herbal));
                    break;
                case Wine.AromaFlavourGategories.Vegetable:
                    targetList.Add(WineHolder.AromaFlavour(MainGategory, aaf.vegetable));
                    break;
                case Wine.AromaFlavourGategories.SweetSpice:
                    targetList.Add(WineHolder.AromaFlavour(MainGategory, aaf.sweetSpice));
                    break;
                case Wine.AromaFlavourGategories.PungentSpice:
                    targetList.Add(WineHolder.AromaFlavour(MainGategory, aaf.pungentSpice));
                    break;
                case Wine.AromaFlavourGategories.Autolytic:
                    targetList.Add(WineHolder.AromaFlavour(MainGategory, aaf.autolytic));
                    break;
                case Wine.AromaFlavourGategories.Dairy:
                    targetList.Add(WineHolder.AromaFlavour(MainGategory, aaf.dairy));
                    break;
                case Wine.AromaFlavourGategories.Oak:
                    targetList.Add(WineHolder.AromaFlavour(MainGategory, aaf.oak));
                    break;
                case Wine.AromaFlavourGategories.Kernel:
                    targetList.Add(WineHolder.AromaFlavour(MainGategory, aaf.kernel));
                    break;
                case Wine.AromaFlavourGategories.Animal:
                    targetList.Add(WineHolder.AromaFlavour(MainGategory, aaf.animal));
                    break;
                case Wine.AromaFlavourGategories.Maturity:
                    targetList.Add(WineHolder.AromaFlavour(MainGategory, aaf.maturity));
                    break;
                case Wine.AromaFlavourGategories.Mineral:
                    targetList.Add(WineHolder.AromaFlavour(MainGategory, aaf.mineral));
                    break;
            }
        }
    }
}