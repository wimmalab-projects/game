using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;
using UnityEngine.EventSystems;

public class SlotScript : MonoBehaviour
{
    public static bool didPlant;
    public string seedName;
    public string currentlySelectedName;

    private static Inventory inventory;
    private static int returnCount;
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
    }

    public void Harvest()
    {
        parent = ColliderHandler.parentGameObject;
        groundScript = parent.GetComponent<PlantGround>();

        parent.tag = "NotPlanted";
        groundScript.plantState = GameMaster.PlantState.NotPlanted;
        groundScript.plantName = null;
        inventory.items["Grape"].AddItem();
        didPlant = true;
    }

    public void selectGrape()
    {
        parent = ColliderHandler.parentGameObject;

        currentlySelectedName = inventory.items[seedName].returnName();
        inventory.items[currentlySelectedName].PopItem();
        string selectedGrape = currentlySelectedName.Split(' ')[0] + " " + currentlySelectedName.Split(' ')[1];
        currentlySelectedName = selectedGrape;
        GameObject grape = Resources.Load<GameObject>("Grape");
        grape.GetComponent<SpriteRenderer>().sprite = Resources.Load<Sprite>(currentlySelectedName);
        //Resources.UnloadAsset(grape);
        string method = parent.gameObject.GetComponent<MethodCallerHandler>().MethodName = "PlayGrapeCrush";
        parent.gameObject.GetComponent<MethodCallerHandler>().CallMethod();
        didPlant = true;
        method = parent.gameObject.GetComponent<MethodCallerHandler>().MethodName = "ViewInventory";
    }

}
