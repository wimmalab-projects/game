using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class ItemOurWine : Item
{
    public Wine.WineType            wineType;
    public Wine.Clarity             clarity;
    public Wine.Condition           condition;
    public Wine.Intensity           intensity;
    public Wine.Sweetness           sweetness;
    public Wine.Acidity             acidity;
    public Wine.Tannin              tannin;
    public Wine.Body                body;
    public List<Wine.AromaFlavor>   aromasAndFlavors;
}
