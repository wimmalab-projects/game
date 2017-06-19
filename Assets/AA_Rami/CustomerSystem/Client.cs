/// <summary>
/// Inherited class for restaurant client and farm client
/// </summary>
public abstract class Client
{
    private string name;

    public string Name
    {
        get { return name; }
    }

    public Client (string clientName)
    {
        name = clientName;
    }

    // tarvitsee hahmo muuttujan joka edustaa classia 2d avaruudessa. lisää kun hahmoja saatavilla
    // mitä muuta voisi olla?



}
