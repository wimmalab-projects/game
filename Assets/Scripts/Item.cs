using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Item
{
    public string SpriteName, Name, Prefix, Description;
    public int Id;
    public float Value;
    public IType ItemType;
    public int Stack;
    public bool CanBuy;

    public enum IType
    {
        GrapeVine,
        FinishedWine,
        Bottle,
        FieldAddable,
        FermentAddable,
        FermentDish,
        ClarificationDish,
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

