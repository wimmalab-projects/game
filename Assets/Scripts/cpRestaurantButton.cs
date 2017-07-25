using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.EventSystems;

/// <summary>
/// Place this script to customerpanel restaurant client button.
/// mix of a methodcallerhandler and colliderhandler, tailored for customerpanel
/// </summary>
public class cpRestaurantButton : MonoBehaviour, IPointerClickHandler
{
    CustomerPanel cp;
    void Start()
    {
        cp = gameObject.transform.parent.parent.GetComponent<CustomerPanel>();
    }

    public void OnPointerClick(PointerEventData data)
    {
        cp.AcceptRestaurantClient();
    }
}
