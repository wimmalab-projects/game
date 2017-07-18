/* Script that handles actions to be done for the wine */

using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;
using UnityEngine.EventSystems;
using System;

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

        GameObject parent = GetColliderParent();
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
                //guiScript.initializeInfoPanel(groundScript.PlantName);
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
        GameObject parent = GetColliderParent();
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
        parent.GetComponent<SpriteRenderer>().sprite = null;
    }

    // Selects the grape to be played in the Grape crush minigame.
    public void selectGrape()
    {
        if (SeedName != null &&
            inventory.Items[SeedName].Stack > 0 && inventory.Items[SeedName].ItemType == Item.IType.GrapeVine)
        {
            if (((VineGrape)inventory.Items[SeedName]).GoV == VineGrape.GrapeOrVine.Grape)

            {
                GameObject parent = GetColliderParent();
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
        GameObject parent = GetColliderParent();
        FermentorScript fermentorScript = parent.GetComponent<FermentorScript>();
        parent.tag = "Fermenting";
        fermentorScript.GrapeName = CurrentlySelectedName;
        fermentorScript.FermentationState = GameMaster.FermentationState.Fermenting;
        fermentorScript.Timer = 150; // vaihda takasi 150
        fermentorScript.IsFermenting = true;


        Debug.Log(parent);

        foreach (VineGrape vg in gameMaster.GetComponent<Database>().Collection.VineGrape)
        {
            if (vg.Name == fermentorScript.GrapeName && vg.GoV == VineGrape.GrapeOrVine.Grape)
            {
                fermentorScript.ourWine.ourWine.acidity = (Wine.Acidity)vg.AcidLevel;
                fermentorScript.ourWine.ourWine.intensity = (Wine.Intensity)vg.AromaIntensity;
                fermentorScript.ourWine.ourWine.AlcoholLevel = vg.AlcoholLevel;
                fermentorScript.ourWine.ourWine.aromasAndFlavors = new List<Wine.AromaFlavor>();
                //fermentorScript.ourWine.GetComponent<OurWine>().ourWine.body;
                foreach (Wine.AromaFlavor af in vg.AromasFlavors)
                {
                    fermentorScript.ourWine.ourWine.aromasAndFlavors.Add(af);
                }
            }
        }


    }

    // Collect the item accordingly what tag the parent has and also set the parent so it can be used again to ferment / clarificate or bottling.
    public void Collect()
    {
        GameObject parent = GetColliderParent();
        if (parent.tag == "Fermenting")
        {
            FermentorScript fermentorScript = parent.GetComponent<FermentorScript>();
            parent.tag = "NotFermenting";

            inventory.Items["cw" + fermentorScript.ourWine.wineName].AddItem();

            float average = (((ItemOurWine)inventory.Items["cw" + fermentorScript.ourWine.wineName]).AlcoholLevel + (int)fermentorScript.ourWine.ourWine.tannin);

            if (average < 13)
            {
                ((ItemOurWine)inventory.Items["cw" + fermentorScript.ourWine.wineName]).body = Wine.Body.Light;
            }
            else if (average < 14)
            {
                ((ItemOurWine)inventory.Items["cw" + fermentorScript.ourWine.wineName]).body = Wine.Body.Medium;
            }
            else
            {
                ((ItemOurWine)inventory.Items["cw" + fermentorScript.ourWine.wineName]).body = Wine.Body.Full;
            }

            fermentorScript.FermentationState = GameMaster.FermentationState.NotFermentating;
            fermentorScript.IsFermenting = false;
            fermentorScript.GrapeName = null;
            fermentorScript.Timer = 0;
            fermentorScript.wineTypeDecided = false;
            fermentorScript.ourWine = new OurWine();
        }
        else if (parent.tag == "Clarificating")
        {
            ClarificationScript clarificationScript = parent.GetComponent<ClarificationScript>();

            // ohjaa menemään viiniin
            ((ItemOurWine)inventory.Items["cw" + clarificationScript.ourWine.Name]).clarity = Wine.Clarity.Clear;
            ((ItemOurWine)inventory.Items["cw" + clarificationScript.ourWine.Name]).condition = Wine.Condition.Clean;

            inventory.Items["cw" + clarificationScript.ourWine.Name].AddItem();

            parent.tag = "NotClarificating";
            clarificationScript.ClarificationState = GameMaster.ClarificationState.NotClarificating;
            clarificationScript.WineName = null;
            clarificationScript.Timer = 0;
            Debug.Log(((ItemOurWine)inventory.Items["cw" + clarificationScript.ourWine.Name]).condition);
        }
        else if (parent.tag == "Bottling")
        {
            BottlingScript bottlingScript = parent.GetComponent<BottlingScript>();
<<<<<<< HEAD
=======

>>>>>>> 1a84ec536cb79f9c58a742ff3db3ee149cbd0174
            parent.tag = "NotBottling";
            bottlingScript.BottlingState = GameMaster.BottlingState.NotBottling;
            inventory.Items["cw" + bottlingScript.ourWine.Name].AddItem();
            ((ItemOurWine)inventory.Items["cw" + bottlingScript.ourWine.Name]).IsBottled = true;
            bottlingScript.WineName = null;
            bottlingScript.Timer = 0;
<<<<<<< HEAD

=======

            inventory.Items["cw" + bottlingScript.ourWine.Name].AddItem();
            ((ItemOurWine)inventory.Items["cw" + bottlingScript.ourWine.Name]).IsBottled = true;

            inventory.Items["cw" + bottlingScript.ourWine.Name].AddItem();
            ((ItemOurWine)inventory.Items["cw" + bottlingScript.ourWine.Name]).IsBottled = true;
>>>>>>> 1a84ec536cb79f9c58a742ff3db3ee149cbd0174
        }
    }

    // Start the clarification process and set the clarification script so it is clarificating.
    public void Clarificate()
    {
        GameObject parent = GetColliderParent();
        ClarificationScript clarificationScript = parent.GetComponent<ClarificationScript>();

        if (inventory.Items[SeedName].Stack > 0)
        {
            if (inventory.Items[SeedName].ItemType == Item.IType.Wine)
            {
                if (((ItemOurWine)inventory.Items[SeedName]).clarity == Wine.Clarity.Hazy || ((ItemOurWine)inventory.Items[SeedName]).condition == Wine.Condition.Unclean)
                {
                    parent.tag = "Clarificating";
                    clarificationScript.ourWine = (ItemOurWine)inventory.Items[SeedName];
                    Debug.Log(clarificationScript.ourWine.Name);
                    CurrentlySelectedName = inventory.Items[SeedName].Name;
                    currentlySelectedItem = inventory.Items[SeedName];
                    clarificationScript.WineName = CurrentlySelectedName;
                    currentlySelectedItem.PopItem();
                    //guiScript.initializeInfoPanel(clarificationScript.ourWine.Name);
                    clarificationScript.ClarificationState = GameMaster.ClarificationState.Clarificating;
                    clarificationScript.Timer = 100;
                    didPlant = true;
                }
                else
                {
                    didPlant = false;
                    Debug.Log("Homo viini");
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

    // Start the bottling process and set the bottlingscript so that it is bottling.
    public void Bottling()
    {
        GameObject parent = GetColliderParent();
        BottlingScript bottlingScript = parent.GetComponent<BottlingScript>();

        if (inventory.Items[SeedName].Stack > 0)
        {
            if (inventory.Items[SeedName].ItemType == Item.IType.Wine)
            {
                if (((ItemOurWine)inventory.Items[SeedName]).IsBottled == false)
                {
                    parent.tag = "Bottling";
                    bottlingScript.ourWine = (ItemOurWine)inventory.Items[SeedName];
                    CurrentlySelectedName = inventory.Items[SeedName].Name;
                    currentlySelectedItem = inventory.Items[SeedName];
                    bottlingScript.WineName = CurrentlySelectedName;
                    currentlySelectedItem.PopItem();
                    //guiScript.initializeInfoPanel(bottlingScript.ourWine.Name);
                    bottlingScript.BottlingState = GameMaster.BottlingState.Bottling;
                    bottlingScript.Timer = 100;
                    didPlant = true;
                }
                else
                {
                    didPlant = false;
                    Debug.Log("Already bottled");
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

    public void AddIngredient()
    {
        if (inventory.Items["Item1"].Stack > 0)
        {
            GameObject parent = GetColliderParent();
            FermentorScript fs = parent.GetComponent<FermentorScript>();

            Debug.Log(inventory.Items["Item1"].Stack);

            if ((int)fs.ourWine.ourWine.sweetness < 3)
            {
                inventory.Items["Item1"].PopItem();
                fs.ourWine.ourWine.sweetness++;
            }
        }
    }

    public GameObject GetColliderParent()
    {
        return colliderHandler.ParentGameObject;
    }
}
