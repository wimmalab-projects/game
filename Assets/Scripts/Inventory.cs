/* Script that adds item database and inventory slots */

using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class Inventory : MonoBehaviour
{
    public GameObject InventoryGO; // Drag in editor
    public GameObject InventorySlot; // Drag in editor
    public List<GameObject> Slots = new List<GameObject>();
    public SortedList<string, Item> Items = new SortedList<string, Item>();

    private GameObject contentPanel; // place prefab in editor
    private GameObject infoPanel;
    private GridLayoutGroup glg; // place prefab in editor
    private SlotScript slotScript;

    void Awake()
    {
        infoPanel = InventoryGO.transform.Find("Info").gameObject; // find our infopanel inside shop
        contentPanel = InventoryGO.transform.Find("Scroll View").Find("Viewport").Find("Content").gameObject; // find content panel inside shop
        glg = contentPanel.GetComponent<GridLayoutGroup>();
        slotScript = GameObject.FindGameObjectWithTag("GameManager").GetComponent<SlotScript>();
    }

    // Use this for initialization
    void Start()
    {
        // add items
        //Items.Add("Black grape vine", new Item("Black grape vine", 0, "Black grape vine", Item.ItemType.GRAPEVINE));
        //Items.Add("White grape vine", new Item("White grape vine", 1, "White grape vine", Item.ItemType.GRAPEVINE));
        //Items.Add("Black grape", new Item("Black grape", 2, "This is a black grape", Item.ItemType.GRAPEVINE));
        //Items.Add("White grape", new Item("White grape", 3, "This is a white grape", Item.ItemType.GRAPEVINE));


        VineGrape vineOne = new VineGrape(
            "Airén", 0,
            "Airén is a variety of Vitis vinifera, a white grape commonly used in winemaking.This grape is native to Spain where it represents about 30 % of all grapes grown.", 
            VineGrape.GrapeVineType.Vine, VineGrape.GrapeType.White, VineGrape.Acidity.Low, 14f);
        vineOne.AromasAndFlavours.Add(Wine.AromaFlavor.Lemon);
        vineOne.AromasAndFlavours.Add(Wine.AromaFlavor.GreenApple);
        vineOne.AromasAndFlavours.Add(Wine.AromaFlavor.Almond);

        Items.Add(vineOne.returnName(), vineOne);

        Items.Add("White wine", new Item("White wine", 4, "This is white wine", Item.ItemType.WINE));
        Items.Add("Red wine", new Item("Red wine", 5, "This is red wine", Item.ItemType.WINE));
        Items.Add("Rose wine", new Item("Rose wine", 6, "This is rose wine", Item.ItemType.WINE));
        Items.Add("Bottle", new Item("Bottle", 7, "This is a bottle", Item.ItemType.BOTTLE));

        // create inventory slots
        for (int i = 0; i < Items.Count; i++)
        {
            GameObject temp = Instantiate(InventorySlot);
            temp.transform.SetParent(contentPanel.transform);
            temp.name = Items.Keys[i];
            Slots.Add(temp);
        }

        // Scale the slots to fit the content area
        float y = (contentPanel.transform.childCount + 1) / glg.constraintCount * glg.cellSize.y + (glg.cellSize.y * 2);
        contentPanel.GetComponent<RectTransform>().sizeDelta = new Vector2(contentPanel.GetComponent<RectTransform>().sizeDelta.x, y);

        // Set the default item that is selected in inventory
        GameObject go1 = infoPanel.transform.Find("SelectedItemName").gameObject;
        GameObject go2 = infoPanel.transform.Find("SelectedIitemDesc").gameObject;
        GameObject go3 = infoPanel.transform.Find("SelectedItemImage").gameObject;
        go1.GetComponent<Text>().text = Items[Items.Keys[0]].returnName();
        go2.GetComponent<Text>().text = Items[Items.Keys[0]].ItemDesc;
        go3.GetComponent<Image>().sprite = Items[Items.Keys[0]].ItemSprite;
    }

    // Refresh the info of the item when clicking items
    public void refreshInfo()
    {
        Item currentlySelectedItem = Items[slotScript.SeedName];

        GameObject go1 = infoPanel.transform.Find("SelectedItemName").gameObject;
        GameObject go2 = infoPanel.transform.Find("SelectedIitemDesc").gameObject;
        GameObject go3 = infoPanel.transform.Find("SelectedItemImage").gameObject;

        go1.GetComponent<Text>().text = currentlySelectedItem.returnName();
        go2.GetComponent<Text>().text = currentlySelectedItem.ItemDesc;
        go3.GetComponent<Image>().sprite = currentlySelectedItem.ItemSprite;
    }

    // Debug button that adds grape vines / bottles
    void OnGUI()
    {
        GUILayout.BeginArea(new Rect(10, 10, 100, 100));
        if (GUILayout.Button("Add index 0"))
        {
            Items["White grape vine"].AddItem();
        }
        GUILayout.EndArea();
        GUILayout.BeginArea(new Rect(10, 50, 100, 100));
        if (GUILayout.Button("Add index 1"))
        {
            Items["Black grape vine"].AddItem();
        }
        GUILayout.EndArea();
        GUILayout.BeginArea(new Rect(10, 100, 100, 100));
        if (GUILayout.Button("Add index 2"))
        {
            Items["Bottle"].AddItem();
        }
        GUILayout.EndArea();
    }
}

