using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.EventSystems;

public class cpExitButton : MonoBehaviour, IPointerClickHandler
{
    /// <summary>
    /// Place this script to customerpanel exit button.
    /// </summary>
    CustomerPanel cp;
    void Start()
    {
        cp = gameObject.transform.parent.GetComponent<CustomerPanel>();
    }

    public void OnPointerClick(PointerEventData data)
    {
        cp.DeactivatePanel();
    }
}
