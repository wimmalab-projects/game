/* Script that adds item database and inventory slots */

using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class Inventory : MonoBehaviour
{
    public GameObject inventory;
    public GameObject inventorySlot;

    public List<GameObject> slots = new List<GameObject>();
    public SortedList<string, Item> items = new SortedList<string, Item>();

    private GameObject contentPanel; // place prefab in editor
    private GameObject infoPanel;
    private GridLayoutGroup glg; // place prefab in editor
    private SlotScript slotScript;
    private Item currentlySelectedItem;

    void Awake()
    {
        infoPanel = inventory.transform.Find("Info").gameObject; // find our infopanel inside shop
        contentPanel = inventory.transform.Find("Scroll View").Find("Viewport").Find("Content").gameObject; // find content panel inside shop
        glg = contentPanel.GetComponent<GridLayoutGroup>();
        slotScript = GameObject.FindGameObjectWithTag("GameManager").GetComponent<SlotScript>();
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
            GameObject temp = Instantiate(inventorySlot);
            temp.transform.SetParent(contentPanel.transform);
            temp.name = items.Keys[i];
            slots.Add(temp);
        }

        float y = (contentPanel.transform.childCount + 1) / glg.constraintCount * glg.cellSize.y + (glg.cellSize.y * 2);
        contentPanel.GetComponent<RectTransform>().sizeDelta = new Vector2(contentPanel.GetComponent<RectTransform>().sizeDelta.x, y);

        //// set inventory button positions /////// Muuta tämä vastaamaan shopin grid layout tyyppistä ratkaisua.
        //for (int i = 0, y = 0; i < maxRows; y++)
        //{
        //    for (int x = 0; x < maxColumns; x++, i++)
        //    {
        //        if (slots[i] != null)
        //        {
        //            slots[i].transform.localPosition = new Vector3(125 + 1280 / 2 * -1 + 200 * x, (720 / 2 - 25) - 350 * y);
        //        }
        //    }
        //}

        GameObject go1 = infoPanel.transform.Find("SelectedItemName").gameObject;
        GameObject go2 = infoPanel.transform.Find("SelectedIitemDesc").gameObject;
        GameObject go3 = infoPanel.transform.Find("SelectedItemImage").gameObject;

        go1.GetComponent<Text>().text = items[items.Keys[0]].returnName();
        go2.GetComponent<Text>().text = items[items.Keys[0]].ItemDesc;
        go3.GetComponent<Image>().sprite = items[items.Keys[0]].ItemSprite;
    }

    public void refreshInfo()
    {
        currentlySelectedItem = items[slotScript.seedName];

        GameObject go1 = infoPanel.transform.Find("SelectedItemName").gameObject;
        GameObject go2 = infoPanel.transform.Find("SelectedIitemDesc").gameObject;
        GameObject go3 = infoPanel.transform.Find("SelectedItemImage").gameObject;

        go1.GetComponent<Text>().text = currentlySelectedItem.returnName();
        go2.GetComponent<Text>().text = currentlySelectedItem.ItemDesc;
        go3.GetComponent<Image>().sprite = currentlySelectedItem.ItemSprite;
    }

    // Debug button that adds grape vines.
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
        GUILayout.BeginArea(new Rect(10, 100, 100, 100));
        if (GUILayout.Button("Add index 2"))
        {
            items["Bottle"].AddItem();
        }
        GUILayout.EndArea();
    }
}
