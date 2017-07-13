using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.EventSystems;
using UnityEngine.UI;

public class Slot : MonoBehaviour, IPointerClickHandler
{

    public Text UiItemCount; // Drag in editor
    public Image ItemImage; // Drag in editor

    private Inventory inventory;

    private void Awake()
    {
        inventory = GameObject.FindGameObjectWithTag("GameManager").GetComponent<Inventory>();
    }

    // Update is called once per frame
    void Update()
    {
        //Debug.Log(gameObject.name);
        // Update the items count text and sprites
        int itemCount = inventory.Items[gameObject.name].Stack;
        UiItemCount.text = itemCount.ToString();
        //uiItemCount.text = inventory.items[uiItemName.text].itemCount.ToString();
        ItemImage.sprite = Resources.Load<Sprite>(inventory.Items[gameObject.name].SpriteName);
    }

    // Clear the highlight effect around the inventory block
    void clearHighlight()
    {
        foreach (GameObject asd in inventory.Slots)
        {
            asd.GetComponent<Image>().sprite = Resources.Load<Sprite>("inventory_block_tileset");
        }
    }

    // Create hightlight effect around the inventory block
    public void OnPointerClick(PointerEventData data)
    {
        clearHighlight();
        if (inventory.Items[gameObject.name] != null)
        {
            gameObject.GetComponent<Image>().sprite = Resources.Load<Sprite>("inventory_block_tileset 1");
            GameObject.FindGameObjectWithTag("GameManager").GetComponent<SlotScript>().SeedName = gameObject.name;
            inventory.refreshInfo();
        }
    }
}
