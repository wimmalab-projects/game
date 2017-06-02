using System.Collections;
using System.Collections.Generic;
using UnityEngine;

[CreateAssetMenu]
public class Item : ScriptableObject {

    public Sprite sprite;
    public GameObject itemObject;
    public string itemName;
    public string itemType;

    public Item (Sprite _sprite, string _itemName, string _itemType)
    {
        sprite = _sprite;
        itemName = _itemName;
        itemType = _itemType;
    }
}
