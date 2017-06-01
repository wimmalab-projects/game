using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.EventSystems;

public class GUIScript : MonoBehaviour {

    public CanvasGroup inventory;
    private string button;

	// Use this for initialization
	void Start ()
    {
    }
	
	// Update is called once per frame
	void Update ()
    {
        if (Input.touchSupported == true || Input.GetMouseButton(0) == true)
        {
            if (ColliderHandler.hitDetected == true)
            {
                inventory.alpha = 1;
            } 
        }
    }

    public void ButtonClicked(GameObject rtClicked)
    {
        button = EventSystem.current.currentSelectedGameObject.name;

        switch (button)
        {
            case "Exit":
                inventory.alpha = 0;
                break;
        }
    }
}
