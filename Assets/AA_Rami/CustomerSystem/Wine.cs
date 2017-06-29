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
        int similiarities = 0;

        // complexity of O(n^2) that is bad mmkaay!
        // reason this is n^2 is because of smells and tastes. they may not be in same order as the others.

        //for (int i = 0; i < readyMatrix.Length; i++)
        //{
        //    for (int x = 0; x < wine.readyMatrix.Length; x++)
        //    {
        //        if (System.Linq.Enumerable.SequenceEqual(readyMatrix[i], wine.readyMatrix[x]))
        //            similiarities++;
        //    }
        //}
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
     public int[] AromaFlavour(Enum AromaFlavourGategory, Enum AromaFlavorSubGategory, Enum FinalValue)
    //public int[] AromaFlavour(Enum FinalValue)
    {
        int[] temp = new int[3];

        string gategory = Enum.GetName(typeof(MainGategories), MainGategories.Aroma);
        string subgategory = Enum.GetName(AromaFlavorSubGategory.GetType(), AromaFlavorSubGategory);
        string finalvalue = Enum.GetName(FinalValue.GetType(), FinalValue);

        string[] gategories = Enum.GetNames(AromaFlavourGategory.GetType());
        string[] subgategories = Enum.GetNames(AromaFlavorSubGategory.GetType());
        string[] finalvalues = Enum.GetNames(FinalValue.GetType());

        string[] checkValues = Enum.GetNames(AromaFlavorSubGategory.GetType());

        if (("Wine+" + subgategory) == FinalValue.GetType().ToString())// check that the AromaFlavorSubgategory actually holds the final value
        {
            for (int i = 0; i < gategories.Length; i++)
            {
                if (gategories[i] == gategory)
                {
                    temp[0] = i;
                }
            }
            for (int i = 0; i < subgategories.Length; i++)
            {
                if (subgategories[i] == subgategory)
                {
                    temp[1] = i;
                }
            }
            for (int i = 0; i < finalvalues.Length; i++)
            {
                if (finalvalues[i] == finalvalue)
                {
                    temp[2] = i;
                }
            }
        }
        else
            return null;

        return temp;
    }

    #region Matrix generator

    public Clarity clarity;
    public Condition condition;
    public Intensity intensity;
    public Sweetness sweetness;
    public Acidity acidity;
    public Tannin tannin;
    public Body body;
    public Finish finish;

    public List<int[]> Aromas = new List<int[]>();
    public List<int[]> Flavours = new List<int[]>();

    public void CreateMatrix ()
    {

    }

    #endregion
    #endregion
}
