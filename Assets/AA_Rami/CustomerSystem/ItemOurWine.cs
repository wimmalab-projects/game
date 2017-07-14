using System.Collections;
using System.Collections.Generic;
using UnityEngine;

[System.Serializable]
public class ItemOurWine : Item
{
    public bool IsSellable;
    public float AlcoholLevel;
    public Wine.WineType wineType = Wine.WineType.RedWine;
    public Wine.Clarity clarity = Wine.Clarity.Hazy;
    public Wine.Condition condition = Wine.Condition.Unclean;
    public Wine.Intensity intensity = Wine.Intensity.Medium;
    public Wine.Sweetness sweetness = Wine.Sweetness.Medium;
    public Wine.Acidity acidity = Wine.Acidity.Medium;
    public Wine.Tannin tannin = Wine.Tannin.High;
    public Wine.Body body = Wine.Body.Medium;
    public List<Wine.AromaFlavor>   aromasAndFlavors;
}
