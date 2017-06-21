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

    private Inventory inventory;
    //private static int returnCount;
    //private static Item.ItemType currentlySelectedTag;
    private GameObject guiTemp;
    private GUIScript guiScript;

    GameObject parent;
    PlantGround groundScript;
    FermentorScript fermentorScript;
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
            else
            {
                Debug.Log("Not a seed");
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
        groundScript.resetTimer();
    }

    //Tee paremmin?
    public void selectGrape()
    {
        if (inventory.items[seedName].itemCount > 0)
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
        else
            Debug.Log("Not enough");
    }

    public void Ferment()
    {
        parent = ColliderHandler.parentGameObject;
        fermentorScript = parent.GetComponent<FermentorScript>();
        parent.tag = "Fermenting";
        fermentorScript.grapeName = currentlySelectedName;
        fermentorScript.isFermenting = true;
        fermentorScript.FermentationState = GameMaster.FermentationState.WhiteWine;
        fermentorScript.timer = 4;

        //switch (fermentorScript.FermentationState)
        //{
        //    case GameMaster.FermentationState.WhiteWine:
        //        fermentorScript.timer = 10;
        //        break;
        //    case GameMaster.FermentationState.RoseWine:
        //        fermentorScript.timer = 100;
        //        break;
        //    case GameMaster.FermentationState.RedWine:
        //        fermentorScript.timer = 150;
        //        break;
        //    default:
        //        break;
        //}
    }

    public void Collect()
    {
        parent = ColliderHandler.parentGameObject;
        fermentorScript = parent.GetComponent<FermentorScript>();

        parent.tag = "NotFermenting";
        fermentorScript.FermentationState = GameMaster.FermentationState.NotFermentating;
        fermentorScript.isFermenting = false;
        fermentorScript.grapeName = null;
        fermentorScript.timer = 0;
        inventory.items["Bottle"].AddItem();
    }
}
