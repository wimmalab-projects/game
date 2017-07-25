using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

/// <summary>
/// Drop this to gamemaster.
/// Script that adds item database to inventory slots
/// </summary>
public class Inventory : MonoBehaviour
{
    public GameObject InventoryGO; // Drag in editor
    public GameObject InventorySlot; // Drag in editor
    public List<GameObject> Slots = new List<GameObject>();
    public SortedList<string, Item> Items = new SortedList<string, Item>();

    public GameObject contentPanel; // place prefab in editor
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

    /// <summary>
    /// Used to show and hide items in inventory based on item stack
    /// </summary>
    public void ShowHideSlots()
    {
        foreach (GameObject go in Slots)
        {
            if (Items[go.name].Stack <= 0)
            {
                go.SetActive(false);
            }
            else
            {
                go.SetActive(true);
            }
        }
    }

    // Use this for initialization
    void Start()
    {

        // get items from database
        Items = GameObject.FindGameObjectWithTag("GameManager").GetComponent<Database>().Items;
        CreateCustomSlots();

        // Scale the slots to fit the content area
        float y = (contentPanel.transform.childCount + 1) / glg.constraintCount * glg.cellSize.y + (glg.cellSize.y * 2);
        contentPanel.GetComponent<RectTransform>().sizeDelta = new Vector2(contentPanel.GetComponent<RectTransform>().sizeDelta.x, y);

        // Set the default item that is selected in inventory
        GameObject go1 = infoPanel.transform.Find("SelectedItemName").gameObject;
        GameObject go2 = infoPanel.transform.Find("SelectedIitemDesc").gameObject;
        GameObject go3 = infoPanel.transform.Find("SelectedItemImage").gameObject;
    }

    public void CreateCustomSlots()
    {
        foreach (GameObject go in Slots)
        {
            Destroy(go);
        }
        Slots = new List<GameObject>();
        for (int i = 0; i < Items.Count; i++)
        {
            GameObject temp = Instantiate(InventorySlot);
            temp.transform.SetParent(contentPanel.transform);
            temp.name = Items.Keys[i];
            Slots.Add(temp);
        }
    }

        // Refresh the info of the item when clicking items
        public void refreshInfo()
    {
        Item currentlySelectedItem = Items[slotScript.SeedName];

        GameObject go1 = infoPanel.transform.Find("SelectedItemName").gameObject;
        GameObject go2 = infoPanel.transform.Find("SelectedIitemDesc").gameObject;
        GameObject go3 = infoPanel.transform.Find("SelectedItemImage").gameObject;

        go1.GetComponent<Text>().text = currentlySelectedItem.Name;
        go2.GetComponent<Text>().text = currentlySelectedItem.Description;
        go3.GetComponent<Image>().sprite = Resources.Load<Sprite>("UI/" + currentlySelectedItem.SpriteName);
    }
}

