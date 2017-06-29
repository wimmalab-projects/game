using System;
/// <summary>
/// using WSET Level 2 Systematic Approach to Tasting Wine
/// 2W-Version 1.0
/// https://github.com/wimmalab-projects/wine-game/raw/master/WikiAssets/example_wine_made_with_wine_class.xlsx
/// </summary>
/// 
public class WineOld
{
    public int[][] readyMatrix;

    public static int MaximumTastesAndScents = 3;

    public int[][] Aromas = new int[MaximumTastesAndScents][]; // vois olla lista arraysta jossa useita makuja eli: List <int[]> Aromas; ???
    public int[][] Flavours = new int[MaximumTastesAndScents][];

    #region GetSets
    public AppearanceClarity AClarity { get; set; }

    public AppearanceIntensity AIntensity { get; set; }

    public AppearanceColorGategories AColorGategory { get; set; }

    public AppearanceWhiteWineColor AWhiteWineColor { get; set; }

    public AppearanceRoseWineColor ARoseWineColor { get; set; }

    public AppearanceRedWineColor ARedWineColor { get; set; }

    public NoseCondition NCondition { get; set; }

    public NoseIntensity NIntensity { get; set; }

    public PalateSweetness PSweetness { get; set; }

    public PalateAcidity PAcidity { get; set; }

    public PalateTannin PTannin { get; set; }

    public PalateBody PBody { get; set; }

    public PalateFinish PFinish { get; set; }

    public Quality WineQuality { get; set; }
    #endregion

    #region enums

    public enum MainGategories
    {
        Appearance,
        Nose,
        Palate,
        Conclusions
    };

    public enum AppearanceGategories
    {
        Clarity,
        Intensity,
        Color
    }

    public enum AppearanceClarity
    {
        Clear,
        Hazy
    };
    public enum AppearanceIntensity
    {
        Pale,
        Medium,
        Deep
    };

    public enum AppearanceColorGategories
    {
        WhiteWineColour,
        RoseWineColour,
        RedWineColour
    };
    public enum AppearanceWhiteWineColor
    {
        Lemon,
        Gold,
        Amber
    };

    public enum AppearanceRoseWineColor
    {
        Pink,
        Salmon,
        Orange
    };

    public enum AppearanceRedWineColor
    {
        Purple,
        Ruby,
        Garnet,
        Tawny
    };

    public enum NoseGategories
    {
        Condition,
        Intensity,
        Aroma
    };

    public enum NoseCondition
    {
        Clean,
        Unclean
    };

    public enum NoseIntensity
    {
        Light,
        Medium,
        Deep
    };

    // Aromas and Flavours are seperate matrices? there can be multiple aromas and flavours per wine?
    public enum AromaAndFlavourGategories
    {
        FloralFruit,
        SpiceVegetable,
        OakOther
    };

    public enum FloralFruitGategories
    {
        Floral,
        GreenFruit,
        CitrusFruit,
        StoneFruit,
        TropicalFruit,
        RedFruit,
        BlackFruit,
        DriedFruit
    };

    public enum SpiceVegetableGategories
    {
        Underripeness,
        Herbaceous,
        Herbal,
        Vegetable,
        SweetSpice,
        PungentSpice
    };

    public enum OakOtherGategories
    {
        SimplicityNeutrality,
        Autolytic,
        Dairy,
        Oak,
        Kernel,
        Animal,
        Maturity,
        Mineral
    };

    public enum AromaAndFlavourFloral
    {
        Blossom,
        Rose,
        Violet
    };

    public enum AromaAndFlavourGreenFruit
    {
        GreenApple,
        RedApple,
        Gooseberry,
        Pear,
        Grape
    };

    public enum AromaAndFlavourCitrusFruit
    {
        Grapefruit,
        Lemon,
        LimeJuice,
        LimeZest
    };

    public enum AromaAndFlavourStoneFruit
    {
        Peach,
        Apricot,
        Nectarine
    };

    public enum AromaAndFlavourTropicalFruit
    {
        Banana,
        Lychee,
        Mango,
        Melon,
        PassionFruit,
        Pineapple
    };

    public enum AromaAndFlavourRedFruit
    {
        Redcurrant,
        Cranberry,
        Raspberry,
        Strawberry,
        RedCherry,
        Plum
    };

    public enum AromaAndFlavourBlackFruit
    {
        Blackcurrant,
        Blackberry,
        Blueberry,
        BlackCherry
    };

    public enum AromaAndFlavourDriedFruit
    {
        Fig,
        Prune,
        Raisin,
        Sultana,
        Kirsch,
        Jamminess,
        Cooked,
        Baked,
        StewedFruits,
        PreservedFruits
    };

    public enum AromaAndFlavourUnderripeness
    {
        GreenBellPepper,
        Grass,
        WhitePepper,
        Leafiness,
        Tomato,
        Potato
    };

    public enum AromaAndFlavourHerbaceous
    {
        Grass,
        Asparagus,
        BlackcurrantLeaf
    };

    public enum AromaAndFlavourHerbal
    {
        Eucalyptus,
        Mint,
        Medicinal,
        Lavender,
        Fennel,
        Dill
    };

    public enum AromaAndFlavourVegetable
    {
        Cabbage,
        Peas,
        Beans,
        BlackOlive,
        GreenOlive
    };

    public enum AromaAndFlavourSweetSpice
    {
        Cinnamon,
        Cloves,
        Ginger,
        Nutmeg,
        Vanilla
    };

    public enum AromaAndFlavourPungentSpice
    {
        BlackPepper,
        WhitePepper,
        Liquorice,
        Juniper
    };

    public enum AromaAndFlavourSimplicityNeutrality
    {
        Simple,
        Neutral,
        Indistinct
    };

    public enum AromaAndFlavourAutolytic
    {
        Yeast,
        Biscuit,
        Bread,
        Toast,
        Pastry,
        Lees
    };

    public enum AromaAndFlavourDairy
    {
        Butter,
        Cheese,
        Cream,
        Yoghurt
    };

    public enum AromaAndFlavourOak
    {
        Vanilla,
        Toast,
        Cedar,
        CharredWood,
        Smoke,
        Resinous
    };

    public enum AromaAndFlavourKernel
    {
        Almond,
        Coconut,
        HazelNut,
        Walnut,
        Chocholate,
        Coffee
    };

    public enum AromaAndFlavourAnimal
    {
        Leather,
        Meaty,
        Farmyard
    };

    public enum AromaAndFlavourMaturity
    {
        Vegetal,
        Mushroom,
        Hay,
        WetLeaves,
        ForestFloot,
        Game,
        Savory,
        Tobacco,
        Cedar,
        Honey,
        Cereal
    };

    public enum AromaAndFlavourMineral
    {
        Earth,
        Petrol,
        Rubber,
        Tar,
        Stony,
        Steely,
        WetWool
    };

    public enum PalateGategories
    {
        Sweetness,
        Acidity,
        Tannin,
        Body,
        FlavourCharasteristics, // use AromasAndFlavours
        Finish,
    };

    public enum PalateSweetness
    {
        Dry,
        OffDry,
        Medium,
        Sweet
    };

    public enum PalateAcidity
    {
        Low,
        Medium,
        High
    };

    public enum PalateTannin
    {
        Low,Medium,High
    };

    public enum PalateBody
    {
        Light,Medium,Full
    };

    public enum PalateFinish
    {
        Short,
        Medium,
        Long
    };

    public enum Quality
    {
        Faulty,
        Poor,
        Acceptable,
        Good,
        VeryGood,
        Outstanding
    };
    #endregion

    #region HIDE
    // Generate matrix arrays for comparison.
    public int[][] GetMatrixes ()
    {
        int[][] ComparisonMatrix = new int[17][];

        // appearance clarity
        ComparisonMatrix[0] = new int[3];
        ComparisonMatrix[0][0] = (int)MainGategories.Appearance;
        ComparisonMatrix[0][1] = (int)AppearanceGategories.Clarity;
        ComparisonMatrix[0][2] = (int)AClarity;

        // appearance intensity
        ComparisonMatrix[1] = new int[3];
        ComparisonMatrix[1][0] = (int)MainGategories.Appearance;
        ComparisonMatrix[1][1] = (int)AppearanceGategories.Intensity;
        ComparisonMatrix[1][2] = (int)AIntensity;

        // appearance color by wine type
        ComparisonMatrix[2] = new int[4];
        switch (AColorGategory)
        {
            case AppearanceColorGategories.WhiteWineColour:
                ComparisonMatrix[2][0] = (int)MainGategories.Appearance;
                ComparisonMatrix[2][1] = (int)AppearanceGategories.Color;
                ComparisonMatrix[2][2] = (int)AppearanceColorGategories.WhiteWineColour;
                ComparisonMatrix[2][3] = (int)AWhiteWineColor;
                break;
            case AppearanceColorGategories.RoseWineColour:
                ComparisonMatrix[2][0] = (int)MainGategories.Appearance;
                ComparisonMatrix[2][1] = (int)AppearanceGategories.Color;
                ComparisonMatrix[2][2] = (int)AppearanceColorGategories.RoseWineColour;
                ComparisonMatrix[2][3] = (int)ARoseWineColor;
                break;
            case AppearanceColorGategories.RedWineColour:
                ComparisonMatrix[2][0] = (int)MainGategories.Appearance;
                ComparisonMatrix[2][1] = (int)AppearanceGategories.Color;
                ComparisonMatrix[2][2] = (int)AppearanceColorGategories.RedWineColour;
                ComparisonMatrix[2][3] = (int)ARedWineColor;
                break;
        }

        // Nose Condition
        ComparisonMatrix[3] = new int[3];
        ComparisonMatrix[3][0] = (int)MainGategories.Nose;
        ComparisonMatrix[3][1] = (int)NoseGategories.Condition;
        ComparisonMatrix[3][2] = (int)NCondition;

        // Nose Intensity
        ComparisonMatrix[4] = new int[3];
        ComparisonMatrix[4][0] = (int)MainGategories.Nose;
        ComparisonMatrix[4][1] = (int)NoseGategories.Intensity;
        ComparisonMatrix[4][2] = (int)NIntensity;

        // Nose Aroma
        ComparisonMatrix[5] = Aromas[0];
        ComparisonMatrix[6] = Aromas[1];
        ComparisonMatrix[7] = Aromas[2];

        // Palate
        ComparisonMatrix[8] = new int[3];
        ComparisonMatrix[8][0] = (int)MainGategories.Palate;
        ComparisonMatrix[8][1] = (int)PalateGategories.Sweetness;
        ComparisonMatrix[8][2] = (int)PSweetness;

        ComparisonMatrix[9] = new int[3];
        ComparisonMatrix[9][0] = (int)MainGategories.Palate;
        ComparisonMatrix[9][1] = (int)PalateGategories.Acidity;
        ComparisonMatrix[9][2] = (int)PAcidity;

        ComparisonMatrix[10] = new int[3];
        ComparisonMatrix[10][0] = (int)MainGategories.Palate;
        ComparisonMatrix[10][1] = (int)PalateGategories.Tannin;
        ComparisonMatrix[10][2] = (int)PTannin;

        ComparisonMatrix[11] = new int[3];
        ComparisonMatrix[11][0] = (int)MainGategories.Palate;
        ComparisonMatrix[11][1] = (int)PalateGategories.Body;
        ComparisonMatrix[11][2] = (int)PBody;

        // Palate Flavor
        ComparisonMatrix[12] = Flavours[0];
        ComparisonMatrix[13] = Flavours[1];
        ComparisonMatrix[14] = Flavours[2];

        ComparisonMatrix[15] = new int[3];
        ComparisonMatrix[15][0] = (int)MainGategories.Palate;
        ComparisonMatrix[15][1] = (int)PalateGategories.Finish;
        ComparisonMatrix[15][2] = (int)PFinish;

        // conclusions
        ComparisonMatrix[16] = new int[3];
        ComparisonMatrix[16][0] = (int)MainGategories.Conclusions;
        ComparisonMatrix[16][1] = 0;
        ComparisonMatrix[16][2] = (int)WineQuality;

        return ComparisonMatrix;
    }

    #endregion

    public int[] Aroma (int MainGategory, int SecondaryGategory, int AromaFlavorGategory, int AromaFlavorSubGategory, int FinalValue)
    {
        int[] temp = new int[5];

        if (MainGategory == (int)MainGategories.Nose || MainGategory == (int)MainGategories.Palate)
            temp[0] = MainGategory;

        if (SecondaryGategory == (int)NoseGategories.Aroma || SecondaryGategory == (int)PalateGategories.FlavourCharasteristics)
            temp[1] = SecondaryGategory;

        if (Enum.GetValues(typeof(AromaAndFlavourGategories)).Length > AromaFlavorGategory) // check aromaflavorgategory maximum
            temp[2] = AromaFlavorGategory;

        switch (temp[2])
        {
            case (int)AromaAndFlavourGategories.FloralFruit:
                if (Enum.GetValues(typeof(FloralFruitGategories)).Length > AromaFlavorSubGategory)
                    temp[3] = AromaFlavorSubGategory;

                switch (temp[3]) // check the final value max
                {
                    case (int)FloralFruitGategories.Floral:
                        if (Enum.GetValues(typeof(AromaAndFlavourFloral)).Length > FinalValue)
                            temp[4] = FinalValue;
                        break;
                    case (int)FloralFruitGategories.GreenFruit:
                        if (Enum.GetValues(typeof(AromaAndFlavourGreenFruit)).Length > FinalValue)
                            temp[4] = FinalValue;
                        break;
                    case (int)FloralFruitGategories.CitrusFruit:
                        if (Enum.GetValues(typeof(AromaAndFlavourCitrusFruit)).Length > FinalValue)
                            temp[4] = FinalValue;
                        break;
                    case (int)FloralFruitGategories.StoneFruit:
                        if (Enum.GetValues(typeof(AromaAndFlavourStoneFruit)).Length > FinalValue)
                            temp[4] = FinalValue;
                        break;
                    case (int)FloralFruitGategories.TropicalFruit:
                        if (Enum.GetValues(typeof(AromaAndFlavourTropicalFruit)).Length > FinalValue)
                            temp[4] = FinalValue;
                        break;
                    case (int)FloralFruitGategories.RedFruit:
                        if (Enum.GetValues(typeof(AromaAndFlavourRedFruit)).Length > FinalValue)
                            temp[4] = FinalValue;
                        break;
                    case (int)FloralFruitGategories.BlackFruit:
                        if (Enum.GetValues(typeof(AromaAndFlavourBlackFruit)).Length > FinalValue)
                            temp[4] = FinalValue;
                        break;
                    case (int)FloralFruitGategories.DriedFruit:
                        if (Enum.GetValues(typeof(AromaAndFlavourDriedFruit)).Length > FinalValue)
                            temp[4] = FinalValue;
                        break;
                }
                break;
            case (int)AromaAndFlavourGategories.SpiceVegetable:
                if (Enum.GetValues(typeof(SpiceVegetableGategories)).Length > AromaFlavorSubGategory)
                    temp[3] = AromaFlavorSubGategory;

                switch (temp[3])
                {
                    case (int)SpiceVegetableGategories.Underripeness:
                        if (Enum.GetValues(typeof(AromaAndFlavourUnderripeness)).Length > FinalValue)
                            temp[4] = FinalValue;
                        break;
                    case (int)SpiceVegetableGategories.Herbaceous:
                        if (Enum.GetValues(typeof(AromaAndFlavourHerbaceous)).Length > FinalValue)
                            temp[4] = FinalValue;
                        break;
                    case (int)SpiceVegetableGategories.Herbal:
                        if (Enum.GetValues(typeof(AromaAndFlavourHerbal)).Length > FinalValue)
                            temp[4] = FinalValue;
                        break;
                    case (int)SpiceVegetableGategories.Vegetable:
                        if (Enum.GetValues(typeof(AromaAndFlavourVegetable)).Length > FinalValue)
                            temp[4] = FinalValue;
                        break;
                    case (int)SpiceVegetableGategories.SweetSpice:
                        if (Enum.GetValues(typeof(AromaAndFlavourSweetSpice)).Length > FinalValue)
                            temp[4] = FinalValue;
                        break;
                    case (int)SpiceVegetableGategories.PungentSpice:
                        if (Enum.GetValues(typeof(AromaAndFlavourPungentSpice)).Length > FinalValue)
                            temp[4] = FinalValue;
                        break;
                }
                break;

            case (int)AromaAndFlavourGategories.OakOther:
                if (Enum.GetValues(typeof(OakOtherGategories)).Length > AromaFlavorSubGategory)
                    temp[3] = AromaFlavorSubGategory;

                switch (temp[3])
                {
                    case (int)OakOtherGategories.SimplicityNeutrality:
                        if (Enum.GetValues(typeof(AromaAndFlavourSimplicityNeutrality)).Length > FinalValue)
                            temp[4] = FinalValue;
                        break;
                    case (int)OakOtherGategories.Autolytic:
                        if (Enum.GetValues(typeof(AromaAndFlavourAutolytic)).Length > FinalValue)
                            temp[4] = FinalValue;
                        break;
                    case (int)OakOtherGategories.Dairy:
                        if (Enum.GetValues(typeof(AromaAndFlavourDairy)).Length > FinalValue)
                            temp[4] = FinalValue;
                        break;
                    case (int)OakOtherGategories.Oak:
                        if (Enum.GetValues(typeof(AromaAndFlavourOak)).Length > FinalValue)
                            temp[4] = FinalValue;
                        break;
                    case (int)OakOtherGategories.Kernel:
                        if (Enum.GetValues(typeof(AromaAndFlavourKernel)).Length > FinalValue)
                            temp[4] = FinalValue;
                        break;
                    case (int)OakOtherGategories.Animal:
                        if (Enum.GetValues(typeof(AromaAndFlavourAnimal)).Length > FinalValue)
                            temp[4] = FinalValue;
                        break;
                    case (int)OakOtherGategories.Maturity:
                        if (Enum.GetValues(typeof(AromaAndFlavourMaturity)).Length > FinalValue)
                            temp[4] = FinalValue;
                        break;
                    case (int)OakOtherGategories.Mineral:
                        if (Enum.GetValues(typeof(AromaAndFlavourMineral)).Length > FinalValue)
                            temp[4] = FinalValue;
                        break;
                }
                break;
        }
        return temp;
    }

    public void Color(AppearanceColorGategories acg, int ColorGatecoryColorAsInt)
    {
        AColorGategory = acg;
        switch (acg)
        {
            case AppearanceColorGategories.WhiteWineColour:
                if (Enum.GetValues(typeof(AppearanceWhiteWineColor)).Length > ColorGatecoryColorAsInt)
                    AWhiteWineColor = (AppearanceWhiteWineColor)ColorGatecoryColorAsInt;
                break;
            case AppearanceColorGategories.RoseWineColour:
                if (Enum.GetValues(typeof(AppearanceRoseWineColor)).Length > ColorGatecoryColorAsInt)
                    ARoseWineColor = (AppearanceRoseWineColor)ColorGatecoryColorAsInt;
                break;
            case AppearanceColorGategories.RedWineColour:
                if (Enum.GetValues(typeof(AppearanceRedWineColor)).Length > ColorGatecoryColorAsInt)
                    ARedWineColor = (AppearanceRedWineColor)ColorGatecoryColorAsInt;
                break;
        }
    }

    // compare two different wines. and return the amount of similiarities.
    //public int CompareWines(Wine wine)
    //{
    //    int comparisons = 0;

    //    // complexity of O(n^2) that is bad mmkaay!
    //    // reason this is n^2 is because of smells and tastes. they may not be in same order as the others.
    //    for (int i = 0; i < readyMatrix.Length; i++)
    //    {
    //        for (int x = 0; x < wine.readyMatrix.Length; x++)
    //        {
    //            if (System.Linq.Enumerable.SequenceEqual(readyMatrix[i], wine.readyMatrix[x]))
    //                comparisons++;
    //        }
    //    }

    //    return comparisons;
    //}
}