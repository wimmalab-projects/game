﻿using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Item
{
    public string itemName;
    public int itemID;
    public string itemDesc;
    public Sprite itemSprite;
    public ItemType itemType;

    private int itemValue;

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
                itemValue = 0;
            }
            else
                itemValue = value;
        }

    }

    public enum ItemType
    {
        GRAPE,
        SEED,
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

    public string returnItemType(ItemType itemType)
    {
        return itemType.ToString();
    }
}