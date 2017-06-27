using System;
/// <summary>
/// using WSET Level 2 Systematic Approach to Tasting Wine
/// 2W-Version 1.0
/// https://github.com/wimmalab-projects/wine-game/raw/master/WikiAssets/example_wine_made_with_wine_class.xlsx
/// </summary>
/// 
public class Wine
{

    public static int MaximumTastesAndScents = 3;

    public int[][] Aromas = new int[MaximumTastesAndScents][]; // vois olla lista arraysta jossa useita makuja eli: List <int[]> Aromas; ???
    public int[][] Flavours = new int[MaximumTastesAndScents][];

    #region GetSets
    private AppearanceClarity aClarity;
    public AppearanceClarity AClarity
    {
        get { return aClarity; }
        set { aClarity = value; }
    }

    private AppearanceIntensity aIntensity;
    public AppearanceIntensity AIntensity
    {
        get { return aIntensity; }
        set { aIntensity = value; }
    }

    //private ColorGategories aColor;
    //public ColorGategories AColor
    //{
    //    get { return aColor; }
    //    set { aColor = value; }
    //}

    private AppearanceColorGategories aColorGategory;
    public AppearanceColorGategories AColorGategory
    {
        get { return aColorGategory; }
        set { aColorGategory = value; }
    }
    private AppearanceWhiteWineColor aWhiteWineColor;
    public AppearanceWhiteWineColor AWhiteWineColor
    {
        get { return aWhiteWineColor; }
        set { aWhiteWineColor = value; }
    }
    private AppearanceRoseWineColor aRoseWineColor;
    public AppearanceRoseWineColor ARoseWineColor
    {
        get { return aRoseWineColor; }
        set { aRoseWineColor = value; }
    }
    private AppearanceRedWineColor aRedWineColor;
    public AppearanceRedWineColor ARedWineColor
    {
        get { return aRedWineColor; }
        set { aRedWineColor = value; }
    }

    private NoseCondition nCondition;
    public NoseCondition NCondition
    {
        get { return nCondition; }
        set { nCondition = value; }
    }

    private NoseIntensity nIntensity;
    public NoseIntensity NIntensity
    {
        get { return nIntensity; }
        set { nIntensity = value; }
    }

    // aroma charasteristics
    private AromaAndFlavourGategories[] aromaGategory = new AromaAndFlavourGategories[MaximumTastesAndScents]; // three distinct smells in the wine
    public AromaAndFlavourGategories[] AromaGategory
    {
        get { return aromaGategory; }
        set { aromaGategory = value; }
    }
    // flavour charasteristics
    private AromaAndFlavourGategories[] flavourGategory = new AromaAndFlavourGategories[MaximumTastesAndScents]; // three distinct tastes in the wine
    public AromaAndFlavourGategories[] FlavourGategory
    {
        get { return flavourGategory; }
        set { flavourGategory = value; }
    }

    #region Floral / Fruit
    private FloralFruitGategories[] aromaFloralGategory = new FloralFruitGategories[MaximumTastesAndScents];
    public FloralFruitGategories[] AromaFloralGategory
    {
        get { return aromaFloralGategory; }
        set { aromaFloralGategory = value; }
    }

    // Floral
    private AromaAndFlavourFloral[] aromaFloral = new AromaAndFlavourFloral[MaximumTastesAndScents];
    public AromaAndFlavourFloral[] AromaFloral
    {
        get { return aromaFloral; }
        set { aromaFloral = value; }
    }
    // GreenFruit
    private AromaAndFlavourGreenFruit[] aromaGreenFruit = new AromaAndFlavourGreenFruit[MaximumTastesAndScents];
    public AromaAndFlavourGreenFruit[] AromaGreenFruit
    {
        get { return aromaGreenFruit; }
        set { aromaGreenFruit = value; }
    }
    // CitrusFruit
    private AromaAndFlavourCitrusFruit[] aromaCitrusFruit = new AromaAndFlavourCitrusFruit[MaximumTastesAndScents];
    public AromaAndFlavourCitrusFruit[] AromaCitrusFruit
    {
        get { return aromaCitrusFruit; }
        set { aromaCitrusFruit = value; }
    }
    // StoneFruit
    private AromaAndFlavourStoneFruit[] aromaStoneFruit = new AromaAndFlavourStoneFruit[MaximumTastesAndScents];
    public AromaAndFlavourStoneFruit[] AromaStoneFruit
    {
        get { return aromaStoneFruit; }
        set { aromaStoneFruit = value; }
    }
    // TropicalFruit
    private AromaAndFlavourTropicalFruit[] aromaTropicalFruit = new AromaAndFlavourTropicalFruit[MaximumTastesAndScents];
    public AromaAndFlavourTropicalFruit[] AromaTropicalFruit
    {
        get { return aromaTropicalFruit; }
        set { aromaTropicalFruit = value; }
    }
    // RedFruit
    private AromaAndFlavourRedFruit[] aromaRedFruit = new AromaAndFlavourRedFruit[MaximumTastesAndScents];
    public AromaAndFlavourRedFruit[] AromaRedFruit
    {
        get { return aromaRedFruit; }
        set { aromaRedFruit = value; }
    }
    // BlackFruit
    private AromaAndFlavourBlackFruit[] aromaBlackFruit = new AromaAndFlavourBlackFruit[MaximumTastesAndScents];
    public AromaAndFlavourBlackFruit[] AromaBlackFruit
    {
        get { return aromaBlackFruit; }
        set { aromaBlackFruit = value; }
    }
    // DriedFruit
    private AromaAndFlavourDriedFruit[] aromaDriedFruit = new AromaAndFlavourDriedFruit[MaximumTastesAndScents];
    public AromaAndFlavourDriedFruit[] AromaDriedFruit
    {
        get { return aromaDriedFruit; }
        set { aromaDriedFruit = value; }
    }
    #endregion
        
        #region Spice / Vegetable

    private SpiceVegetableGategories[] aromaSpiceVegetableGategory = new SpiceVegetableGategories[MaximumTastesAndScents];
    public SpiceVegetableGategories[] AromaSpiceVegetableGategory
    {
        get { return aromaSpiceVegetableGategory; }
        set { aromaSpiceVegetableGategory = value; }
    }
    // Underripeness
    private AromaAndFlavourUnderripeness[] aromaUnderripeness = new AromaAndFlavourUnderripeness[MaximumTastesAndScents];
    public AromaAndFlavourUnderripeness[] AromaUnderripeness
    {
        get { return aromaUnderripeness; }
        set { aromaUnderripeness = value; }
    }
    // Herbaceous
    private AromaAndFlavourHerbaceous[] aromaHerbaceous = new AromaAndFlavourHerbaceous[MaximumTastesAndScents];
    public AromaAndFlavourHerbaceous[] AromaHerbaceous
    {
        get { return aromaHerbaceous; }
        set { aromaHerbaceous = value; }
    }
    // Herbal
    private AromaAndFlavourHerbal[] aromaHerbal = new AromaAndFlavourHerbal[MaximumTastesAndScents];
    public AromaAndFlavourHerbal[] AromaHerbal
    {
        get { return aromaHerbal; }
        set { aromaHerbal = value; }
    }
    // Vegetable
    private AromaAndFlavourVegetable[] aromaVegetable = new AromaAndFlavourVegetable[MaximumTastesAndScents];
    public AromaAndFlavourVegetable[] AromaVegetable
    {
        get { return aromaVegetable; }
        set { aromaVegetable = value; }
    }
    // SweetSpice
    private AromaAndFlavourSweetSpice[] aromaSweetSpice = new AromaAndFlavourSweetSpice[MaximumTastesAndScents];
    public AromaAndFlavourSweetSpice[] AromaSweetSpice
    {
        get { return aromaSweetSpice; }
        set { aromaSweetSpice = value; }
    }
    // PungentSpice
    private SpiceVegetableGategories[] aromaPungentSpice = new SpiceVegetableGategories[MaximumTastesAndScents];
    public SpiceVegetableGategories[] AromaPungentSpice
    {
        get { return aromaPungentSpice; }
        set { aromaPungentSpice = value; }
    }
    #endregion

        #region Oak / Other

    private OakOtherGategories[] aromaOakOtherGategory = new OakOtherGategories[MaximumTastesAndScents];
    public OakOtherGategories[] AromaOakOtherGategory
    {
        get { return aromaOakOtherGategory; }
        set { aromaOakOtherGategory = value; }
    }

    // SimplicityNeutrality
    private AromaAndFlavourSimplicityNeutrality[] aromaSimplicityNeutrality = new AromaAndFlavourSimplicityNeutrality[MaximumTastesAndScents];
    public AromaAndFlavourSimplicityNeutrality[] AromaSimplicityNeutrality
    {
        get { return aromaSimplicityNeutrality; }
        set { aromaSimplicityNeutrality = value; }
    }
    // Autolytic
    private AromaAndFlavourAutolytic[] aromaAutolytic = new AromaAndFlavourAutolytic[MaximumTastesAndScents];
    public AromaAndFlavourAutolytic[] AromaAutolytic
    {
        get { return aromaAutolytic; }
        set { aromaAutolytic = value; }
    }
    // Dairy
    private AromaAndFlavourDairy[] aromaDairy = new AromaAndFlavourDairy[MaximumTastesAndScents];
    public AromaAndFlavourDairy[] AromaDairy
    {
        get { return aromaDairy; }
        set { aromaDairy = value; }
    }
    // Oak
    private AromaAndFlavourOak[] aromaOak = new AromaAndFlavourOak[MaximumTastesAndScents];
    public AromaAndFlavourOak[] AromaOak
    {
        get { return aromaOak; }
        set { aromaOak = value; }
    }
    // Kernel
    private AromaAndFlavourKernel[] aromaKernel = new AromaAndFlavourKernel[MaximumTastesAndScents];
    public AromaAndFlavourKernel[] AromaKernel
    {
        get { return aromaKernel; }
        set { aromaKernel = value; }
    }
    // Animal
    private AromaAndFlavourAnimal[] aromaAnimal = new AromaAndFlavourAnimal[MaximumTastesAndScents];
    public AromaAndFlavourAnimal[] AromaAnimal
    {
        get { return aromaAnimal; }
        set { aromaAnimal = value; }
    }
    // Maturity
    private AromaAndFlavourMaturity[] aromaMaturity = new AromaAndFlavourMaturity[MaximumTastesAndScents];
    public AromaAndFlavourMaturity[] AromaMaturity
    {
        get { return aromaMaturity; }
        set { aromaMaturity = value; }
    }
    // Mineral
    private AromaAndFlavourMineral[] aromaMineral = new AromaAndFlavourMineral[MaximumTastesAndScents];
    public AromaAndFlavourMineral[] AromaMineral
    {
        get { return aromaMineral; }
        set { aromaMineral = value; }
    }
    #endregion


    private PalateSweetness pSweetness;
    public PalateSweetness PSweetness
    {
        get { return pSweetness; }
        set { pSweetness = value; }
    }

    private PalateAcidity pAcidity;
    public PalateAcidity PAcidity
    {
        get { return pAcidity; }
        set { pAcidity = value; }
    }

    private PalateTannin pTannin;
    public PalateTannin PTannin
    {
        get { return pTannin; }
        set { pTannin = value; }
    }

    private PalateBody pBody;
    public PalateBody PBody
    {
        get { return pBody; }
        set { pBody = value; }
    }

    private PalateFinish pFinish;
    public PalateFinish PFinish
    {
        get { return pFinish; }
        set { pFinish = value; }
    }

    private Quality wineQuality;
    public Quality WineQuality
    {
        get { return wineQuality; }
        set { wineQuality = value; }
    }
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

    public void Color (AppearanceColorGategories acg, int ColorGatecoryColorAsInt)
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

    // Randomize wine method for restaurant customer

    // compare two different wines.

    public void CompareWines(Wine wine)
    {

    }
}