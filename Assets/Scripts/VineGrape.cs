using System.Collections.Generic;

/// <summary>
/// Container for grape item or vine item.
/// </summary>
[System.Serializable]
public class VineGrape : Item {

    public GrapeOrVine GoV;
    public float AlcoholLevel;
    public Acidity AcidLevel;
    public List<Wine.AromaFlavor> AromasFlavors;
    public Wine.Intensity AromaIntensity;

    /// <summary>
    /// Are we talking about the the vine that grows the grape or the actual grape
    /// </summary>
    public enum GrapeOrVine
    {
        Grape,
        Vine
    }

    /// <summary>
    /// Level of acidity in the grape's juice
    /// </summary>
    public enum Acidity
    {
        Low,
        Medium,
        High
    }
}
