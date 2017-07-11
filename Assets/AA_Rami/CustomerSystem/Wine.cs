using System;
using System.Collections.Generic;

public class Wine
{

    #region Enums
    
    public enum MainGategories { WineType, Clarity, Condition, Intensity, Sweetness, Acidity, Tannin, Body, AromaFlavor };
    public enum WineType { WhiteWine, RoseWine, RedWine, SparklingWhiteWine, SparklingRoseWine, SparklingRedWine }
    public enum Clarity { Clear, Hazy };
    public enum Condition { Clean, Unclean };
    public enum Intensity { Light, Medium, Pronounced };
    public enum Sweetness { Dry, OffDry, Medium, Sweet };
    public enum Acidity { Low, Medium, High };
    public enum Tannin { Low, Medium, High };
    public enum Body { Light, Medium, Full };

    public enum AromaFlavor
    {
        Blossom, Rose, Violet, GreenApple, RedApple, GooseBerry, Pear, Grape, GrapeFruit, Lemon, Limejuice, LimeZest, Peach, Apricot, Nectarine, 
        Banana, Lychee, Mango, Melon, PassionFruit, Pineapple, Redcurrant, Cranberry, Raspberry, Strawberry, RedCherry, Plum, Blackcurrant, Blackberry, Blueberry, Blackcherry,
        Fig, Prune, Raisin, Sultana, Kirsch, Jamminess, Cooked, Baked, StewedFruits, PreservedFruits, GreenBellPepper, Grass, WhitePepper, Leafiness, Tomato, Potato,
        Asparagus, BlackcurrantLeaf, Eucalyptus, Mint, Medicinal, Lavender, Fennel, Dill, Cabbage, Peas, Beans, BlackOlive, GreenOlive, Cinnamon, Cloves, Ginger, Nutmeg, Vanilla,
        BlackPepper, Liquorice, Juniper, Yeast, Biscuit, Bread, Toast, Pastry, Lees, Butter, Cheese, Cream, Yoghurt, Cedar, CharredWood, Smoke, Resinous,
        Almond, Coconut, Hazelnut, Walnut, Chocolate, Coffee, Leather, Meaty, Farmyard, Vegetal, Mushroom, Hay, WetLeaves, ForestFloor, Game, Savoury, Tobacco, Honey, Cereal,
        Earth, Petrol, Rubber, Tar, Stony, Steely, WetWool, Guava, Rosemary, Chalk
    };

    #endregion

    #region Methods

    /// <summary>
    /// Create a row directly to final matrix based on input.
    /// Method checks internally that the final value is held inside the flavor gategory as a valid choise
    /// so that the matrix isn't created having floral gategory as subgategory with maturity 
    /// gategory cereal as final value
    /// Returns null if failed input
    /// </summary>
    /// <param name="AromaFlavorGategory"></param>
    /// <param name="AromaFlavorSubGategory"></param>
    /// <param name="FinalValue"></param>
    /// <returns>One Complete line for our matrix containing either an a Aroma or a Flavor</returns>
    public int[] AromasAndFlavors(Enum MainGategory, Enum Value)
    {

        int[] temp = new int[3];

        // MainGategory to integer matrix
        string[] mainGategories = Enum.GetNames(typeof(MainGategories));
        for (int i = 0; i < mainGategories.Length; i++)
        {
            if (mainGategories[i] == MainGategory.ToString())
            {
                temp[0] = i;
            }
        }

        // AromaFlavorGategory to integer in matrix
        string[] subGategories = Enum.GetNames(typeof(AromaFlavor));
        for (int i = 0; i < subGategories.Length; i++)
        {
            if ("Wine+" + subGategories[i] == Value.GetType().ToString())
            {
                temp[1] = i;
            }
        }

        // final value to matrix
        string[] finalvalues = Enum.GetNames(Value.GetType());
        for (int i = 0; i < finalvalues.Length; i++)
        {
            if (finalvalues[i] == Value.ToString())
            {
                temp[2] = i;
            }
        }

        return temp;
    }

    #region Matrix generator

    public WineType     wineType;
    public Clarity      clarity;
    public Condition    condition;
    public Intensity    intensity;
    public Sweetness    sweetness;
    public Acidity      acidity;
    public Tannin       tannin;
    public Body         body;

    public List<AromaFlavor> AromasFlavors = new List<AromaFlavor>();

    public List<int[]> ComparisonMatrix;

    /// <summary>
    /// CreateMatrix that you can compare between wines.
    /// </summary>
    /// <returns></returns>
    public List<int[]> CreateMatrix ()
    {
        List<int[]> tempList = new List<int[]>();

        tempList.Add(new int[] { (int)MainGategories.WineType, (int)wineType });
        tempList.Add(new int[] { (int)MainGategories.Clarity, (int)clarity });
        tempList.Add(new int[] { (int)MainGategories.Condition, (int)condition });
        tempList.Add(new int[] { (int)MainGategories.Intensity, (int)intensity });
        tempList.Add(new int[] { (int)MainGategories.Sweetness, (int)sweetness });
        tempList.Add(new int[] { (int)MainGategories.Acidity, (int)acidity });
        tempList.Add(new int[] { (int)MainGategories.Tannin, (int)tannin });
        tempList.Add(new int[] { (int)MainGategories.Body, (int)body });

        // add aromas
        foreach (AromaFlavor af in AromasFlavors)
        {
            tempList.Add(new int[] { (int)MainGategories.AromaFlavor, (int)af });
        }

        return tempList;
    }

    #endregion

    #endregion
}
