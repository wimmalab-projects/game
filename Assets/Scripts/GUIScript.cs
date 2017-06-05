using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;
using UnityEngine.EventSystems;

public class GUIScript : MonoBehaviour
{

    public CanvasGroup inventory;
    private Animator animator;
    private string button;
    private GameObject[] temp;
    private SlotScript script;

    // Use this for initialization
    void Start()
    {
        temp = GameObject.FindGameObjectsWithTag("Slot");
        foreach (GameObject scripts in temp)
        {
            script = scripts.GetComponent<SlotScript>();
        }
        animator = GetComponent<Animator>();
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
        button = EventSystem.current.currentSelectedGameObject.name;
        Debug.Log(button);
        switch (button)
        {
            case "Exit":
                animator.SetBool("showInventory", false);
                break;
            case "Plant":
                SlotScript.Plant();
                animator.SetBool("showInventory", false);
                break;
        }
    }
}
