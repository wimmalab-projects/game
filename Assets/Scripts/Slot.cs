using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.EventSystems;
using UnityEngine.UI;

public class Slot : MonoBehaviour, IPointerClickHandler
{

    public Text uiItemCount;
    //public Text uiItemName;
    public Image itemImage;

    private int itemCount;
    private Inventory inventory;

    private void Awake()
    {
        inventory = GameObject.FindGameObjectWithTag("GameManager").GetComponent<Inventory>();
    }

    void Start()
    {
        
    }

    // Update is called once per frame
    void Update()
    {
        // Update the items count text and sprites
        itemCount = inventory.items[gameObject.name].itemCount;
        uiItemCount.text = itemCount.ToString();
        //uiItemCount.text = inventory.items[uiItemName.text].itemCount.ToString();
        itemImage.sprite = inventory.items[gameObject.name].ItemSprite;
    }

    // Clear the highlight effect around the inventory block
    void clearHighlight()
    {
        foreach (GameObject asd in inventory.slots)
        {
            asd.GetComponent<Image>().sprite = Resources.Load<Sprite>("inventory_block_tileset");
        }
    }

    // Create hightlight effect around the inventory block
    public void OnPointerClick(PointerEventData data)
    {
        clearHighlight();
        if (inventory.items[gameObject.name] != null)
        {
            gameObject.GetComponent<Image>().sprite = Resources.Load<Sprite>("inventory_block_tileset 1");
            GameObject.FindGameObjectWithTag("GameManager").GetComponent<SlotScript>().seedName = gameObject.name;
            inventory.refreshInfo();
        }
    }
}
