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
        // Update the items count text and sprites
        if (gm.IsInventoryOpen)
        {
            if (!spritesLoaded)
            {
                if (inventory.Items[gameObject.name].GetType() == typeof(VineGrape))
                {
                    if (((VineGrape)inventory.Items[gameObject.name]).GoV == VineGrape.GrapeOrVine.Vine)
                        ItemImage.sprite = Resources.Load<Sprite>("UI/Vine");
                    else
                        ItemImage.sprite = Resources.Load<Sprite>("UI/" + inventory.Items[gameObject.name].SpriteName);
                }
                else
                {
                    ItemImage.sprite = Resources.Load<Sprite>("UI/" + inventory.Items[gameObject.name].SpriteName);
                }
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
        go.GetComponent<Image>().sprite = Resources.Load<Sprite>("itembox");
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
            gameObject.GetComponent<Image>().sprite = Resources.Load<Sprite>("chosenitem");
            GameObject.FindGameObjectWithTag("GameManager").GetComponent<SlotScript>().SeedName = gameObject.name;
            inventory.refreshInfo();
            gm.lastSelectedUiObject = data.selectedObject;
        }
    }
}
