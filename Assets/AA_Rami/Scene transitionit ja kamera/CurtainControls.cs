using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class CurtainControls : MonoBehaviour {

    /// <summary>
    /// Example usage of this script can be found below this class.
    /// </summary>

    bool IsClear = true;
    public bool transition = true;
    Color curtainColor;

    Camera fromCamera, toCamera;

    public float transitionSpeed = 1f;

    // Use this for initialization
    void Start () {
        fromCamera = Camera.current;
        curtainColor = gameObject.GetComponent<SpriteRenderer>().color;
    }

    /// <summary>
    /// Set boolean values of your fades (these are controlled outside of the script itself by 
    /// finding the curtain and getting this script with Curtain.GetComponent<CurtainControls>().fadetoblack(camera a, camera b);
    /// </summary>
    public void FadeToBlack (Camera from, Camera to)
    {
        fromCamera = from;
        toCamera = to;
        IsClear = false;
        transition = true;
    }

    /// <summary>
    /// fade from black to visible scene
    /// </summary>
    public void FadeToClear ()
    {
        IsClear = true;
        transition = true;
    }

    /// <summary>
    /// gradually change curtain alpha from zero to 1
    /// </summary>
    void transitionToBlack()
    {
        if (curtainColor.a < 1)
        {
            curtainColor.a += transitionSpeed * Time.deltaTime;
            gameObject.GetComponent<SpriteRenderer>().color = curtainColor;
        }
        else
        {
            transition = false;
            // curtain is hiding view, now is okay to swap cameras.
            cameraADisable();
            cameraBEnable();
            FadeToClear();
        }
    }

    /// <summary>
    /// gradually change curtain alpha from 1 to zero
    /// </summary>
    void transitionToClear()
    {
        if (curtainColor.a > 0)
        {
            curtainColor.a -= transitionSpeed * Time.deltaTime;
            gameObject.GetComponent<SpriteRenderer>().color = curtainColor;
        }
        else
        {
            transition = false;
        }
    }

    /// <summary>
    /// check if transition is true.
    /// fade to black and disable camera, then activate the new camera, and call fade to clear
    /// </summary>
    void Update () {
        if (transition)
        {
            switch (IsClear)
            {
                case true:
                    transitionToClear();
                    break;
                case false:
                    transitionToBlack();
                    break;
            }
        }
    }

    private void cameraADisable ()
    {
        if (fromCamera != null)
            //fromCamera.gameObject.SetActive(false);
            fromCamera.enabled = false;
    }

    private void cameraBEnable()
    {
        if (toCamera != null)
            //toCamera.gameObject.SetActive(true);
            toCamera.enabled = true;
    }
}

/*  EXAMPLE USAGE
    public Camera farmCamera, breweryCamera, townCamera;

    GameObject go;

    void Start()
    {
        go = GameObject.FindGameObjectWithTag("Curtain");
    }

    private void OnGUI()
    {

        GUILayout.BeginArea(new Rect(10, 10, 100, 100));

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
*/
