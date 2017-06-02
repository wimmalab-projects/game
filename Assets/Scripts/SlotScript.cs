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
    Inventory inventory;

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
        }
        else
        {
            itemImage.enabled = false;
        }
    }

    public void OnPointerClick(PointerEventData data)
    {
        if (inventory.items[slotNumber] != null)
        {
            switch(inventory.items[slotNumber].itemName)
            {
                case "Seed":
                    Debug.Log("Planted " + inventory.items[slotNumber].itemName + " on " +
                        ColliderHandler.parentGameObject);
                    break;         
            }
        }
    }
}
