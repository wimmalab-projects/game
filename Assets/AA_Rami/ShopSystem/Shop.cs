using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

/// <summary>
/// Place this script in game manager
/// </summary>
public class Shop : MonoBehaviour {

    public GameObject shop; // drag shop prefab in editor
    public GameObject ShopSlot; // drag shopslot prefab in editor

    public SortedList<string, Item> items = new SortedList<string, Item>();
    public List<GameObject> slots = new List<GameObject>();

    public bool bought;

    private GameObject ContentPanel;
    private GameObject InfoPanel;
    private GridLayoutGroup glg;
    private GameObject gm;
    public Item currentlySelectedItem;

    private void Awake()
    {
        gm = GameObject.FindGameObjectWithTag("GameManager");
    }

    private void Start()
    {

        foreach (KeyValuePair<string, Item> pair in gm.GetComponent<Database>().Items)
        {
            if (pair.Value.CanBuy == true)
                items.Add(pair.Key, pair.Value);
        }


        InfoPanel = shop.transform.Find("Info").gameObject; // find our infopanel inside shop
        ContentPanel = shop.transform.Find("Scroll View").Find("Viewport").Find("Content").gameObject; // find content panel inside shop

        // create shop buttons
        for (int i = 0; i < items.Count; i++)
        {
            GameObject temp = Instantiate(ShopSlot);
            temp.transform.SetParent(ContentPanel.transform);
            temp.name = items.Keys[i];
            temp.GetComponent<Image>().sprite = Resources.Load<Sprite>(items[temp.name].SpriteName);
            slots.Add(temp);
        }

        // set selecteditem as first item
        SelectItem(items.Keys[0]);
        refreshInfo();

        // scale content
        glg = ContentPanel.GetComponent<GridLayoutGroup>();
        scaleContent();
    }

    private void Update()
    {
        bought = false;
    }

    /// <summary>
    /// use this method to scale shop content panel to fit all the buttons inside it
    /// </summary>
    private void scaleContent ()
    {
        float y = (ContentPanel.transform.childCount+1) / glg.constraintCount * glg.cellSize.y + (glg.cellSize.y*2);
        ContentPanel.GetComponent<RectTransform>().sizeDelta = new Vector2(ContentPanel.GetComponent<RectTransform>().sizeDelta.x, y);
    }

    /// <summary>
    /// set selected item so we can buy it and or set infopanel objects
    /// </summary>
    /// <param name="key"></param>
    public void SelectItem(string key)
    {
        // instantiate sound effect
        GetComponent<GameMaster>().InstantiateSFX("sfx/TouchSFX");


        // set current item here
        currentlySelectedItem = items[key];
        //Debug.Log(currentlySelectedItem.returnName());
        refreshInfo();
    }

    /// <summary>
    /// refresh icon, name and description in infopanel.
    /// </summary>
    private void refreshInfo()
    {
        GameObject go1 = InfoPanel.transform.Find("SelectedItemName").gameObject;
        GameObject go2 = InfoPanel.transform.Find("SelectedIitemDesc").gameObject;
        GameObject go3 = InfoPanel.transform.Find("SelectedItemImage").gameObject;

        go1.GetComponent<Text>().text = currentlySelectedItem.Name;
        go2.GetComponent<Text>().text = currentlySelectedItem.Description;
        go3.GetComponent<Image>().sprite = Resources.Load<Sprite>(currentlySelectedItem.SpriteName);
    }

    /// <summary>
    /// buy currently selected item.
    /// </summary>
    public void BuyItem()
    {
        // instantiate sound effect
        GetComponent<GameMaster>().InstantiateSFX("sfx/TouchSFX");

        gm.GetComponent<Inventory>().Items[currentlySelectedItem.Prefix + currentlySelectedItem.Id].AddItem();
        bought = true;
    }

    /// <summary>
    /// open shop panel (call this outside of this script from game master
    /// </summary>
    public void OpenShop()
    {
        gm.GetComponent<GameMaster>().IsInventoryOpen = true;
        shop.SetActive(true);
    }

    /// <summary>
    /// close shop panel (call this outside of this script from game master
    /// </summary>
    public void CloseShop()
    {
        gm.GetComponent<GameMaster>().IsInventoryOpen = false;
        shop.SetActive(false);
    }
}