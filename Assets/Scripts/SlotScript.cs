/* Script that handles actions to be done for the wine */

using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;
using UnityEngine.EventSystems;

public class SlotScript : MonoBehaviour
{
    public static bool didPlant;
    public string SeedName { get; set; }
    public string CurrentlySelectedName { get; set; }

    private Inventory inventory;
    private GUIScript guiScript;
    private GameMaster gameMaster;
    private ColliderHandler colliderHandler;


    // called before start
    void Awake()
    {
        inventory = GameObject.FindGameObjectWithTag("GameManager").GetComponent<Inventory>();
        gameMaster = GameObject.FindGameObjectWithTag("GameManager").GetComponent<GameMaster>();
        colliderHandler = gameMaster.GetComponent<ColliderHandler>();
        guiScript = GameObject.FindGameObjectWithTag("InventoryCanvas").GetComponent<GUIScript>();
    }

    // Plants the grape accordingly to what parent was selected.
    public void Plant()
    {
        didPlant = false;

        GameObject parent = colliderHandler.ParentGameObject;

        PlantGround groundScript = parent.GetComponent<PlantGround>();

        // If the item count is zero dont plant and show error
        if (inventory.Items[SeedName].itemCount > 0)
        {
            // If the item is not a vine display error and dont plant
            if (inventory.Items[SeedName].returnItemType() == Item.ItemType.GrapeVine)
            {
                // Set the groundscript, so that it is planted and remove the vine item
                parent.tag = "Planted";
                groundScript.PlantState = GameMaster.PlantState.JustPlanted;
                groundScript.PlantName = inventory.Items[SeedName].returnName();
                guiScript.initializeInfoPanel(groundScript.PlantName);
                inventory.Items[SeedName].PopItem();
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
        GameObject parent = colliderHandler.ParentGameObject;
        PlantGround groundScript = parent.GetComponent<PlantGround>();

        parent.tag = "NotPlanted";
        groundScript.PlantState = GameMaster.PlantState.NotPlanted;
        CurrentlySelectedName = groundScript.PlantName;
        string selectedGrape = CurrentlySelectedName.Split(' ')[0] + " " + CurrentlySelectedName.Split(' ')[1]; // Get the name right so we can add correct item from the item database
        CurrentlySelectedName = selectedGrape;
        groundScript.PlantName = null;
        inventory.Items[CurrentlySelectedName].AddItem();
        groundScript.resetTimer();
    }

    // Selects the grape to be played in the Grape crush minigame.
    public void selectGrape()
    {
        if (inventory.Items[SeedName].itemCount > 0)
        {
            if (inventory.Items[SeedName].iType == Item.ItemType.GrapeVine)
            {
                GameObject parent = colliderHandler.ParentGameObject;

                CurrentlySelectedName = inventory.Items[SeedName].returnName();
                inventory.Items[CurrentlySelectedName].PopItem();
                GameObject grape = Resources.Load<GameObject>("Grape"); // Load the grape used in the game
                grape.GetComponent<SpriteRenderer>().sprite = Resources.Load<Sprite>(CurrentlySelectedName); // Change the sprite accordingly to what was selected
                parent.gameObject.GetComponent<MethodCallerHandler>().MethodName = "PlayGrapeCrush"; // set the methodname so that we can go to grapecrush view
                parent.gameObject.GetComponent<MethodCallerHandler>().CallMethod(); // Call the method PlayGrapeCrush
                didPlant = true;
                parent.gameObject.GetComponent<MethodCallerHandler>().MethodName = "ViewInventory"; // Set the methodname default so we can open inventory again after.
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
        GameObject parent = colliderHandler.ParentGameObject;
        FermentorScript fermentorScript = parent.GetComponent<FermentorScript>();
        parent.tag = "Fermenting";
        fermentorScript.GrapeName = CurrentlySelectedName;
        string selectedGrape = CurrentlySelectedName.Split(' ')[0] + " " + CurrentlySelectedName.Split(' ')[1]; // Get the name right so we can set winetype correctly
        CurrentlySelectedName = selectedGrape;
        if (CurrentlySelectedName == "White grape")
        {
            fermentorScript.WineType = GameMaster.Winetype.WhiteWine;
        }
        else
            fermentorScript.WineType = GameMaster.Winetype.RedWine;
        fermentorScript.FermentationState = GameMaster.FermentationState.Fermenting;
        fermentorScript.Timer = 150;
        fermentorScript.IsFermenting = true;
    }

    // Collect the item accordingly what tag the parent has and also set the parent so it can be used again to ferment / clarificate or bottling.
    public void Collect()
    {
        GameObject parent = colliderHandler.ParentGameObject;
        if (parent.tag == "Fermenting")
        {
            FermentorScript fermentorScript = parent.GetComponent<FermentorScript>();
            parent.tag = "NotFermenting";
            inventory.Items[gameMaster.GetDescription(fermentorScript.WineType)].AddItem();
            fermentorScript.FermentationState = GameMaster.FermentationState.NotFermentating;
            fermentorScript.IsFermenting = false;
            fermentorScript.GrapeName = null;
            fermentorScript.Timer = 0;
        }
        else if (parent.tag == "Clarificating")
        {
            ClarificationScript clarificationScript = parent.GetComponent<ClarificationScript>();
            parent.tag = "NotClarificating";
            clarificationScript.ClarificationState = GameMaster.ClarificationState.NotClarificating;
            inventory.Items[clarificationScript.WineName].AddItem();
            clarificationScript.WineName = null;
            clarificationScript.Timer = 0;
        }
        else if (parent.tag == "Bottling")
        {
            BottlingScript bottlingScript = parent.GetComponent<BottlingScript>();
            parent.tag = "NotBottling";
            bottlingScript.BottlingState = GameMaster.BottlingState.NotBottling;
            inventory.Items["Bottle"].AddItem();
            bottlingScript.WineName = null;
            bottlingScript.Timer = 0;
        }
    }

    // Start the clarification process and set the clarification script so it is clarificating.
    public void Clarificate()
    {
        GameObject parent = colliderHandler.ParentGameObject;
        ClarificationScript clarificationScript = parent.GetComponent<ClarificationScript>();

        if (inventory.Items[SeedName].itemCount > 0)
        {
            if (inventory.Items[SeedName].iType == Item.ItemType.FinishedWine)
            {
                parent.tag = "Clarificating";
                CurrentlySelectedName = inventory.Items[SeedName].returnName();
                clarificationScript.WineName = CurrentlySelectedName;
                inventory.Items[CurrentlySelectedName].PopItem();
                guiScript.initializeInfoPanel(clarificationScript.WineName);
                clarificationScript.ClarificationState = GameMaster.ClarificationState.Clarificating;
                clarificationScript.Timer = 100;
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
        GameObject parent = colliderHandler.ParentGameObject;
        BottlingScript bottlingScript = parent.GetComponent<BottlingScript>();

        if (inventory.Items[SeedName].itemCount > 0)
        {
            if (inventory.Items[SeedName].iType == Item.ItemType.FinishedWine)
            {
                parent.tag = "Bottling";
                CurrentlySelectedName = inventory.Items[SeedName].returnName();
                bottlingScript.WineName = CurrentlySelectedName;
                inventory.Items[CurrentlySelectedName].PopItem();
                guiScript.initializeInfoPanel(bottlingScript.WineName);
                bottlingScript.BottlingState = GameMaster.BottlingState.Bottling;
                bottlingScript.Timer = 100;
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
