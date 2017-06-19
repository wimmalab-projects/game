using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class Shop : MonoBehaviour {

    public GameObject shop;
    public GameObject ShopSlot;

    public SortedList<string, Item> items = new SortedList<string, Item>();
    public List<GameObject> slots = new List<GameObject>();

    private GameObject ContentPanel;
    private GameObject InfoPanel;
    private GridLayoutGroup glg;
    private Item currentlySelectedItem; 



    private void Start()
    {

        // get items and create buttons
        items = gameObject.GetComponent<Inventory>().items;
        InfoPanel = shop.transform.Find("Info").gameObject;
        ContentPanel = shop.transform.Find("Scroll View").Find("Viewport").Find("Content").gameObject;
        //ContentPanel = shop.transform.Find("Content").gameObject;

        // create shop buttons
        for (int i = 0; i < items.Count; i++)
        {
            GameObject temp = Instantiate(ShopSlot);
            temp.transform.SetParent(ContentPanel.transform);
            temp.name = items.Keys[i];
            temp.GetComponent<Image>().sprite = items[temp.name].ItemSprite;
            slots.Add(temp);
        }

        // set selecteditem as first item
        SelectItem(items.Keys[0]);
        refreshInfo();

        // scale content
        glg = ContentPanel.GetComponent<GridLayoutGroup>();
        scaleContent();
    }

    private void scaleContent ()
    {
        float y = (ContentPanel.transform.childCount+1) / glg.constraintCount * glg.cellSize.y + (glg.cellSize.y*2);
        ContentPanel.GetComponent<RectTransform>().sizeDelta = new Vector2(ContentPanel.GetComponent<RectTransform>().sizeDelta.x, y);
    }

    public void SelectItem(string key)
    {
        // set current item here
        currentlySelectedItem = items[key];
        Debug.Log(currentlySelectedItem.returnName());
        refreshInfo();
    }
    private void refreshInfo()
    {
        GameObject go1 = InfoPanel.transform.Find("SelectedItemName").gameObject;
        GameObject go2 = InfoPanel.transform.Find("SelectedIitemDesc").gameObject;
        GameObject go3 = InfoPanel.transform.Find("SelectedItemImage").gameObject;

        go1.GetComponent<Text>().text = currentlySelectedItem.returnName();
        go2.GetComponent<Text>().text = currentlySelectedItem.ItemDesc;
        go3.GetComponent<Image>().sprite = currentlySelectedItem.ItemSprite;
    }

    public void BuyItem ()
    {
        currentlySelectedItem.AddItem();
    }

    public void OpenShop()
    {
        GameObject.FindGameObjectWithTag("GameManager").GetComponent<GameMaster>().IsInventoryOpen = true;
        shop.SetActive(true);
    }
    public void CloseShop()
    {
        GameObject.FindGameObjectWithTag("GameManager").GetComponent<GameMaster>().IsInventoryOpen = false;
        shop.SetActive(false);
    }

    private void OnGUI()
    {
        GUILayout.BeginArea(new Rect(Screen.width-150,Screen.height - 150,150,150));
        if (GUILayout.Button("open shop"))
        {
            OpenShop();
        }
        if (GUILayout.Button("CLOSE shop"))
        {
            CloseShop();
        }
        GUILayout.EndArea();
    }



}
