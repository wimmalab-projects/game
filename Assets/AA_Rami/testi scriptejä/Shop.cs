using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class Shop : MonoBehaviour {

    public GameObject ContentPanel;
    public SortedList<string, Item> items = new SortedList<string, Item>();
    public List<GameObject> slots = new List<GameObject>();
    public GameObject ShopSlot;

    private GridLayoutGroup glg;
    private Item currentlySelectedItem; 

    private void Start()
    {

        // get items and create buttons
        items = gameObject.GetComponent<Inventory>().items;

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
    }
}
