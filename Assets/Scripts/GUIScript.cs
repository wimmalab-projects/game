using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;
using UnityEngine.EventSystems;

public class GUIScript : MonoBehaviour
{

    public CanvasGroup inventory;
    private Sprite itemSprite;
    private Animator animator;
    private string button;
    private GameObject inventoryCanvas;
    private Inventory inventoryScript;
    private ScriptableObject scriptableItem;

    // Use this for initialization
    void Start()
    {
        animator = GetComponent<Animator>();
        itemSprite = Resources.Load<Sprite>("New Piskel (3)");
        inventoryCanvas = GameObject.Find("Inventory");
        inventoryScript = inventoryCanvas.GetComponent<Inventory>();
        Item item = ScriptableObject.CreateInstance<Item>();
        item.sprite = itemSprite;
        item.itemName = "homo";
        item.itemType = "Seed";
        inventoryScript.AddItem(item);
        Item item2 = ScriptableObject.CreateInstance<Item>();
        item2.sprite = itemSprite;
        item2.itemName = "homoo";
        item.itemType = "Seed";
        inventoryScript.AddItem(item);
        Item item3 = ScriptableObject.CreateInstance<Item>();
        item3.sprite = itemSprite;
        item3.itemName = "homooo";
        item.itemType = "Seed";
        inventoryScript.AddItem(item);
        Item item4 = ScriptableObject.CreateInstance<Item>();
        item4.sprite = itemSprite;
        item4.itemName = "homoooo";
        item.itemType = "Seed";
        inventoryScript.AddItem(item);
    }

    // Update is called once per frame
    void Update()
    {
        if (Input.touchSupported == true || Input.GetMouseButton(0) == true)
        {
            if (ColliderHandler.hitDetected == true)
            {
                inventory.alpha = 1;
                animator.SetBool("showInventory", true);
            }
        }
    }

    public void itemClicked()
    {

    }

    public void ButtonClicked()
    {
        button = EventSystem.current.currentSelectedGameObject.name;
        switch (button)
        {
            case "Exit":
                animator.SetBool("showInventory", false);
                break;
            case "Plant":
                break;
        }
        
    }
}
