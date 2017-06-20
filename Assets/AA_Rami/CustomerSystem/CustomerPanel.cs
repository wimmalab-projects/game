using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using System;
using UnityEngine.UI;

public class CustomerPanel : MonoBehaviour {

    public Client clientSender = null;

	// Use this for initialization
	void Start () {

    }
	
	// Update is called once per frame
	void Update () {
		
	}

    public void ActivatePanel () 
    {
        if (clientSender != null)
        {
            Debug.Log(clientSender.Explanation);
            this.gameObject.transform.Find("Scroll View").Find("Viewport").Find("Content").Find("CustomerExplanation").GetComponent<Text>().text = clientSender.Explanation;
            //ScaleExplanationContent();
            gameObject.SetActive(true);
        }
    }

    public void ScaleExplanationContent()
    {
        Canvas.ForceUpdateCanvases(); // without this the content won't update properly.

        // tarvii siivousta + startista kutsuttuna ei toimi
        this.gameObject.transform.Find("Scroll View").Find("Viewport").Find("Content").GetComponent<RectTransform>().sizeDelta =
            new Vector2(this.gameObject.transform.Find("Scroll View").Find("Viewport").Find("Content").GetComponent<RectTransform>().sizeDelta.x,
            this.gameObject.transform.Find("Scroll View").Find("Viewport").Find("Content").Find("CustomerExplanation").GetComponent<RectTransform>().sizeDelta.y);
    }

    // debug poista joskus
    private void OnGUI()
    {
        GUILayout.BeginArea(new Rect(300, 300, 100, 25));
        if (GUILayout.Button("teststtest"))
        {
            ActivatePanel();
        }
        GUILayout.EndArea();
    }
}

/*
        public client asiakas => restaurantclient TAI farmclient

        customerpanel script has gameobject Client

        customer prefab has script attached to it that once clicked
        sends it's own prefab to customerpanel and activates it. 
 */
