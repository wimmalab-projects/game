using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class GetFinishedWines : MonoBehaviour {

    
    public GameObject sellWinesPanel;

    GameObject gameManager;

    private void Awake()
    {
        //sellWinesPanel = transform.Find("SellWinesPanel").gameObject;
        gameManager = GameObject.FindGameObjectWithTag("GameManager");
    }

    public void LoadWinesForSale()
    {
        foreach (KeyValuePair<string, Item> item in gameManager.GetComponent<Inventory>().Items)
        {
            if (item.Value.GetType() == typeof(ItemOurWine))
            {
                if ( ((ItemOurWine)item.Value).IsBottled == true)
                {
                    GameObject go = Instantiate(gameManager.GetComponent<Inventory>().InventorySlot);
                    go.transform.SetParent(sellWinesPanel.transform);
                    go.transform.Find("ItemCount").GetComponent<Text>().text = item.Value.Stack.ToString();
                    go.name = item.Key;

                }
            }
        }
    }
}
