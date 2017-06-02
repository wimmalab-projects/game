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
        inventoryScript.AddItem(new Item(itemSprite, "homo", "asd"));
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

    public void ButtonClicked()
    {
        GameObject clicked = EventSystem.current.currentSelectedGameObject;

        Debug.Log(clicked);

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
