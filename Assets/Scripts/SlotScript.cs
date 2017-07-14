/* Script that handles actions to be done for the wine */

using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;
using UnityEngine.EventSystems;

public class SlotScript : MonoBehaviour
{
    public static bool didPlant;
    public bool didCollect;
    public string SeedName { get; set; }
    public string CurrentlySelectedName { get; set; }

    private Inventory inventory;
    private GUIScript guiScript;
    private GameMaster gameMaster;
    private ColliderHandler colliderHandler;
    private Item currentlySelectedItem;

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
        if (SeedName != null && inventory.Items[SeedName].Stack > 0 && inventory.Items[SeedName].ItemType == Item.IType.GrapeVine)
        {
            // If the item is not a vine display error and dont plant

            if (((VineGrape)inventory.Items[SeedName]).GoV == VineGrape.GrapeOrVine.Vine)
            {
                // Set the groundscript, so that it is planted and remove the vine item
                currentlySelectedItem = inventory.Items[SeedName];
                parent.tag = "Planted";
                groundScript.PlantState = GameMaster.PlantState.JustPlanted;
                groundScript.PlantName = inventory.Items[SeedName].Name;
                guiScript.initializeInfoPanel(groundScript.PlantName);
                currentlySelectedItem.PopItem();
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

        foreach (KeyValuePair<string, Item> pair in inventory.Items)
        {
            if (pair.Value.Name == groundScript.PlantName && ((VineGrape)pair.Value).GoV == VineGrape.GrapeOrVine.Grape)
                groundScript.PlantName = pair.Key;
        }

        CurrentlySelectedName = groundScript.PlantName;
        currentlySelectedItem = inventory.Items[CurrentlySelectedName];
        groundScript.PlantName = null;
        currentlySelectedItem.AddItem();
        groundScript.resetTimer();
    }

    // Selects the grape to be played in the Grape crush minigame.
    public void selectGrape()
    {
        if (SeedName != null && 
            inventory.Items[SeedName].Stack > 0 && inventory.Items[SeedName].ItemType == Item.IType.GrapeVine)
        {
            if (((VineGrape)inventory.Items[SeedName]).GoV == VineGrape.GrapeOrVine.Grape)

            {
                GameObject parent = colliderHandler.ParentGameObject;
                CurrentlySelectedName = inventory.Items[SeedName].Name;
                currentlySelectedItem = inventory.Items[SeedName];
                currentlySelectedItem.PopItem();
                GameObject grape = Resources.Load<GameObject>("Grape"); // Load the grape used in the game
                grape.GetComponent<SpriteRenderer>().sprite = Resources.Load<Sprite>(currentlySelectedItem.SpriteName); // Change the sprite accordingly to what was selected
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
        fermentorScript.FermentationState = GameMaster.FermentationState.Fermenting;
        fermentorScript.Timer = 150;
        fermentorScript.IsFermenting = true;

        

        foreach (VineGrape vg in gameMaster.GetComponent<Database>().Collection.VineGrape)
        {
            if (vg.Name == fermentorScript.GrapeName && vg.GoV == VineGrape.GrapeOrVine.Grape)
            {
                fermentorScript.ourWine.GetComponent<OurWine>().ourWine.acidity = (Wine.Acidity)vg.AcidLevel;
                foreach (Wine.AromaFlavor af in vg.AromasFlavors)
                {
                    fermentorScript.ourWine.GetComponent<OurWine>().ourWine.aromasAndFlavors.Add(af);
                }
            }
        }
        
        
    }

    #region multiple wine method

    //public void AddWineToInventory()
    //{
    //    Item i = inventory.Items["Item6"];
    //    i.Name = "testi1";
    //    // i.AddItem();
    //    inventory.Items.Add("TestWine", i);
    //}

    #endregion

    // Collect the item accordingly what tag the parent has and also set the parent so it can be used again to ferment / clarificate or bottling.
    public void Collect()
    {
        GameObject parent = colliderHandler.ParentGameObject;
        if (parent.tag == "Fermenting")
        {
            FermentorScript fermentorScript = parent.GetComponent<FermentorScript>();
            parent.tag = "NotFermenting";

            inventory.Items["cw" + fermentorScript.ourWine.GetComponent<OurWine>().wineName].AddItem();
            
            // inventory.Items["Item6"].AddItem(); // #001 

            //AddWineToInventory();

            fermentorScript.FermentationState = GameMaster.FermentationState.NotFermentating;
            fermentorScript.IsFermenting = false;
            fermentorScript.GrapeName = null;
            fermentorScript.Timer = 0;
        }
        else if (parent.tag == "Clarificating")
        {
            ClarificationScript clarificationScript = parent.GetComponent<ClarificationScript>();

            // ohjaa menemään viiniin
            clarificationScript.ourWine.clarity = Wine.Clarity.Clear;
            clarificationScript.ourWine.condition = Wine.Condition.Clean;

            inventory.Items["cw" + clarificationScript.ourWine.Name].AddItem();

            parent.tag = "NotClarificating";
            clarificationScript.ClarificationState = GameMaster.ClarificationState.NotClarificating;
            clarificationScript.WineName = null;
            clarificationScript.Timer = 0;
        }
        else if (parent.tag == "Bottling")
        {
            BottlingScript bottlingScript = parent.GetComponent<BottlingScript>();
            
                parent.tag = "NotBottling";
                bottlingScript.BottlingState = GameMaster.BottlingState.NotBottling;

                inventory.Items["cw" + bottlingScript.ourWine.Name].AddItem();
                ((ItemOurWine)inventory.Items["cw" + bottlingScript.ourWine.Name]).IsSellable = true;

                bottlingScript.WineName = null;
                bottlingScript.Timer = 0;
            
        }
    }

    // Start the clarification process and set the clarification script so it is clarificating.
    public void Clarificate()
    {
        GameObject parent = colliderHandler.ParentGameObject;
        ClarificationScript clarificationScript = parent.GetComponent<ClarificationScript>();

        if (inventory.Items[SeedName].Stack > 0)
        {
            if (inventory.Items[SeedName].ItemType == Item.IType.Wine)
            {
                parent.tag = "Clarificating";
                clarificationScript.ourWine = (ItemOurWine)inventory.Items[SeedName];
                CurrentlySelectedName = inventory.Items[SeedName].Name;
                currentlySelectedItem = inventory.Items[SeedName];
                clarificationScript.WineName = CurrentlySelectedName;
                currentlySelectedItem.PopItem();
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

        if (inventory.Items[SeedName].Stack > 0)
        {
            if (inventory.Items[SeedName].ItemType == Item.IType.Wine)
            {
                if (((ItemOurWine)inventory.Items["cw" + bottlingScript.ourWine.Name]).IsSellable == false)
                {
                    parent.tag = "Bottling";
                    bottlingScript.ourWine = (ItemOurWine)inventory.Items[SeedName];
                    CurrentlySelectedName = inventory.Items[SeedName].Name;
                    currentlySelectedItem = inventory.Items[SeedName];
                    bottlingScript.WineName = CurrentlySelectedName;
                    currentlySelectedItem.PopItem();
                    guiScript.initializeInfoPanel(bottlingScript.WineName);
                    bottlingScript.BottlingState = GameMaster.BottlingState.Bottling;
                    bottlingScript.Timer = 100;
                    didPlant = true;
                }
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
