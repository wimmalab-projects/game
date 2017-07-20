/* Script that handles the inventory/infopanel visibilty, texts, sprites, actions and calls the right methods depending on what was clicked */

using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;
using UnityEngine.EventSystems;

public class GUIScript : MonoBehaviour
{

    public CanvasGroup Inventory; // Drag in editor
    public CanvasGroup InfoPanel; // Drag in editor
    public Text InfoPanelText; // Drag in editor
    public Text InfoPanelTimer; // Drag in editor
    public Button HarvestButton; // Drag in editor
    public Button PlantButton; // Drag in editor
    public Button CollectGrapeButton; // Drag in editor
    public string Button; 

    private Animator animator; // Animate the Inventory, but scrap this.
    private SlotScript slotScript;
    private PlantGround groundScript;
    private GameObject parent;
    private Image infoPanelSprite;
    private GameObject gameManager;
    private FermentorScript fermentorScript;
    private GameMaster gameMaster;
    private ClarificationScript clarificationScript;
    private BottlingScript bottlingScript;
    private ColliderHandler colliderHandler;

    // Use this for initialization

    void Awake()
    {
        // Get script/animator/sprite references
        gameManager = GameObject.FindGameObjectWithTag("GameManager");
        gameMaster = gameManager.GetComponent<GameMaster>();
        infoPanelSprite = InfoPanel.transform.Find("Plant sprite").GetComponent<Image>();
        slotScript = gameManager.GetComponent<SlotScript>();
        animator = GetComponent<Animator>();
        colliderHandler = gameManager.GetComponent<ColliderHandler>();
    }

    // Update is called once per frame
    void Update()
    {
        string timer;
        // In the update, check the time left for each state, then update the timer accordingly to the infopanel timer text.
        if (InfoPanel.alpha == 1)
        {
            if (parent.tag == "Planted")
            {
                timer = groundScript.NiceTime;
                InfoPanelTimer.text = timer;
                if (groundScript.Timer <= 0)
                {
                    InfoPanelTimer.text = "Ready!";
                    HarvestButton.interactable = true;
                }
            }
            else if (parent.tag == "Fermenting")
            {
                if (!fermentorScript.wineTypeDecided && fermentorScript.Timer > 0)
                {
                    CollectGrapeButton.gameObject.SetActive(true);
                }
                else
                {
                    CollectGrapeButton.gameObject.SetActive(false);
                }

                timer = fermentorScript.NiceTime;
                InfoPanelTimer.text = timer;
                if (fermentorScript.Timer <= 0)
                {
                    InfoPanelTimer.text = "Ready!";
                    HarvestButton.interactable = true;
                }
            }
            else if (parent.tag == "Clarificating")
            {
                timer = clarificationScript.NiceTime;
                InfoPanelTimer.text = timer;
                if (clarificationScript.Timer <= 0)
                {
                    InfoPanelTimer.text = "Ready!";
                    HarvestButton.interactable = true;
                }
            }
            else if (parent.tag == "Bottling")
            {
                timer = bottlingScript.NiceTime;
                InfoPanelTimer.text = timer;
                if (bottlingScript.Timer <= 0)
                {
                    InfoPanelTimer.text = "Ready!";
                    HarvestButton.interactable = true;
                }
            }
        }
    }

    // Initialize the infopanel text and sprite to match the current state.
    public void initializeInfoPanel(string name)
    {
        if (parent.tag == "Planted")
        {
            InfoPanelText.text = name + " is growing!";
            infoPanelSprite.sprite = Resources.Load<Sprite>("" + name);
        }

        else if (parent.tag == "Fermenting")
        {
            InfoPanelText.text = name + " is fermenting";
            infoPanelSprite.sprite = Resources.Load<Sprite>("" + name);
        }
        else if (parent.tag == "Clarificating")
        {
            InfoPanelText.text = name + " is being clarificated";
            infoPanelSprite.sprite = Resources.Load<Sprite>("" + name);
        }
        else if (parent.tag == "Bottling")
        {
            InfoPanelText.text = name + " is being bottled";
            infoPanelSprite.sprite = Resources.Load<Sprite>("" + name);
        }
    }

    public void AddIngredient()
    {
        slotScript.AddIngredient();
    }

    // Check what button was pressed and perform action accordingly to that button. didPlant hides the inventory / infopanel if the action was succesfully executed. If not the inventory/infopanel stays open.
    public void ButtonClicked()
    {
        // instantiate sound effect
        gameMaster.InstantiateSFX("sfx/TouchSFX");

        if (gameManager.GetComponent<GameMaster>().IsInventoryOpen)
        {
            Button = EventSystem.current.currentSelectedGameObject.name;
            switch (Button)
            {
                case "Exit":
                    InfoPanel.alpha = 0;
                    animator.SetBool("showInventory", false);
                    ResetButtons();
                    break;
                case "Plant":
                    slotScript.Plant();
                    if (SlotScript.didPlant)
                    {
                        animator.SetBool("showInventory", false);
                        ResetButtons();
                    }
                    else
                        return;
                    break;
                case "Harvest":
                    if (groundScript.Timer <= 0)
                    {
                        slotScript.Harvest();
                        InfoPanel.alpha = 0;
                        ResetButtons();
                    }
                    else
                        return;
                    break;
                case "Crush":
                    slotScript.selectGrape();
                    if (SlotScript.didPlant)
                    {
                        animator.SetBool("showInventory", false);
                        ResetButtons();
                    }
                    else
                        return;
                    break;
                case "Clarificate":
                    slotScript.Clarificate();
                    if (SlotScript.didPlant)
                    {
                        animator.SetBool("showInventory", false);
                        ResetButtons();
                    }
                    else
                        return;
                    break;
                case "Bottle":
                    slotScript.Bottling();
                    if (SlotScript.didPlant)
                    {
                        animator.SetBool("showInventory", false);
                        ResetButtons();
                    }
                    else
                        return;
                    break;
                case "Collect":
                    if ((parent.tag == "Fermenting" && fermentorScript.Timer <= 0) || (parent.tag == "Clarificating" && clarificationScript.Timer <= 0) || (parent.tag == "Bottling" && bottlingScript.Timer <= 0))
                    {
                        slotScript.Collect();
                        InfoPanel.alpha = 0;
                        ResetButtons();
                    }
                    else
                        return;
                    break;
                case "CollectGrapes":
                    fermentorScript.CollectedGrapes = true;
                    CollectGrapeButton.gameObject.SetActive(false);
                    break;
            }
        }
    }

    void ResetButtons()
    {
        // Return the names and texts to default.
        PlantButton.name = "Plant";
        PlantButton.GetComponentInChildren<Text>().text = "Plant";
        HarvestButton.name = "Harvest";
        HarvestButton.GetComponentInChildren<Text>().text = "Harvest";
        GameObject.FindGameObjectWithTag("GameManager").GetComponent<GameMaster>().IsInventoryOpen = false;
        HarvestButton.interactable = false;
    }

    // Shows the inventory or the infopanel depending on what was clicked. Also changes the button name and text so that the right action can be performed
    public void showInventory()
    {
        parent = colliderHandler.ParentGameObject;
        groundScript = parent.GetComponent<PlantGround>();
        fermentorScript = parent.GetComponent<FermentorScript>();
        clarificationScript = parent.GetComponent<ClarificationScript>();
        bottlingScript = parent.GetComponent<BottlingScript>();
        GameObject.FindGameObjectWithTag("GameManager").GetComponent<Inventory>().ShowHideSlots();

        switch (parent.tag)
        {
            case "NotPlanted":
                Inventory.alpha = 1;
                animator.SetBool("showInventory", true);
                break;
            case "Planted":
                InfoPanel.alpha = 1;
                initializeInfoPanel(groundScript.PlantName);
                break;
            case "NotFermenting":
                Inventory.alpha = 1;
                animator.SetBool("showInventory", true);
                PlantButton.name = "Crush";
                PlantButton.GetComponentInChildren<Text>().text = "Crush";
                break;
            case "Fermenting":
                InfoPanel.alpha = 1;
                initializeInfoPanel(fermentorScript.ourWine.wineName);
                HarvestButton.name = "Collect";
                HarvestButton.GetComponentInChildren<Text>().text = "Collect";
                break;
            case "NotClarificating":
                Inventory.alpha = 1;
                animator.SetBool("showInventory", true);
                PlantButton.name = "Clarificate";
                PlantButton.GetComponentInChildren<Text>().text = "Clarificate";
                break;
            case "Clarificating":
                InfoPanel.alpha = 1;
                initializeInfoPanel(clarificationScript.WineName);
                HarvestButton.name = "Collect";
                HarvestButton.GetComponentInChildren<Text>().text = "Collect";
                break;
            case "NotBottling":
                Inventory.alpha = 1;
                animator.SetBool("showInventory", true);
                PlantButton.name = "Bottle";
                PlantButton.GetComponentInChildren<Text>().text = "Bottle";
                break;
            case "Bottling":
                InfoPanel.alpha = 1;
                initializeInfoPanel(bottlingScript.WineName);
                HarvestButton.name = "Collect";
                HarvestButton.GetComponentInChildren<Text>().text = "Collect";
                break;
        }
    }
}
