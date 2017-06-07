using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class ItemDatabase : MonoBehaviour
{

    public List<Item> items = new List<Item>();

    // Use this for initialization
    void Start()
    {
        items.Add(new Item("Black grape vine", 0, "Black grape vine", Item.ItemType.VINE));
        items.Add(new Item("White grape vine", 1, "White grape vine", Item.ItemType.VINE));
        items.Add(new Item("Grape", 2, "This is a grape", Item.ItemType.GRAPE));
        items.Add(new Item("Juice", 3, "This is juice from grapes", Item.ItemType.JUICE));
        items.Add(new Item("Bottle", 4, "This is a bottle", Item.ItemType.BOTTLE));
    }
}
