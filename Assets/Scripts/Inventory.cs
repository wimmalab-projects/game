using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Inventory : MonoBehaviour
{

    public List<GameObject> slots = new List<GameObject>();
    public List<Item> items = new List<Item>();
    public ItemDatabase database;

    public GameObject slot;

    // Use this for initialization
    void Start()
    {
        foreach (Item item in database.items)
        {
            items.Add(item);
        }

        for (int i = 0; i < database.items.Count; i++)
        {

            GameObject temp = Instantiate(slot);
            SlotScript ss = temp.GetComponent<SlotScript>();
            temp.transform.SetParent(gameObject.transform);
            ss.slotNumber = i;
            slots.Add(temp);
        }
    }

    private void OnGUI()
    {
        GUILayout.BeginArea(new Rect(10, 10, 100, 100));
        if (GUILayout.Button("Add index 0"))
        {
            items[1].AddItem();
        }
        GUILayout.EndArea();
    }

}
