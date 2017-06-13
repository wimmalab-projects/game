using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.EventSystems;
using UnityEngine.UI;

public class Slot : MonoBehaviour, IPointerClickHandler
{

    public Text uiItemCount;
    public Text uiItemName;
    public Image itemImage;

    private int itemCount;
    private Inventory inventory;

    void Start()
    {
        inventory = GameObject.FindGameObjectWithTag("GameManager").GetComponent<Inventory>();

    }

    // Update is called once per frame
    void Update()
    {
        itemCount = inventory.items[uiItemName.text].itemCount;
        uiItemCount.text = inventory.items[uiItemName.text].itemCount.ToString();
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
