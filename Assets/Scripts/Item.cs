using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Item
{
    public string itemDesc;

    private string itemName;
    private int itemID;
    private Sprite itemSprite;
    private ItemType itemType;
    private int itemValue;


    public ItemType iType
    {
        get { return itemType; }
    }

    public Sprite ItemSprite
    {
        get { return itemSprite; }
    }

    public Item(string name, int id, string desc, ItemType type)
    {
        itemName = name;
        itemID = id;
        itemDesc = desc;
        itemType = type;
        itemSprite = Resources.Load<Sprite>("" + name);
    }

    public int itemCount
    {
        get
        {
            return itemValue;
        }
        set
        {
            if (value < 0)
            {
                if (itemValue - value < 0)
                    itemValue = 0;
                else
                    itemValue -= value;
            }
            else
            {
                itemValue = value;
            }
        }
    }

    public enum ItemType
    {
        GRAPE,
        VINE,
        JUICE,
        BOTTLE,
    }

    public int returnID()
    {
        return itemID;
    }

    public string returnName()
    {
        return itemName;
    }

    public Item.ItemType returnItemType()
    {
        return itemType;
    }

    public void PopItem()
    {
        itemCount--;
    }

    public void AddItem()
    {
        itemCount++;
    }
}
