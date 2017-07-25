using UnityEngine;

/// <summary>
///  This is used together with wine attribute setting
/// </summary>
[System.Serializable]
public class OurWine
{
    public string wineName;
    public ItemOurWine ourWine = new ItemOurWine();

    public void CreateInventoryItem(GameObject go)
    {
        ourWine.sweetness = 0;
        ourWine.ItemType = Item.IType.Wine;

        ourWine.Prefix = "cw";

        ourWine.Name = wineName;

        ourWine.Id = wineName;

        GameObject.FindGameObjectWithTag("GameManager").GetComponent<Inventory>().Items.Add(ourWine.Prefix + ourWine.Id, ourWine);

        Inventory inv = GameObject.FindGameObjectWithTag("GameManager").GetComponent<Inventory>();
        GameObject temp = MonoBehaviour.Instantiate(inv.InventorySlot);
        string s = "cw" + go.GetComponent<FermentorScript>().ourWine.ourWine.Name;

        temp.transform.SetParent(inv.contentPanel.transform);
        temp.name = s;
        inv.Slots.Add(temp);
    }
}