using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Inventory : MonoBehaviour
{

    public List<GameObject> slots = new List<GameObject>();
    public List<Item> items = new List<Item>();
    public ItemDatabase database;

    // Use this for initialization
    void Start()
    {
        int slotAmount = 0;

        database = GameObject.FindGameObjectWithTag("ItemDatabase").GetComponent<ItemDatabase>();
        foreach (Transform child in transform)
        {
            if (child.gameObject.name == "Slot")
            {
                slots.Add(child.gameObject);
                child.GetComponent<SlotScript>().slotNumber = slotAmount;
                items.Add(new Item());
                slotAmount++;
            }
        }

        addItem(0);
        addItem(1);
        addItem(2);
        addItem(3);
        addItem(0);
        addItem(1);
        addItem(2);
        addItem(3);
    }

    void addItem(int id)
    {
        for (int i = 0; i < database.items.Count; i++)
        {
            if(database.items[i].itemID == id)
            {
                Item item = database.items[i];
                addItemToEmptySlot(item);
                item.itemCount++;
                break;
            }
        }
    }

    public void removeItem(int id)
    {
        for (int i = 0; i < database.items.Count; i++)
        {
            if (database.items[i].itemID == id)
            {
                Item item = database.items[i];
                item.itemCount--;
                break;
            }
        }
    }

    void addItemToEmptySlot(Item item)
    {
        for (int i = 0; i < items.Count; i++)
        {
            if(items[i].itemName == item.itemName || items[i].itemName == null)
            {
                items[i] = item;
                break;
            }
        }
    }

}
