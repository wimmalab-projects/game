using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class GetFinishedWines : MonoBehaviour {

    public GameObject sellWinesList;
    GameObject gameManager;

    private void Start()
    {
        sellWinesList = transform.Find("SellWinesPanel").Find("Viewport").Find("SellWinesList").gameObject;
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
                    Debug.Log(item.Value.Name);

                    GameObject go = Instantiate(gameManager.GetComponent<Inventory>().InventorySlot);
                    go.transform.SetParent(sellWinesList.transform);
                    go.transform.Find("ItemCount").GetComponent<Text>().text = item.Value.Stack.ToString();
                    go.name = item.Key;

                }
            }
        }
    }
}
