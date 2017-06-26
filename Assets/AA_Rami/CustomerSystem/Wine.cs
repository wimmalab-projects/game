/// <summary>
/// using WSET Level 2 Systematic Approach to Tasting Wine
/// 2W-Version 1.0
/// https://github.com/wimmalab-projects/wine-game/raw/master/WikiAssets/example_wine_made_with_wine_class.xlsx
/// </summary>
/// 
public class Wine
{

    // Matrices
    // Basic matrix
    // Aroma matrix
    // Flavour matrix

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

    private ColorGategories aColor;
    public ColorGategories AColor
    {
        get { return aColor; }
        set { aColor = value; }
    }

    private ColorGategories aColorGategory;
    public ColorGategories AColorGategory
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
    private AromaAndFlavourGategories[] aromaGategory = new AromaAndFlavourGategories[3]; // three distinct smells in the wine
    public AromaAndFlavourGategories[] AromaGategory
    {
        get { return aromaGategory; }
        set { aromaGategory = value; }
    }
    // flavour charasteristics
    private AromaAndFlavourGategories[] flavourGategory = new AromaAndFlavourGategories[3]; // three distinct tastes in the wine
    public AromaAndFlavourGategories[] FlavourGategory
    {
        get { return flavourGategory; }
        set { flavourGategory = value; }
    }

    #region Floral / Fruit
    private FloralFruitGategories aromaFloralGategory;
    public FloralFruitGategories AromaFloralGategory
    {
        get { return aromaFloralGategory; }
        set { aromaFloralGategory = value; }
    }

    // Floral
    private AromaAndFlavourFloral aromaFloral;
    public AromaAndFlavourFloral AromaFloral
    {
        get { return aromaFloral; }
        set { aromaFloral = value; }
    }        
    // GreenFruit
    private AromaAndFlavourGreenFruit aromaGreenFruit;
    public AromaAndFlavourGreenFruit AromaGreenFruit
    {
        get { return aromaGreenFruit; }
        set { aromaGreenFruit = value; }
    }
    // CitrusFruit
    private AromaAndFlavourCitrusFruit aromaCitrusFruit;
    public AromaAndFlavourCitrusFruit AromaCitrusFruit
    {
        get { return aromaCitrusFruit; }
        set { aromaCitrusFruit = value; }
    }
    // StoneFruit
    private AromaAndFlavourStoneFruit aromaStoneFruit;
    public AromaAndFlavourStoneFruit AromaStoneFruit
    {
        get { return aromaStoneFruit; }
        set { aromaStoneFruit = value; }
    }
    // TropicalFruit
    private AromaAndFlavourTropicalFruit aromaTropicalFruit;
    public AromaAndFlavourTropicalFruit AromaTropicalFruit
    {
        get { return aromaTropicalFruit; }
        set { aromaTropicalFruit = value; }
    }
    // RedFruit
    private AromaAndFlavourRedFruit aromaRedFruit;
    public AromaAndFlavourRedFruit AromaRedFruit
    {
        get { return aromaRedFruit; }
        set { aromaRedFruit = value; }
    }
    // BlackFruit
    private AromaAndFlavourBlackFruit aromaBlackFruit;
    public AromaAndFlavourBlackFruit AromaBlackFruit
    {
        get { return aromaBlackFruit; }
        set { aromaBlackFruit = value; }
    }
    // DriedFruit
    private AromaAndFlavourDriedFruit aromaDriedFruit;
    public AromaAndFlavourDriedFruit AromaDriedFruit
    {
        get { return aromaDriedFruit; }
        set { aromaDriedFruit = value; }
    }
    #endregion
        
        #region Spice / Vegetable

    private SpiceVegetableGategories aromaSpiceVegetableGategory;
    public SpiceVegetableGategories AromaSpiceVegetableGategory
    {
        get { return aromaSpiceVegetableGategory; }
        set { aromaSpiceVegetableGategory = value; }
    }
    // Underripeness
    private AromaAndFlavourUnderripeness aromaUnderripeness;
    public AromaAndFlavourUnderripeness AromaUnderripeness
    {
        get { return aromaUnderripeness; }
        set { aromaUnderripeness = value; }
    }
    // Herbaceous
    private AromaAndFlavourHerbaceous aromaHerbaceous;
    public AromaAndFlavourHerbaceous AromaHerbaceous
    {
        get { return aromaHerbaceous; }
        set { aromaHerbaceous = value; }
    }
    // Herbal
    private AromaAndFlavourHerbal aromaHerbal;
    public AromaAndFlavourHerbal AromaHerbal
    {
        get { return aromaHerbal; }
        set { aromaHerbal = value; }
    }
    // Vegetable
    private AromaAndFlavourVegetable aromaVegetable;
    public AromaAndFlavourVegetable AromaVegetable
    {
        get { return aromaVegetable; }
        set { aromaVegetable = value; }
    }
    // SweetSpice
    private AromaAndFlavourSweetSpice aromaSweetSpice;
    public AromaAndFlavourSweetSpice AromaSweetSpice
    {
        get { return aromaSweetSpice; }
        set { aromaSweetSpice = value; }
    }
    // PungentSpice
    private SpiceVegetableGategories aromaPungentSpice;
    public SpiceVegetableGategories AromaPungentSpice
    {
        get { return aromaPungentSpice; }
        set { aromaPungentSpice = value; }
    }
    #endregion

        #region Oak / Other

    private OakOtherGategories aromaOakOtherGategory;
    public OakOtherGategories AromaOakOtherGategory
    {
        get { return aromaOakOtherGategory; }
        set { aromaOakOtherGategory = value; }
    }

    // SimplicityNeutrality
    private AromaAndFlavourSimplicityNeutrality aromaSimplicityNeutrality;
    public AromaAndFlavourSimplicityNeutrality AromaSimplicityNeutrality
    {
        get { return aromaSimplicityNeutrality; }
        set { aromaSimplicityNeutrality = value; }
    }
    // Autolytic
    private AromaAndFlavourAutolytic aromaAutolytic;
    public AromaAndFlavourAutolytic AromaAutolytic
    {
        get { return aromaAutolytic; }
        set { aromaAutolytic = value; }
    }
    // Dairy
    private AromaAndFlavourDairy aromaDairy;
    public AromaAndFlavourDairy AromaDairy
    {
        get { return aromaDairy; }
        set { aromaDairy = value; }
    }
    // Oak
    private AromaAndFlavourOak aromaOak;
    public AromaAndFlavourOak AromaOak
    {
        get { return aromaOak; }
        set { aromaOak = value; }
    }
    // Kernel
    private AromaAndFlavourKernel aromaKernel;
    public AromaAndFlavourKernel AromaKernel
    {
        get { return aromaKernel; }
        set { aromaKernel = value; }
    }
    // Animal
    private AromaAndFlavourAnimal aromaAnimal;
    public AromaAndFlavourAnimal AromaAnimal
    {
        get { return aromaAnimal; }
        set { aromaAnimal = value; }
    }
    // Maturity
    private AromaAndFlavourMaturity aromaMaturity;
    public AromaAndFlavourMaturity AromaMaturity
    {
        get { return aromaMaturity; }
        set { aromaMaturity = value; }
    }
    // Mineral
    private AromaAndFlavourMineral aromaMineral;
    public AromaAndFlavourMineral AromaMineral
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
    public enum ColorGategories
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
        Pale,
        medium,
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

    public int[][] GetMatrixes ()
    {
        int[][] ComparisonMatrix = new int[100][];

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
            case ColorGategories.WhiteWineColour:
                ComparisonMatrix[2][0] = (int)MainGategories.Appearance;
                ComparisonMatrix[2][1] = (int)AppearanceGategories.Color;
                ComparisonMatrix[2][2] = (int)ColorGategories.WhiteWineColour;
                ComparisonMatrix[2][3] = (int)AWhiteWineColor;
                break;
            case ColorGategories.RoseWineColour:
                ComparisonMatrix[2][0] = (int)MainGategories.Appearance;
                ComparisonMatrix[2][1] = (int)AppearanceGategories.Color;
                ComparisonMatrix[2][2] = (int)ColorGategories.RoseWineColour;
                ComparisonMatrix[2][3] = (int)ARoseWineColor;
                break;
            case ColorGategories.RedWineColour:
                ComparisonMatrix[2][0] = (int)MainGategories.Appearance;
                ComparisonMatrix[2][1] = (int)AppearanceGategories.Color;
                ComparisonMatrix[2][2] = (int)ColorGategories.RedWineColour;
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
        ComparisonMatrix[5] = AromaFlavourMethod(AromaGategory, 0);
        ComparisonMatrix[6] = AromaFlavourMethod(AromaGategory, 1); 
        ComparisonMatrix[7] = AromaFlavourMethod(AromaGategory, 2); 


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
        ComparisonMatrix[12] = AromaFlavourMethod(FlavourGategory, 0);
        ComparisonMatrix[13] = AromaFlavourMethod(FlavourGategory, 1); 
        ComparisonMatrix[14] = AromaFlavourMethod(FlavourGategory, 2); 

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

    int[] AromaFlavourMethod(AromaAndFlavourGategories[] afg ,int i)
    {
        int[] array = new int[5];
        
        switch (afg[i])
        {
            case AromaAndFlavourGategories.FloralFruit:
                switch (AromaFloralGategory)
                {
                    case FloralFruitGategories.Floral:
                        array[0] = (int) MainGategories.Nose;
                        array[1] = (int) NoseGategories.Aroma;
                        array[2] = (int) AromaAndFlavourGategories.FloralFruit;
                        array[3] = (int) FloralFruitGategories.Floral;
                        array[4] = (int) AromaFloral;
                        break;
                    case FloralFruitGategories.GreenFruit:
                        array[0] = (int) MainGategories.Nose;
                        array[1] = (int) NoseGategories.Aroma;
                        array[2] = (int) AromaAndFlavourGategories.FloralFruit;
                        array[3] = (int) FloralFruitGategories.GreenFruit;
                        array[4] = (int) AromaGreenFruit;
                        break;
                    case FloralFruitGategories.CitrusFruit:
                        array[0] = (int) MainGategories.Nose;
                        array[1] = (int) NoseGategories.Aroma;
                        array[2] = (int) AromaAndFlavourGategories.FloralFruit;
                        array[3] = (int) FloralFruitGategories.CitrusFruit;
                        array[4] = (int) AromaCitrusFruit;
                        break;
                    case FloralFruitGategories.StoneFruit:
                        array[0] = (int) MainGategories.Nose;
                        array[1] = (int) NoseGategories.Aroma;
                        array[2] = (int) AromaAndFlavourGategories.FloralFruit;
                        array[3] = (int) FloralFruitGategories.StoneFruit;
                        array[4] = (int) AromaStoneFruit;
                        break;
                    case FloralFruitGategories.TropicalFruit:
                        array[0] = (int) MainGategories.Nose;
                        array[1] = (int) NoseGategories.Aroma;
                        array[2] = (int) AromaAndFlavourGategories.FloralFruit;
                        array[3] = (int) FloralFruitGategories.TropicalFruit;
                        array[4] = (int) AromaTropicalFruit;
                        break;
                    case FloralFruitGategories.RedFruit:
                        array[0] = (int) MainGategories.Nose;
                        array[1] = (int) NoseGategories.Aroma;
                        array[2] = (int) AromaAndFlavourGategories.FloralFruit;
                        array[3] = (int) FloralFruitGategories.RedFruit;
                        array[4] = (int) AromaRedFruit;
                        break;
                    case FloralFruitGategories.BlackFruit:
                        array[0] = (int) MainGategories.Nose;
                        array[1] = (int) NoseGategories.Aroma;
                        array[2] = (int) AromaAndFlavourGategories.FloralFruit;
                        array[3] = (int) FloralFruitGategories.BlackFruit;
                        array[4] = (int) AromaBlackFruit;
                        break;
                    case FloralFruitGategories.DriedFruit:
                        array[0] = (int) MainGategories.Nose;
                        array[1] = (int) NoseGategories.Aroma;
                        array[2] = (int) AromaAndFlavourGategories.FloralFruit;
                        array[3] = (int) FloralFruitGategories.DriedFruit;
                        array[4] = (int) AromaDriedFruit;
                        break;
                }
                break;
            case AromaAndFlavourGategories.SpiceVegetable:
                switch (AromaSpiceVegetableGategory)
                {
                    case SpiceVegetableGategories.Underripeness:
                        array[0] = (int) MainGategories.Nose;
                        array[1] = (int) NoseGategories.Aroma;
                        array[2] = (int) AromaAndFlavourGategories.SpiceVegetable;
                        array[3] = (int) SpiceVegetableGategories.Underripeness;
                        array[4] = (int) AromaUnderripeness;
                        break;
                    case SpiceVegetableGategories.Herbaceous:
                        array[0] = (int) MainGategories.Nose;
                        array[1] = (int) NoseGategories.Aroma;
                        array[2] = (int) AromaAndFlavourGategories.SpiceVegetable;
                        array[3] = (int) SpiceVegetableGategories.Herbaceous;
                        array[4] = (int) AromaHerbaceous;
                        break;
                    case SpiceVegetableGategories.Herbal:
                        array[0] = (int) MainGategories.Nose;
                        array[1] = (int) NoseGategories.Aroma;
                        array[2] = (int) AromaAndFlavourGategories.SpiceVegetable;
                        array[3] = (int) SpiceVegetableGategories.Herbal;
                        array[4] = (int) AromaHerbal;
                        break;
                    case SpiceVegetableGategories.Vegetable:
                        array[0] = (int) MainGategories.Nose;
                        array[1] = (int) NoseGategories.Aroma;
                        array[2] = (int) AromaAndFlavourGategories.SpiceVegetable;
                        array[3] = (int) SpiceVegetableGategories.Vegetable;
                        array[4] = (int) AromaVegetable;
                        break;
                    case SpiceVegetableGategories.SweetSpice:
                        array[0] = (int) MainGategories.Nose;
                        array[1] = (int) NoseGategories.Aroma;
                        array[2] = (int) AromaAndFlavourGategories.SpiceVegetable;
                        array[3] = (int) SpiceVegetableGategories.SweetSpice;
                        array[4] = (int) AromaSweetSpice;
                        break;
                    case SpiceVegetableGategories.PungentSpice:
                        array[0] = (int) MainGategories.Nose;
                        array[1] = (int) NoseGategories.Aroma;
                        array[2] = (int) AromaAndFlavourGategories.SpiceVegetable;
                        array[3] = (int) SpiceVegetableGategories.PungentSpice;
                        array[4] = (int) AromaPungentSpice;
                        break;
                }
                break;
            case AromaAndFlavourGategories.OakOther:
                switch (AromaOakOtherGategory)
                {
                    case OakOtherGategories.SimplicityNeutrality:
                        array[0] = (int) MainGategories.Nose;
                        array[1] = (int) NoseGategories.Aroma;
                        array[2] = (int) AromaAndFlavourGategories.OakOther;
                        array[3] = (int) OakOtherGategories.SimplicityNeutrality;
                        array[4] = (int) AromaSimplicityNeutrality;
                        break;
                    case OakOtherGategories.Autolytic:
                        array[0] = (int) MainGategories.Nose;
                        array[1] = (int) NoseGategories.Aroma;
                        array[2] = (int) AromaAndFlavourGategories.OakOther;
                        array[3] = (int) OakOtherGategories.Autolytic;
                        array[4] = (int) AromaAutolytic;
                        break;
                    case OakOtherGategories.Dairy:
                        array[0] = (int) MainGategories.Nose;
                        array[1] = (int) NoseGategories.Aroma;
                        array[2] = (int) AromaAndFlavourGategories.OakOther;
                        array[3] = (int) OakOtherGategories.Dairy;
                        array[4] = (int) AromaDairy;
                        break;
                    case OakOtherGategories.Oak:
                        array[0] = (int) MainGategories.Nose;
                        array[1] = (int) NoseGategories.Aroma;
                        array[2] = (int) AromaAndFlavourGategories.OakOther;
                        array[3] = (int) OakOtherGategories.Oak;
                        array[4] = (int) AromaOak;
                        break;
                    case OakOtherGategories.Kernel:
                        array[0] = (int) MainGategories.Nose;
                        array[1] = (int) NoseGategories.Aroma;
                        array[2] = (int) AromaAndFlavourGategories.OakOther;
                        array[3] = (int) OakOtherGategories.Kernel;
                        array[4] = (int) AromaKernel;
                        break;
                    case OakOtherGategories.Animal:
                        array[0] = (int) MainGategories.Nose;
                        array[1] = (int) NoseGategories.Aroma;
                        array[2] = (int) AromaAndFlavourGategories.OakOther;
                        array[3] = (int) OakOtherGategories.Animal;
                        array[4] = (int) AromaAnimal;
                        break;
                    case OakOtherGategories.Maturity:
                        array[0] = (int) MainGategories.Nose;
                        array[1] = (int) NoseGategories.Aroma;
                        array[2] = (int) AromaAndFlavourGategories.OakOther;
                        array[3] = (int) OakOtherGategories.Maturity;
                        array[4] = (int) AromaMaturity;
                        break;
                    case OakOtherGategories.Mineral:
                        array[0] = (int) MainGategories.Nose;
                        array[1] = (int) NoseGategories.Aroma;
                        array[2] = (int) AromaAndFlavourGategories.OakOther;
                        array[3] = (int) OakOtherGategories.Mineral;
                        array[4] = (int) AromaMineral;
                        break;
                    default:
                        break;
                }
                break;
        }
        return array;
    }
}