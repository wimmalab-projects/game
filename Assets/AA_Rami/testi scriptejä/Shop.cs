using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class Shop : MonoBehaviour {

    public GameObject ContentPanel;
    public SortedList<string, Item> items = new SortedList<string, Item>();

    private GridLayoutGroup glg;

    private void Start()
    {
        scaleContent();
        glg = ContentPanel.GetComponent<GridLayoutGroup>();
    }

    private void scaleContent ()
    {
        float y = (ContentPanel.transform.childCount+1) / glg.constraintCount * glg.cellSize.y + (glg.cellSize.y*2);
        ContentPanel.GetComponent<RectTransform>().sizeDelta = new Vector2(ContentPanel.GetComponent<RectTransform>().sizeDelta.x, y);
    }
}
