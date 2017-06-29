using System;
using System.Collections.Generic;

public class Wine
{

    #region Enums

    #region Main Gategories and Gategory specifig Enums

    public enum MainGategories { Clarity, Condition, Intensity, Sweetness, Acidity, Tannin, Body, Finish, Aroma, Flavour };
    public enum Clarity { Clear, Hazy };
    public enum Condition { Clean, Unclean };
    public enum Intensity { Light, Medium, Pronounced };
    public enum Sweetness { Dry, OffDry, Medium, Sweet };
    public enum Acidity { Low, Medium, High };
    public enum Tannin { Low, Medium, High };
    public enum Body { Light, Medium, Full };
    public enum Finish { Short, Medium, Long };

    #endregion

    #region Aroma and Flavour enums

    public enum AromaFlavourGategories
    {
        Floral, GreenFruit, CitrusFruit, StoneFruit, TropicalFruit, RedFruit, BlackFruit,
        DriedFruit, Underripeness, Herbaceous, Herbal, Vegetable, SweetSpice, PungentSpice,
        Autolytic, Dairy, Oak, Kernel, Animal, Maturity, Mineral
    };
    public enum Floral { Blossom, Rose, Violet };
    public enum GreenFruit { GreenApple, RedApple, GooseBerry, Pear, Grape };
    public enum CitrusFruit { GrapeFruit, Lemon, Limejuice, LimeZest };
    public enum StoneFruit { Peach, Apricot, Nectarine };
    public enum TropicalFruit { Banana, Lychee, Mango, Melon, PassionFruit, Pineapple };
    public enum RedFruit { Redcurrant, Cranberry, Raspberry, Strawberry, RedCherry, Plum };
    public enum BlackFruit { Blackcurrant, Blackberry, Blueberry, Blackcherry };
    public enum DriedFruit { Fig, Prune, Raisin, Sultana, Kirsch, Jamminess, Cooked, Baked, StewedFruits, PreservedFruits };
    public enum Underripeness { GreenBellPepper, Grass, WhitePepper, Leafiness, Tomato, Potato };
    public enum Herbaceous { Grass, Asparagus, BlackcurrantLeaf };
    public enum Herbal { Eucalyptus, Mint, Medicinal, Lavender, Fennel, Dill };
    public enum Vegetable { Cabbage, Peas, Beans, BlackOlive, GreenOlive };
    public enum SweetSpice { Cinnamon, Cloves, Ginger, Nutmeg, Vanilla };
    public enum PungentSpice { BlackPepper, WhitePepper, Liquorice, Juniper };
    public enum Autolytic { Yeast, Biscuit, Bread, Toast, Pastry, Lees };
    public enum Dairy { Butter, Cheese, Cream, Yoghurt };
    public enum Oak { Vanilla, Toast, Cedar, CharredWood, Smoke, Resinous };
    public enum Kernel { Almond, Coconut, Hazelnut, Walnut, Chocolate, Coffee };
    public enum Animal { Leather, Meaty, Farmyard };
    public enum Maturity { Vegetal, Mushroom, Hay, WetLeaves, ForestFloor, Game, Savoury, Tobacco, Cedar, Honey, Cereal };
    public enum Mineral { Earth, Petrol, Rubber, Tar, Stony, Steely, WetWool };

    #endregion
    #endregion

    #region Methods

    /// <summary>
    /// Compare other wine to this wine and return the number of matches
    /// </summary>
    /// <param name="wine"></param>
    /// <returns></returns>
    public int CompareWines(Wine wine)
    {
        wine.ComparisonMatrix = wine.CreateMatrix(); // make sure comparison wine matrix is not null

        int similiarities = 0;

        for (int i = 0; i < ComparisonMatrix.Count; i++)
        {
            for (int x = 0; x < wine.ComparisonMatrix.Count; x++)
            {
                if (System.Linq.Enumerable.SequenceEqual(ComparisonMatrix[i], wine.ComparisonMatrix[x]))
                    similiarities++;
            }
        }
        return similiarities;
    }

    /// <summary>
    /// Create a row directly to final matrix based on input.
    /// Method checks internally that the final value is held inside the flavor gategory as a valid choise
    /// so that the matrix isn't created having floral gategory as subgategory with maturity 
    /// gategory cereal as final value
    /// Returns null if failed input
    /// </summary>
    /// <param name="AromaFlavourGategory"></param>
    /// <param name="AromaFlavorSubGategory"></param>
    /// <param name="FinalValue"></param>
    /// <returns>One Complete line for our matrix containing either an a Aroma or a Flavour</returns>
    public int[] AromaFlavour(Enum MainGategory, Enum Value)
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

        // AromaFlavourGategory to integer in matrix
        string[] subGategories = Enum.GetNames(typeof(AromaFlavourGategories));
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

    public Clarity      clarity;
    public Condition    condition;
    public Intensity    intensity;
    public Sweetness    sweetness;
    public Acidity      acidity;
    public Tannin       tannin;
    public Body         body;
    public Finish       finish;

    public List<int[]> Aromas = new List<int[]>();

    public List<int[]> Flavours = new List<int[]>();

    public List<int[]> ComparisonMatrix;

    /// <summary>
    /// CreateMatrix that you can compare between wines.
    /// </summary>
    /// <returns></returns>
    public List<int[]> CreateMatrix ()
    {
        List<int[]> tempList = new List<int[]>();

        tempList.Add(new int[] { (int)MainGategories.Clarity, (int)clarity });
        tempList.Add(new int[] { (int)MainGategories.Condition, (int)condition });
        tempList.Add(new int[] { (int)MainGategories.Intensity, (int)intensity });
        tempList.Add(new int[] { (int)MainGategories.Sweetness, (int)sweetness });
        tempList.Add(new int[] { (int)MainGategories.Acidity, (int)acidity });
        tempList.Add(new int[] { (int)MainGategories.Tannin, (int)tannin });
        tempList.Add(new int[] { (int)MainGategories.Body, (int)body });
        tempList.Add(new int[] { (int)MainGategories.Finish, (int)finish });

        // add aromas
        foreach (int[] iArr in Aromas)
        {
            tempList.Add(iArr);
        }

        // add flavours
        foreach (int[] iArr in Flavours)
        {
            tempList.Add(iArr);
        }
        return tempList;
    }

    #endregion

    #endregion
}
