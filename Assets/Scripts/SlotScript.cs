using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;
using UnityEngine.EventSystems;

public class SlotScript : MonoBehaviour, IPointerClickHandler
{
    public List<GameObject> slots = new List<GameObject>();
    public Text uiItemCount;
    public Text uiItemName;
    public static bool didPlant;
    public int slotNumber;
    private int itemCount;
    private Image itemImage;
    private static Inventory inventory;
    private GameObject infoPanel;
    private GUIScript guiScript;
    private static int currentlySelectedID;
    private static int returnCount;
    private static string currentlySelectedName;
    private static Item.ItemType currentlySelectedTag;

    private void Awake()
    {
        infoPanel = GameObject.FindGameObjectWithTag("InventoryCanvas");
        guiScript = infoPanel.GetComponent<GUIScript>();
        inventory = GameObject.FindGameObjectWithTag("Inventory").GetComponent<Inventory>();
        itemImage = gameObject.transform.GetChild(0).GetComponent<Image>();
    }

    // Update is called once per frame
    void Update()
    {
        uiItemName.text = inventory.items[slotNumber].returnName();
        uiItemCount.text = inventory.items[slotNumber].itemCount.ToString();
        itemImage.sprite = inventory.items[slotNumber].ItemSprite;
        itemCount = inventory.items[slotNumber].itemCount;
    }

    public void Plant()
    {
        didPlant = false;
        GameObject parent = ColliderHandler.parentGameObject;
        PlantGround groundScript = parent.GetComponent<PlantGround>();


        Debug.Log(inventory.items[slotNumber].itemCount);
        // IF HELVETTI + HELVETIN RUMAA KOODIA..... KORJAA!!!!!
        if (returnCount > 0)
        {
            
            if (currentlySelectedName != null)
            {
                if (currentlySelectedTag == Item.ItemType.VINE)
                {
                    //Debug.Log("Planted " + currentlySelectedName + " on " + ColliderHandler.parentGameObject);
                    parent.GetComponentInChildren<MeshRenderer>().material.mainTexture = Resources.Load<Texture>("Bottle");
                    parent.tag = "Planted";
                    groundScript.isPlanted = true;
                    groundScript.plantName = currentlySelectedName;
                    inventory.items[slotNumber].PopItem();
                    didPlant = true;
                    clearHighlight();

                }
                else
                    Debug.Log("Youre trying to plant something else than seed");
            }
            else
                Debug.Log("No seed selected");
        }
        else
        {
            Debug.Log("Not enough seeds");
        }

        currentlySelectedName = null;
    }

    public void OnPointerClick(PointerEventData data)
    {
        clearHighlight();
        if (inventory.items[slotNumber] != null)
        {
            gameObject.GetComponent<Image>().sprite = Resources.Load<Sprite>("inventory_block_tileset 1");
            currentlySelectedID = inventory.items[slotNumber].returnID();
            currentlySelectedName = inventory.items[slotNumber].returnName();
            currentlySelectedTag = inventory.items[slotNumber].returnItemType();
            returnCount = itemCount;
        }
    }

    void clearHighlight()
    {
        foreach (GameObject asd in inventory.slots)
        {
            asd.GetComponent<Image>().sprite = Resources.Load<Sprite>("inventory_block_tileset");
        }
    }
}
