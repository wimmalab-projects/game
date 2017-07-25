[System.Serializable]
public class Item
{
    public string SpriteName, Name, Prefix, Description;
    public string Id;
    public int Value; // per hectar, h
    public IType ItemType;
    public int Stack;
    public bool CanBuy;

    public enum IType
    {
        GrapeVine,
        Wine,
        Bottle,
        FieldAddable,
        FermentAddable,
    }

    public string returnID()
    {
        return Prefix + Id.ToString();
    }
    
    public void PopItem()
    {
        if (Stack > 0)
            Stack--;
    }

    public void AddItem()
    {
        Stack++;
    }
}

