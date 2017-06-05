using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;
using UnityEngine.EventSystems;

public class SlotScript : MonoBehaviour, IPointerClickHandler
{
    public List<GameObject> slots = new List<GameObject>();
    public Item item;
    Image itemImage;
    public int slotNumber;
    static Inventory inventory;
    public Text uiItemCount;
    int itemCount;
    private static int currentlySelectedID;
    private static string currentlySelectedName;
    public static int returnCount;

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
        if (inventory.items[slotNumber] != null)
        {
            currentlySelectedID = inventory.items[slotNumber].returnID();
            currentlySelectedName = inventory.items[slotNumber].returnName();
            returnCount = itemCount;
            /*switch (inventory.items[slotNumber].itemName)
            {
                case "Seed":
                    Debug.Log("Planted " + inventory.items[slotNumber].itemName + " on " +
                        ColliderHandler.parentGameObject);
                    break;
            }*/
        }
    }

    public static void Plant()
    {
        if (returnCount > 0)
        {
            if (currentlySelectedName != null)
            {
                Debug.Log("Planted " + currentlySelectedName + " on " + ColliderHandler.parentGameObject);
                inventory.removeItem(currentlySelectedID);
                currentlySelectedName = null;
            }
            else
                Debug.Log("no seed selected");
        }
        else
        {
            Debug.Log(returnCount);
            Debug.Log("Not enough seeds");
        }

    }
}
