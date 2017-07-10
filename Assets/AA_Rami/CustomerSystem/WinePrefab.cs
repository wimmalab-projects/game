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

    [Header("Appearance")]
    public Wine.WineType wineType; // these need to be public so they can be edited in editor
    public Wine.Clarity clarity;
    [Space(10)]

    [Header("Nose")]
    public Wine.Condition condition;
    public Wine.Intensity intensity;
    [Space(10)]

    [Header("Palate")]
    public Wine.Sweetness sweetness;
    public Wine.Acidity acidity;
    public Wine.Tannin tannin;
    public Wine.Body body;
    [Space(10)]

    [Header("Aromas and Flavors")]
    public List<Wine.AromaFlavor> aromasAndFlavors;


    // Use this for initialization
    void Start()
    {
        wineHolder = new Wine();

        WineHolder.wineType = wineType;
        WineHolder.clarity = clarity;
        WineHolder.condition = condition;
        WineHolder.intensity = intensity;
        WineHolder.sweetness = sweetness;
        WineHolder.acidity = acidity;
        WineHolder.tannin = tannin;
        WineHolder.body = body;

        foreach (Wine.AromaFlavor af in aromasAndFlavors)
        {
            WineHolder.AromasFlavors.Add(af);
        }

        WineHolder.ComparisonMatrix = WineHolder.CreateMatrix();
    }
}