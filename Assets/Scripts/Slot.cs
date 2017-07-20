using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.EventSystems;
using UnityEngine.UI;

public class Slot : MonoBehaviour, IPointerClickHandler
{

    public Text UiItemCount; // Drag in editor
    public Image ItemImage; // Drag in editor
    public int itemCount;
    GameMaster gm;
    bool spritesLoaded;

    private Inventory inventory;

    private void Awake()
    {
        gm = GameObject.FindGameObjectWithTag("GameManager").GetComponent<GameMaster>();
        inventory = gm.gameObject.GetComponent<Inventory>();
        spritesLoaded = false;
    }

    // Update is called once per frame
    void Update()
    {
        //Debug.Log(gameObject.name);
        // Update the items count text and sprites
        if (gm.IsInventoryOpen)
        {
            if (!spritesLoaded)
            {
                ItemImage.sprite = Resources.Load<Sprite>(inventory.Items[gameObject.name].SpriteName);
                spritesLoaded = true;
            }
            itemCount = inventory.Items[gameObject.name].Stack;
            UiItemCount.text = itemCount.ToString();
            //uiItemCount.text = inventory.items[uiItemName.text].itemCount.ToString();
        }
        else
        {
            spritesLoaded = false;
        }
    }

    // Clear the highlight effect around the inventory block
    void clearHighlight(GameObject go)
    {
        go.GetComponent<Image>().sprite = Resources.Load<Sprite>("inventory_block_tileset");
    }

    // Create hightlight effect around the inventory block
    public void OnPointerClick(PointerEventData data)
    {
        // instantiate sound effect
        gm.GetComponent<GameMaster>().InstantiateSFX("sfx/TouchSFX");


        if (gm.lastSelectedUiObject != null)
        {
            clearHighlight(gm.lastSelectedUiObject);
        }
        if (inventory.Items[gameObject.name] != null)
        {
            gameObject.GetComponent<Image>().sprite = Resources.Load<Sprite>("inventory_block_tileset 1");
            GameObject.FindGameObjectWithTag("GameManager").GetComponent<SlotScript>().SeedName = gameObject.name;
            inventory.refreshInfo();
            gm.lastSelectedUiObject = data.selectedObject;
        }
    }
}
