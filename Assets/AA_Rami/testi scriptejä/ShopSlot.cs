using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.EventSystems;
using UnityEngine.UI;

public class ShopSlot : MonoBehaviour, IPointerClickHandler
{
    public Text uiItemName;
    public Image itemImage;
    
    private Inventory inventory;

    void Start()
    {
        inventory = GameObject.FindGameObjectWithTag("GameManager").GetComponent<Inventory>();
        itemImage.sprite = inventory.items[uiItemName.text].ItemSprite;
    }

    void clearHighlight()
    {
        foreach (GameObject asd in inventory.slots)
        {
            asd.GetComponent<Image>().sprite = Resources.Load<Sprite>("inventory_block_tileset");
        }
    }

    public void OnPointerClick(PointerEventData data)
    {
        clearHighlight();
        if (inventory.items[uiItemName.text] != null)
        {
            gameObject.GetComponent<Image>().sprite = Resources.Load<Sprite>("inventory_block_tileset 1");
            GameObject.FindGameObjectWithTag("GameManager").GetComponent<SlotScript>().seedName = uiItemName.text;
        }
    }
}
