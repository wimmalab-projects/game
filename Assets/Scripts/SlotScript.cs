/* Script that handles actions to be done for the wine */

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
    ClarificationScript clarificationScript;
    BottlingScript bottlingScript;
    List<GameObject> vinePositions = new List<GameObject>();
    GameMaster gameMaster;


    // called before start
    void Awake()
    {
        guiTemp = GameObject.FindGameObjectWithTag("InventoryCanvas");
        guiScript = guiTemp.GetComponent<GUIScript>();
        inventory = GameObject.FindGameObjectWithTag("GameManager").GetComponent<Inventory>();
        gameMaster = GameObject.FindGameObjectWithTag("GameManager").GetComponent<GameMaster>();
    }

    // Plants the grape accordingly to what parent was selected.
    public void Plant()
    {
        didPlant = false;

        parent = ColliderHandler.parentGameObject;

        groundScript = parent.GetComponent<PlantGround>();

        // If the item count is zero dont plant and show error
        if (inventory.items[seedName].itemCount > 0)
        {
            // If the item is not a vine display error and dont plant
            if (inventory.items[seedName].returnItemType() == Item.ItemType.VINE)
            {
                // Set the groundscript, so that it is planted and remove the vine item
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

    // Harvest the ready grapes and set the groundscript so that there can be planted again.
    public void Harvest()
    {
        parent = ColliderHandler.parentGameObject;
        groundScript = parent.GetComponent<PlantGround>();

        parent.tag = "NotPlanted";
        groundScript.plantState = GameMaster.PlantState.NotPlanted;
        currentlySelectedName = groundScript.plantName;
        string selectedGrape = currentlySelectedName.Split(' ')[0] + " " + currentlySelectedName.Split(' ')[1]; // Get the name right so we can add correct item from the item database
        currentlySelectedName = selectedGrape;
        groundScript.plantName = null;
        inventory.items[currentlySelectedName].AddItem();
        groundScript.resetTimer();
    }

    // Selects the grape to be played in the Grape crush minigame.
    public void selectGrape()
    {
        if (inventory.items[seedName].itemCount > 0)
        {
            if (inventory.items[seedName].iType == Item.ItemType.GRAPE)
            {
                parent = ColliderHandler.parentGameObject;

                currentlySelectedName = inventory.items[seedName].returnName();
                inventory.items[currentlySelectedName].PopItem();
                GameObject grape = Resources.Load<GameObject>("Grape"); // Load the grape used in the game
                grape.GetComponent<SpriteRenderer>().sprite = Resources.Load<Sprite>(currentlySelectedName); // Change the sprite accordingly to what was selected
                string method = parent.gameObject.GetComponent<MethodCallerHandler>().MethodName = "PlayGrapeCrush"; // set the methodname so that we can go to grapecrush view
                parent.gameObject.GetComponent<MethodCallerHandler>().CallMethod(); // Call the method PlayGrapeCrush
                didPlant = true;
                method = parent.gameObject.GetComponent<MethodCallerHandler>().MethodName = "ViewInventory"; // Set the methodname default so we can open inventory again after.
            }
            else
            {
                didPlant = false;
                Debug.Log("Not grape");
            }
        }
        else
        {
            didPlant = false;
            Debug.Log("Not enough");
        }

    }

    // Start the fermentation process, by setting the fermentorscript so it is fermenting
    public void Ferment()
    {
        parent = ColliderHandler.parentGameObject;
        fermentorScript = parent.GetComponent<FermentorScript>();
        parent.tag = "Fermenting";
        fermentorScript.grapeName = currentlySelectedName;
        string selectedGrape = currentlySelectedName.Split(' ')[0] + " " + currentlySelectedName.Split(' ')[1]; // Get the name right so we can set winetype correctly
        currentlySelectedName = selectedGrape;
        if (currentlySelectedName == "White grape")
        {
            fermentorScript.WineType = GameMaster.Winetype.WhiteWine;
        }
        else
            fermentorScript.WineType = GameMaster.Winetype.RedWine;
        fermentorScript.FermentationState = GameMaster.FermentationState.Fermenting;
        fermentorScript.Timer = 5;
        fermentorScript.isFermenting = true;
    }

    // Collect the item accordingly what tag the parent has and also set the parent so it can be used again to ferment / clarificate or bottling.
    public void Collect()
    {
        parent = ColliderHandler.parentGameObject;
        if (parent.tag == "Fermenting")
        {
            fermentorScript = parent.GetComponent<FermentorScript>();
            parent.tag = "NotFermenting";
            inventory.items[gameMaster.GetDescription(fermentorScript.WineType)].AddItem();
            fermentorScript.FermentationState = GameMaster.FermentationState.NotFermentating;
            fermentorScript.isFermenting = false;
            fermentorScript.grapeName = null;
            fermentorScript.Timer = 0;
        }
        else if (parent.tag == "Clarificating")
        {
            clarificationScript = parent.GetComponent<ClarificationScript>();
            parent.tag = "NotClarificating";
            clarificationScript.clarificationState = GameMaster.ClarificationState.NotClarificating;
            inventory.items[clarificationScript.wineName].AddItem();
            clarificationScript.wineName = null;
            clarificationScript.Timer = 0;
        }
        else if (parent.tag == "Bottling")
        {
            bottlingScript = parent.GetComponent<BottlingScript>();
            parent.tag = "NotBottling";
            bottlingScript.bottlingState = GameMaster.BottlingState.NotBottling;
            inventory.items["Bottle"].AddItem();
            bottlingScript.wineName = null;
            bottlingScript.Timer = 0;
        }
    }

    // Start the clarification process and set the clarification script so it is clarificating.
    public void Clarificate()
    {
        parent = ColliderHandler.parentGameObject;
        clarificationScript = parent.GetComponent<ClarificationScript>();

        if (inventory.items[seedName].itemCount > 0)
        {
            if (inventory.items[seedName].iType == Item.ItemType.WINE)
            {
                parent.tag = "Clarificating";
                currentlySelectedName = inventory.items[seedName].returnName();
                clarificationScript.wineName = currentlySelectedName;
                inventory.items[currentlySelectedName].PopItem();
                guiScript.initializeInfoPanel(clarificationScript.wineName);
                clarificationScript.clarificationState = GameMaster.ClarificationState.Clarificating;
                clarificationScript.Timer = 10;
                didPlant = true;
            }
            else
            {
                didPlant = false;
                Debug.Log("Not wine");
            }
        }
        else
        {
            didPlant = false;
            Debug.Log("Not enough");
        }
    }

    // Start the bottling process and set the bottlingscript so that it is bottling.
    public void Bottling()
    {
        parent = ColliderHandler.parentGameObject;
        bottlingScript = parent.GetComponent<BottlingScript>();

        if (inventory.items[seedName].itemCount > 0)
        {
            if (inventory.items[seedName].iType == Item.ItemType.WINE)
            {
                parent.tag = "Bottling";
                currentlySelectedName = inventory.items[seedName].returnName();
                bottlingScript.wineName = currentlySelectedName;
                inventory.items[currentlySelectedName].PopItem();
                guiScript.initializeInfoPanel(bottlingScript.wineName);
                bottlingScript.bottlingState = GameMaster.BottlingState.Bottling;
                bottlingScript.Timer = 10;
                didPlant = true;
            }
            else
            {
                didPlant = false;
                Debug.Log("Not wine");
            }
        }
        else
        {
            didPlant = false;
            Debug.Log("Not enough");
        }
    }
}
