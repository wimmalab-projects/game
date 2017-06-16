using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.EventSystems;
using UnityEngine.UI;

public class ShopSlot : MonoBehaviour, IPointerClickHandler
{
    private Shop shop;

    void Start()
    {
        shop = GameObject.FindGameObjectWithTag("GameManager").GetComponent<Shop>();
    }

    public void OnPointerClick(PointerEventData data)
    {
        if (shop.items[gameObject.name] != null)
        {
            shop.SelectItem(gameObject.name);
        }
    }
}
