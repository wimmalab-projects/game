using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;
using UnityEngine.EventSystems;

public class SlotScript : MonoBehaviour, IPointerClickHandler
{
    public List<GameObject> slots = new List<GameObject>();
    public Item item;
    public Text uiItemCount;
    public static bool didPlant;
    public int slotNumber;

    private Image itemImage;
    private static Inventory inventory;
    private int itemCount;
    private static int currentlySelectedID;
    private static int returnCount;
    private static string currentlySelectedName;
    private static string currentlySelectedTag;

    // Use this for initialization
    void Start()
    {
        inventory = GameObject.FindGameObjectWithTag("Inventory").GetComponent<Inventory>();
        itemImage = gameObject.transform.GetChild(0).GetComponent<Image>();
    }

    // Update is called once per frame
    void Update()
    {
        if (inventory.items[slotNumber].itemName != null)
        {
            item = inventory.items[slotNumber];
            itemImage.enabled = true;
            itemImage.sprite = inventory.items[slotNumber].itemSprite;
            itemCount = inventory.items[slotNumber].itemCount;
            uiItemCount.text = itemCount.ToString();
        }
        else
        {
            itemImage.enabled = false;
            uiItemCount.text = "";
        }
    }

    public void OnPointerClick(PointerEventData data)
    {
        clearHighlight();
        if (inventory.items[slotNumber] != null)
        {
            inventory.slots[slotNumber].GetComponent<Image>().sprite = Resources.Load<Sprite>("inventory_block_tileset 1");
            currentlySelectedID = inventory.items[slotNumber].returnID();
            currentlySelectedName = inventory.items[slotNumber].returnName();
            currentlySelectedTag = inventory.items[slotNumber].returnItemType(inventory.items[slotNumber].itemType);
            returnCount = itemCount;
        }
    }

    public void Plant()
    {
        didPlant = false;

        // IF HELVETTI, KORJAA!!!!!
        if (returnCount > 0)
        {
            if (currentlySelectedName != null)
            {
                if (currentlySelectedTag == "SEED")
                {
                    Debug.Log("Planted " + currentlySelectedName + " on " + ColliderHandler.parentGameObject);
                    ColliderHandler.parentGameObject.GetComponentInChildren<MeshRenderer>().material.mainTexture = Resources.Load<Texture>("Bottle");
                    ColliderHandler.parentGameObject.tag = "Planted";
                    inventory.removeItem(currentlySelectedID);
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

    void clearHighlight()
    {
        foreach (GameObject asd in inventory.slots)
        {
            asd.GetComponent<Image>().sprite = Resources.Load<Sprite>("inventory_block_tileset");
        }
    }
}
