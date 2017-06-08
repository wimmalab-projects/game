using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class kameracontrolli : MonoBehaviour {

    public Camera farmCamera, breweryCamera, townCamera;

    GameObject go;

    void Start()
    {
        go = GameObject.FindGameObjectWithTag("Curtain");
    }

    private void OnGUI()
    {

        GUILayout.BeginArea(new Rect(Screen.width-100, 10, 100, 100));

        if (GUILayout.Button("FarmView"))
        {
            go.GetComponent<CurtainControls>().FadeToBlack(Camera.main, farmCamera);
        }
        if (GUILayout.Button("Breweryview"))
        {
            go.GetComponent<CurtainControls>().FadeToBlack(Camera.main, breweryCamera);
        }
        if (GUILayout.Button("TownView"))
        {
            go.GetComponent<CurtainControls>().FadeToBlack(Camera.main, townCamera);
        }

        GUILayout.EndArea();
    }
}
