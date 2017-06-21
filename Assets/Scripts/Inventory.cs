using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Inventory : MonoBehaviour
{

    public List<GameObject> slots = new List<GameObject>();
    public SortedList<string, Item> items = new SortedList<string, Item>();
    public Canvas canvas; // place prefab in editor
    public GameObject slot; // place prefab in editor

    private const int maxRows = 6;
    private const int maxColumns = 5;
    private GameObject InventoryGO;

    void Awake()
    {
        InventoryGO = canvas.transform.Find("Inventory").gameObject;
    }

    // Use this for initialization
    void Start()
    {
        // add items
        items.Add("Black grape vine", new Item("Black grape vine", 0, "Black grape vine", Item.ItemType.VINE));
        items.Add("White grape vine", new Item("White grape vine", 1, "White grape vine", Item.ItemType.VINE));
        items.Add("Black grape", new Item("Black grape", 2, "This is a black grape", Item.ItemType.GRAPE));
        items.Add("White grape", new Item("White grape", 3, "This is a white grape", Item.ItemType.GRAPE));
        items.Add("White wine", new Item("White wine", 4, "This is white wine", Item.ItemType.WINE));
        items.Add("Red wine", new Item("Red wine", 5, "This is red wine", Item.ItemType.WINE));
        items.Add("Rose wine", new Item("Rose wine", 6, "This is rose wine", Item.ItemType.WINE));
        items.Add("Bottle", new Item("Bottle", 7, "This is a bottle", Item.ItemType.BOTTLE));

        // create inventory buttons
        for (int i = 0; i < items.Count; i++)
        {

            GameObject temp = Instantiate(slot);
            temp.transform.SetParent(InventoryGO.transform);
            temp.GetComponent<Slot>().uiItemName.text = items[items.Keys[i]].returnName();
            slots.Add(temp);
        }

        // set inventory button positions /////// Muuta tämä vastaamaan shopin grid layout tyyppistä ratkaisua.
        for (int i = 0, y = 0; i < maxRows; y++)
        {
            for (int x = 0; x < maxColumns; x++, i++)
            {
                if (slots[i] != null)
                {
                    slots[i].transform.localPosition = new Vector3(125 + 1280 / 2 * -1 + 200 * x, (720 / 2 - 25) - 350 * y);
                }
            }
        }
    }

    void OnGUI()
    {
        GUILayout.BeginArea(new Rect(10, 10, 100, 100));
        if (GUILayout.Button("Add index 0"))
        {
            items["White grape vine"].AddItem();
        }
        GUILayout.EndArea();
        GUILayout.BeginArea(new Rect(10, 50, 100, 100));
        if (GUILayout.Button("Add index 1"))
        {
            items["Black grape vine"].AddItem();
        }
        GUILayout.EndArea();
    }
}
