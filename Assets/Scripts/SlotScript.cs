using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;
using UnityEngine.EventSystems;

public class SlotScript : MonoBehaviour
{
    public List<GameObject> slots = new List<GameObject>();
    public static bool didPlant;

    private static Inventory inventory;
    private static int returnCount;
    private static string currentlySelectedName;
    private static Item.ItemType currentlySelectedTag;
    public string seedName;
    

    private void Awake()
    {
        inventory = GameObject.FindGameObjectWithTag("GameManager").GetComponent<Inventory>();
    }

    public void Plant()
    {
        didPlant = false;
        GameObject parent = ColliderHandler.parentGameObject;
        PlantGround groundScript = parent.GetComponent<PlantGround>();

        // IF HELVETTI + HELVETIN RUMAA KOODIA..... KORJAA!!!!!
        if (inventory.items[seedName].itemCount > 0)
        {
            if (inventory.items[seedName].returnItemType() == Item.ItemType.VINE)
            {
                parent.GetComponentInChildren<MeshRenderer>().material.mainTexture = Resources.Load<Texture>("Bottle");
                parent.tag = "Planted";
                groundScript.isPlanted = true;
                groundScript.plantName = currentlySelectedName;
                inventory.items[seedName].PopItem();
                didPlant = true;

            }
        }
        else
        {
            Debug.Log("Not enough seeds");
        }

        currentlySelectedName = null;
    }

}
