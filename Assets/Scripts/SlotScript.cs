using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;
using UnityEngine.EventSystems;

public class SlotScript : MonoBehaviour
{
    public static bool didPlant;
    public string seedName;

    private static Inventory inventory;
    private static int returnCount;
    private static string currentlySelectedName;
    private static Item.ItemType currentlySelectedTag;
    private GameObject guiTemp;
    private GUIScript guiScript;

    GameObject parent;
    PlantGround groundScript;
    List<GameObject> vinePositions = new List<GameObject>();


    // called before start
    void Awake()
    {
        guiTemp = GameObject.FindGameObjectWithTag("InventoryCanvas");
        guiScript = guiTemp.GetComponent<GUIScript>();
        inventory = GameObject.FindGameObjectWithTag("GameManager").GetComponent<Inventory>();
    }

    public void Plant()
    {
        didPlant = false;

        parent = ColliderHandler.parentGameObject;

        for (int i = 0; i < parent.transform.childCount; i++)
        {
            vinePositions.Add(parent.transform.GetChild(i).gameObject);
        }

        groundScript = parent.GetComponent<PlantGround>();

        // IF HELVETTI + HELVETIN RUMAA KOODIA..... KORJAA!!!!!
        if (inventory.items[seedName].itemCount > 0)
        {
            if (inventory.items[seedName].returnItemType() == Item.ItemType.VINE)
            {
                ////parent.GetComponent<MeshRenderer>().material.mainTexture = Resources.Load();

                parent.tag = "Planted";
                groundScript.plantState = GameMaster.PlantState.JustPlanted;
                groundScript.plantName = inventory.items[seedName].returnName();
                guiScript.initializeInfoPanel(groundScript.plantName);
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
