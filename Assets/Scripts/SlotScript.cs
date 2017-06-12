using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;
using UnityEngine.EventSystems;

public class SlotScript : MonoBehaviour
{
    public static bool didPlant;

    private static Inventory inventory;
    private static int returnCount;
    private static string currentlySelectedName;
    private static Item.ItemType currentlySelectedTag;
    public string seedName;

    GameObject parent;
    PlantGround groundScript;
    List<GameObject> vinePositions = new List<GameObject>();

    // called before start
    private void Awake()
    {
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
