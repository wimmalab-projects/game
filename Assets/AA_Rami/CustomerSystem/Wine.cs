
public class Wine
{
    private string name;
    
    public string Name
    {
        get { return name; }
    }

    public enum WineType
    {
        WhiteWine,
        RoseWine,
        RedWine,
        SparklingWhiteWine,
        SparklingRoseWine,
        SparklingRedWine
    };

    // Wine attributes
    // tanniinisuus
    // hedelmäisyys
    // hapokkuus
    // kirkkaus
    // ...
}
