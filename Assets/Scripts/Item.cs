﻿using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Item
{
    #region attributes
    private readonly string itemDesc;
    private readonly string itemName;
    private readonly int itemID;
    private readonly Sprite itemSprite;
    private readonly ItemType itemType;
    private int itemValue;

    public enum ItemType
    {
        GRAPEVINE,
        WINE,
        BOTTLE,
    }

    #endregion

    #region gettersetter

    public string ItemDesc
    {
        get { return itemDesc; }
    }

    public ItemType iType
    {
        get { return itemType; }
    }

    public Sprite ItemSprite
    {
        get { return itemSprite; }
    }

    public int itemCount
    {
        get
        {
            return itemValue;
        }
        set // keep private so item stack can only be changed from methods inside this class
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

    public int returnID()
    {
        return itemID;
    }

    public ItemType returnItemType()
    {
        return itemType;
    }
    #endregion

    #region methods
    public void PopItem()
    {
        itemCount--;
    }

    public void AddItem()
    {
        itemCount++;
    }

    public string returnName()
    {
        return itemName;
    }
    #endregion

    #region constructors
    public Item(string name, int id, string desc, ItemType type)
    {
        itemName = name;
        itemID = id;
        itemDesc = desc;
        itemType = type;
        itemSprite = Resources.Load<Sprite>("" + name);
    }
    #endregion
}

