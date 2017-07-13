using System.Collections;
using System.Collections.Generic;
using System.IO;
using UnityEngine;

public class Database : MonoBehaviour
{

    public ItemCollection Collection = new ItemCollection();

    public SortedList<string, Item> Items = new SortedList<string, Item>();

    // load database
    public void Start()
    {
<<<<<<< HEAD:Assets/Resources/Database.cs

        TextAsset file = Resources.Load("Database") as TextAsset;
        JsonUtility.FromJsonOverwrite(File.ReadAllText(Application.dataPath + "/Database.json"), Collection);
=======
        TextAsset ta = Resources.Load("Database") as TextAsset;
        JsonUtility.FromJsonOverwrite(ta.ToString(), Collection);
>>>>>>> 67fa8974962552b8a6d10a068827e9a7fe2afeb8:Assets/AA_Rami/CustomerSystem/Database.cs

        foreach (Item i in Collection.Item)
        {
            Items.Add(i.Prefix+i.Id, i);
        }
        foreach (Item i in Collection.VineGrape)
        {
            Items.Add(i.Prefix + i.Id, i);
        }
    }
}

[System.Serializable]
public class ItemCollection
{
    public List<Item> Item;
    public List<VineGrape> VineGrape;
}