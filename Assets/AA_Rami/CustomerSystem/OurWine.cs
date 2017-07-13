using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using UnityEngine;

public class OurWine : MonoBehaviour
{
    public string wineName;
    public ItemOurWine ourWine = new ItemOurWine();

    //public Wine.WineType wineType;
    //public Wine.Clarity clarity;
    //public Wine.Condition condition;
    //public Wine.Intensity intensity;
    //public Wine.Sweetness sweetness;
    //public Wine.Acidity acidity;
    //public Wine.Tannin tannin;
    //public Wine.Body body;
    //public List<Wine.AromaFlavor> aromasAndFlavors;

    private void Start()
    {
        ourWine.Prefix = "cw";     
    }

    // Use this for initialization
    void SetStats()
    {
        //ourWine.Stack = 1;
        //ourWine.CanBuy = false;
        //ourWine.wineType = wineType;
        //ourWine.clarity = clarity;
        //ourWine.condition = condition;
        //ourWine.intensity = intensity;
        //ourWine.sweetness = sweetness;
        //ourWine.acidity = acidity;
        //ourWine.tannin = tannin;
        //ourWine.body = body;
        //ourWine.aromasAndFlavors = aromasAndFlavors;
    }

    public void CreateInventoryItem(GameObject go)
    {
        ourWine.ItemType = Item.IType.Wine;

        ourWine.Prefix = "cw";

        ourWine.SpriteName = "CustomWine";
        ourWine.Name = wineName;

        ourWine.Id = wineName;

        GameObject.FindGameObjectWithTag("GameManager").GetComponent<Inventory>().Items.Add(ourWine.Prefix + ourWine.Id, ourWine);
        Debug.Log(ourWine.Prefix + ourWine.Id);


        Inventory inv = GameObject.FindGameObjectWithTag("GameManager").GetComponent<Inventory>();
        GameObject temp = Instantiate(inv.InventorySlot);
        string s = go.name;
        go.transform.parent = temp.transform;
        go.name += "child";
        temp.transform.SetParent(inv.contentPanel.transform);
        temp.name = s;
        inv.Slots.Add(temp);
    }
}