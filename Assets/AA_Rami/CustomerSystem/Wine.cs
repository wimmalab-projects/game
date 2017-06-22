/// <summary>
/// using WSET Level 2 Systematic Approach to Tasting Wine
/// 2W-Version 1.0
/// </summary>
public class Wine
{
    // Matrices
    // Basicinfo matrix
    // aroma charasteristics matrix
    // PalateFlavourCharasteristics matrix



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
        Colour
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
    public enum AppearanceColour // change this to be seperate matrix with winetypegategroies and colors per winetype gategory?
    {
        Lemon,
        Gold,
        Amber,
        Pink,
        Salmon,
        Orange,
        Purple,
        Ruby,
        Garnet,
        Tawny
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
        // floral / fruit
        Floral,
        GreenFruit,
        CitrusFruit,
        StoneFruit,
        TropicalFruit,
        RedFruit,
        BlackFruit,
        DriedFruit,
        // spice / veggie
        Underripeness,
        Herbaceous,
        Herbal,
        Vegetable,
        SweetSpice,
        PungentSpice,
        // oak / other
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

}

/*
 wine : class
	Appearance (Enum keyValue, Enum value) : sortedlist
	Nose (Enum keyValue, Enum value) : sortedlist
	Palate (Enum keyValue, Enum value) : sortedlist
	Conclusions (Enum keyValue, Enum value) : sortedlist
	AromaAndFlavor(Enum keyValue, Enum value) : sortedlist
	SpiceSlashVegetable (Enum keyValue, Enum value) : sortedlist
	OakSlashOther (Enum keyValue, Enum value) : sortedlist

    usage:
    Debug.Log(wine.Appearance(keyValue.Value)); == enum value.clear 
     */
