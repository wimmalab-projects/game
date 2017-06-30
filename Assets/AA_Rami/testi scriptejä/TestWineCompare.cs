using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class TestWineCompare : MonoBehaviour {


    public WinePrefab wine1, wine2;
    public GameMaster gm;

    private void OnGUI()
    {
        GUILayout.BeginArea(new Rect(100,100,500,500));

        if (GUILayout.Button("test compare"))
        {
            Debug.Log(wine1.wineTest + "---" + wine2.wineTest);
        }


        GUILayout.EndArea();
    }
}
