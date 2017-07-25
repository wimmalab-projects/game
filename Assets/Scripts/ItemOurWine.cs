using System.Collections.Generic;

/// <summary>
/// what does this do again?
/// </summary>

[System.Serializable]
public class ItemOurWine : Item
{
    public bool IsBottled;
    public float AlcoholLevel;

    public Wine.WineType wineType = Wine.WineType.RedWine;
    public Wine.Clarity clarity = Wine.Clarity.Hazy;
    public Wine.Condition condition = Wine.Condition.Unclean;
    public Wine.Intensity intensity = Wine.Intensity.Medium;
    public Wine.Sweetness sweetness = Wine.Sweetness.Medium;
    public Wine.Acidity acidity = Wine.Acidity.Medium;
    public Wine.Tannin tannin = Wine.Tannin.Medium;
    public Wine.Body body = Wine.Body.Medium;
    public List<Wine.AromaFlavor> aromasAndFlavors;

    public Wine GetAttributes()
    {
        Wine wine = new Wine();

        wine.wineType = wineType;
        wine.clarity = clarity;
        wine.condition = condition;
        wine.intensity = intensity;
        wine.sweetness = sweetness;
        wine.acidity = acidity;
        wine.tannin = tannin;
        wine.body = body;
        wine.AromasFlavors = aromasAndFlavors;

        return wine;
    }
}