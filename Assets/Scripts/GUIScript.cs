/* Script that handles the inventory/infopanel visibilty, texts, sprites, actions and calls the right methods depending on what was clicked */

using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;
using UnityEngine.EventSystems;

public class GUIScript : MonoBehaviour
{

    public CanvasGroup inventory;
    public CanvasGroup infoPanel;
    public Text infoPanelText;
    public Text infoPanelTimer;
    public Button harvestButton;
    public Button plantButton;
    public string button;

    private Animator animator; // Animate the Inventory, but scrap this.
    private GameObject[] temp;
    private SlotScript slotScript;
    private PlantGround groundScript;
    private GameObject parent;
    private Image infoPanelSprite;
    private string timer;
    private GameObject gameManager;
    private FermentorScript fermentorScript;
    private GameMaster gameMaster;
    private ClarificationScript clarificationScript;
    private BottlingScript bottlingScript;

    // Use this for initialization

    void Awake()
    {
        // Get script/animator/sprite references
        gameManager = GameObject.FindGameObjectWithTag("GameManager");
        gameMaster = gameManager.GetComponent<GameMaster>();
        infoPanelSprite = infoPanel.transform.Find("Plant sprite").GetComponent<Image>();
        temp = GameObject.FindGameObjectsWithTag("Slot");
        slotScript = gameManager.GetComponent<SlotScript>();
        animator = GetComponent<Animator>();
    }

    private void Start()
    {
        inventory.alpha = 0;
    }
    // Update is called once per frame
    void Update()
    {
        // In the update, check the time left for each state, then update the timer accordingly to the infopanel timer text.
        if (infoPanel.alpha == 1)
        {
            if (parent.tag == "Planted")
            {
                timer = groundScript.niceTime;
                infoPanelTimer.text = timer;
                if (groundScript.Timer <= 0)
                {
                    infoPanelTimer.text = "Ready!";
                }
            }
            else if (parent.tag == "Fermenting")
            {
                timer = fermentorScript.niceTime;
                infoPanelTimer.text = timer;
                if (fermentorScript.Timer <= 0)
                {
                    infoPanelTimer.text = "Ready!";
                }
            }
            else if (parent.tag == "Clarificating")
            {
                timer = clarificationScript.niceTime;
                infoPanelTimer.text = timer;
                if (clarificationScript.Timer <= 0)
                {
                    infoPanelTimer.text = "Ready!";
                }
            }
            else if (parent.tag == "Bottling")
            {
                timer = bottlingScript.niceTime;
                infoPanelTimer.text = timer;
                if (bottlingScript.Timer <= 0)
                {
                    infoPanelTimer.text = "Ready!";
                }
            }
        }
    }

    // Initialize the infopanel text and sprite to match the current state.
    public void initializeInfoPanel(string name)
    {
        if (parent.tag == "Planted")
        {
            infoPanelText.text = name + " is growing!";
            infoPanelSprite.sprite = Resources.Load<Sprite>("" + name);
        }

        else if (parent.tag == "Fermenting")
        {
            infoPanelText.text = name + " is fermenting";
            infoPanelSprite.sprite = Resources.Load<Sprite>("" + name);
        }
        else if (parent.tag == "Clarificating")
        {
            infoPanelText.text = name + " is being clarificated";
            infoPanelSprite.sprite = Resources.Load<Sprite>("" + name);
        }
        else if (parent.tag == "Bottling")
        {
            infoPanelText.text = name + " is being bottled";
            infoPanelSprite.sprite = Resources.Load<Sprite>("" + name);
        }
    }

    // Check what button was pressed and perform action accordingly to that button. didPlant hides the inventory / infopanel if the action was succesfully executed. If not the inventory/infopanel stays open.
    public void ButtonClicked()
    {
        if (gameManager.GetComponent<GameMaster>().IsInventoryOpen == true)
        {
            button = EventSystem.current.currentSelectedGameObject.name;
            switch (button)
            {
                case "Exit":
                    infoPanel.alpha = 0;
                    inventory.alpha = 0;
                    break;
                case "Plant":
                    slotScript.Plant();
                    if (SlotScript.didPlant)
                    {
                        animator.SetBool("showInventory", false);
                    }
                    else
                        return;
                    break;
                case "Harvest":
                    if (groundScript.Timer <= 0)
                    {
                        slotScript.Harvest();
                        infoPanel.alpha = 0;
                    }
                    else
                        return;
                    break;
                case "Crush":
                    slotScript.selectGrape();
                    if (SlotScript.didPlant)
                    {
                        animator.SetBool("showInventory", false);
                    }
                    else
                        return;
                    break;
                case "Clarificate":
                    slotScript.Clarificate();
                    if (SlotScript.didPlant)
                    {
                        animator.SetBool("showInventory", false);
                    }
                    else
                        return;
                    break;
                case "Bottle":
                    slotScript.Bottling();
                    if (SlotScript.didPlant)
                    {
                        animator.SetBool("showInventory", false);
                    }
                    else
                        return;
                    break;
                case "Collect":
                    if ((parent.tag == "Fermenting" && fermentorScript.Timer <= 0) || (parent.tag == "Clarificating" && clarificationScript.Timer <= 0) || (parent.tag == "Bottling" && bottlingScript.Timer <= 0))
                    {
                        slotScript.Collect();
                        infoPanel.alpha = 0;
                    }
                    else
                        return;
                    break;
            }
            // Return the names and texts to default.
            plantButton.name = "Plant";
            plantButton.GetComponentInChildren<Text>().text = "Plant";
            harvestButton.name = "Harvest";
            harvestButton.GetComponentInChildren<Text>().text = "Harvest";
            GameObject.FindGameObjectWithTag("GameManager").GetComponent<GameMaster>().IsInventoryOpen = false;
        }
    }

    // Shows the inventory or the infopanel depending on what was clicked. Also changes the button name and text so that the right action can be performed
    public void showInventory()
    {
        parent = ColliderHandler.parentGameObject;
        groundScript = parent.GetComponent<PlantGround>();
        fermentorScript = parent.GetComponent<FermentorScript>();
        clarificationScript = parent.GetComponent<ClarificationScript>();
        bottlingScript = parent.GetComponent<BottlingScript>();

        switch (parent.tag)
        {
            case "NotPlanted":
                inventory.alpha = 1;
                animator.SetBool("showInventory", true);
                break;
            case "Planted":
                infoPanel.alpha = 1;
                initializeInfoPanel(groundScript.plantName);
                break;
            case "NotFermenting":
                inventory.alpha = 1;
                animator.SetBool("showInventory", true);
                plantButton.name = "Crush";
                plantButton.GetComponentInChildren<Text>().text = "Crush";
                break;
            case "Fermenting":
                infoPanel.alpha = 1;
                initializeInfoPanel(gameMaster.GetDescription(fermentorScript.WineType));
                harvestButton.name = "Collect";
                harvestButton.GetComponentInChildren<Text>().text = "Collect";
                break;
            case "NotClarificating":
                inventory.alpha = 1;
                animator.SetBool("showInventory", true);
                plantButton.name = "Clarificate";
                plantButton.GetComponentInChildren<Text>().text = "Clarificate";
                break;
            case "Clarificating":
                infoPanel.alpha = 1;
                initializeInfoPanel(clarificationScript.wineName);
                harvestButton.name = "Collect";
                harvestButton.GetComponentInChildren<Text>().text = "Collect";
                break;
            case "NotBottling":
                inventory.alpha = 1;
                //animator.SetBool("showInventory", true);
                plantButton.name = "Bottle";
                plantButton.GetComponentInChildren<Text>().text = "Bottle";
                break;
            case "Bottling":
                infoPanel.alpha = 1;
                initializeInfoPanel(bottlingScript.wineName);
                harvestButton.name = "Collect";
                harvestButton.GetComponentInChildren<Text>().text = "Collect";
                break;
        }
    }
}
