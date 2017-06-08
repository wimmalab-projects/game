using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Inventory : MonoBehaviour
{

    public List<GameObject> slots = new List<GameObject>();
    public SortedList<string, Item> items = new SortedList<string, Item>();
    public Canvas canvas;
    public GameObject go;

    // place prefab in editor
    public GameObject slot;

    // Use this for initialization
    void Start()
    {
        go = canvas.transform.Find("Inventory").gameObject;

        // add items
        items.Add("Black grape vine",   new Item("Black grape vine", 0, "Black grape vine", Item.ItemType.VINE));
        items.Add("White grape vine",   new Item("White grape vine", 1, "White grape vine", Item.ItemType.VINE));
        items.Add("Grape",              new Item("Grape", 2, "This is a grape", Item.ItemType.GRAPE));
        items.Add("Juice",              new Item("Juice", 3, "This is juice from grapes", Item.ItemType.JUICE));
        items.Add("Bottle",             new Item("Bottle", 4, "This is a bottle", Item.ItemType.BOTTLE));
        
        // create inventory buttons
        for (int i = 0; i < items.Count; i++)
        {

            GameObject temp = Instantiate(slot);
            temp.transform.SetParent(go.transform);
            temp.GetComponent<Slot>().uiItemName.text = items[items.Keys[i]].returnName();
            slots.Add(temp);
        }

        // set inventory button positions
        for (int i = 0, y = 0; i < 10; y++)
        {
            for (int x = 0; x < 4; x++, i++)
            {
                if (slots[i] != null)
                {
                    slots[i].transform.localPosition = new Vector3(125 + 1280 / 2 * -1 + 200 * x, (720 / 2 - 25) - 310 * y);
                }
            }
        }
    }

    // debug testi lisäys valkonen siemen
    private void OnGUI()
    {
        GUILayout.BeginArea(new Rect(10, 10, 100, 100));
        if (GUILayout.Button("Add index 0"))
        {
            items["White grape vine"].AddItem();
        }
        GUILayout.EndArea();
    }
}
