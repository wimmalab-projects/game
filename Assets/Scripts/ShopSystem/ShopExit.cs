using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.EventSystems;

public class ShopExit : MonoBehaviour, IPointerClickHandler
{
    Shop shop;
    void Start()
    {
        shop = GameObject.FindGameObjectWithTag("GameManager").GetComponent<Shop>();
    }

    public void OnPointerClick(PointerEventData data)
    {
        shop.CloseShop();
    }
}
