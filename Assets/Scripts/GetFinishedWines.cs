using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

/// <summary>
/// Placed in the customerpanel parent object.
/// </summary>
public class GetFinishedWines : MonoBehaviour {
    
    public GameObject sellWinesPanel; // drag the scrollview content in editor.

    GameObject gameManager;

    private void Awake()
    {
        gameManager = GameObject.FindGameObjectWithTag("GameManager");
    }

    public void LoadWinesForSale()
    {
        for (int i = 0; i < sellWinesPanel.transform.Find("Viewport").Find("SellWinesList").transform.childCount; i++)
        {
            Destroy(sellWinesPanel.transform.Find("Viewport").Find("SellWinesList").transform.GetChild(i).gameObject);

        }

        foreach (KeyValuePair<string, Item> item in gameManager.GetComponent<Inventory>().Items)
        {
            if (item.Value.GetType() == typeof(ItemOurWine))
            {
                if (((ItemOurWine)item.Value).IsBottled == true && ((ItemOurWine)item.Value).Stack > 0)
                {
                    GameObject go = Instantiate(gameManager.GetComponent<Inventory>().InventorySlot);
                    go.transform.SetParent(sellWinesPanel.transform.Find("Viewport").Find("SellWinesList").transform);
                    go.transform.Find("ItemCount").GetComponent<Text>().text = item.Value.Stack.ToString();
                    go.name = item.Key;

                }
            }
        }
    }
}
