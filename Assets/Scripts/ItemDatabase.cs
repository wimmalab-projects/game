using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class ItemDatabase : MonoBehaviour
{

    public List<Item> items = new List<Item>();

    // Use this for initialization
    void Start()
    {
        items.Add(new Item("Seed", 0, "This is a seed", 5, Item.ItemType.SEED));
        items.Add(new Item("Grape", 1, "This is a grape", 3, Item.ItemType.GRAPE));
        items.Add(new Item("Juice", 2, "This is juice from grapes", 1, Item.ItemType.JUICE));
        items.Add(new Item("Bottle", 3, "This is a bottle", 2, Item.ItemType.BOTTLE));
    }
}
