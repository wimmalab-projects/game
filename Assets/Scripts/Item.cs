using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Item
{
    public string itemName;
    public int itemID;
    public string itemDesc;
    public Sprite itemSprite;
    public GameObject itemModel;
    public int itemValue;
    public ItemType itemType;

    public enum ItemType
    {
        GRAPE,
        SEED,
        JUICE,
        BOTTLE,
    }

    public Item(string name, int id, string desc, int value, ItemType type)
    {
        itemName = name;
        itemID = id;
        itemDesc = desc;
        itemValue = value;
        itemType = type;
        itemSprite = Resources.Load<Sprite>("" + name);
    }

    public Item()
    {

    }
}
