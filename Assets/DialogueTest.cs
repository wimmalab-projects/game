/* Script that runs the tutorial when launching the game first time. At the end it is destroyed */

using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class DialogueTest : MonoBehaviour
{

    RPGTalk rpgTalk;
    MainAltCamControls altCam;
    GameMaster gm;
    GameMaster.GameState GameState;
    CurtainControls cControls;
    Shop shopScript;
    bool tutorial2done = false;
    bool tutorial3done = false;
    bool tutorial4done = false;
    bool tutorial5done = false;
    bool tutorial6done = false;
    bool tutorial7done = false;
    bool tutorial8done = false;
    bool tutorial9done = false;
    bool tutorial10done = false;
    bool tutorial11done = false;
    bool tutorial12done = false;
    bool tutorial13done = false;
    bool tutorial14done = false;
    bool tutorial15done = false;
    bool tutorial16done = false;
    bool tutorial17done = false;

    private void Awake()
    {
        // Get references
        gm = GameObject.Find("GameManager").GetComponent<GameMaster>();
        shopScript = gm.GetComponent<Shop>();
        rpgTalk = gm.GetComponent<RPGTalk>();
        altCam = GameObject.Find("FarmViewCamera").GetComponent<MainAltCamControls>();
        cControls = GameObject.Find("fadetoblacktile").GetComponent<CurtainControls>();
    }

    // Use this for initialization
    void Start()
    {
        // Start the tutorial when launching the game first time
        StartCoroutine(Wait(1, 4, 1f));
    }

    // Update is called once per frame
    void Update()
    {
        // Update the gamestate so we can use it
        GameState = gm.State;

        // Tutorial steps
        if (tutorial2done == false && GameState == GameMaster.GameState.Town && cControls.transition == false)
        {
            StartCoroutine(Wait(5, 7, 0.3f));
            tutorial2done = true;
        }

        if(tutorial3done == false && shopScript.shop.activeInHierarchy && tutorial2done)
        {
            StartCoroutine(Wait(8, 10, 0.4f));
            tutorial3done = true;
        }

        if (tutorial4done == false && shopScript.bought && tutorial3done)
        {
            StartCoroutine(Wait(11, 12, 0.2f));
            tutorial4done = true;
        }

        if (tutorial5done == false && tutorial4done && GameState == GameMaster.GameState.Farm && cControls.transition == false)
        {
            StartCoroutine(Wait(13, 14, 0.3f));
            tutorial5done = true;
        }

        if (tutorial6done == false && altCam.cam1 == false && tutorial5done)
        {
            StartCoroutine(Wait(15, 16, 0.3f));
            tutorial6done = true;
        }

        if (tutorial7done == false && ColliderHandler.parentGameObject.tag == "NotPlanted" && gm.IsInventoryOpen && tutorial6done)
        {
            StartCoroutine(Wait(17, 18, 1f));
            tutorial7done = true;
        }

        if(tutorial8done == false && tutorial7done && SlotScript.didPlant)
        {
            StartCoroutine(Wait(19, 22, 0.4f));
            tutorial8done = true;
        }

        if(tutorial9done == false && tutorial8done && ColliderHandler.parentGameObject.tag == "Planted" && gm.IsInventoryOpen)
        {
            StartCoroutine(Wait(23, 25, 0.4f));
            tutorial9done = true;
        }

        if (tutorial10done == false && tutorial9done && GameObject.Find("InventoryCanvas").GetComponent<GUIScript>().button == "Harvest")
        {
            StartCoroutine(Wait(26, 29, 0.35f));
            tutorial10done = true;
        }

        if (tutorial11done == false && tutorial10done && altCam.cam1 && tutorial5done)
        {
            StartCoroutine(Wait(30, 30, 0.4f));
            tutorial11done = true;
        }

        if (tutorial12done == false && tutorial11done && GameState == GameMaster.GameState.Brewery && cControls.transition == false)
        {
            StartCoroutine(Wait(31, 33, 0.4f));
            tutorial12done = true;
        }

        if (tutorial13done == false && tutorial12done && ColliderHandler.parentGameObject.tag == "NotFermenting" && gm.IsInventoryOpen)
        {
            StartCoroutine(Wait(34, 35, 1f));
            tutorial13done = true;
        }

        if (tutorial14done == false && tutorial13done && CrushScript.didWin && GameObject.Find("GameManager").GetComponent<GameMaster>().CrushisActive == false)
        {
            StartCoroutine(Wait(36, 38, 0.4f));
            tutorial14done = true;
        }

        if (tutorial15done == false && tutorial14done && ColliderHandler.parentGameObject.tag == "Fermenting" && gm.IsInventoryOpen)
        {
            StartCoroutine(Wait(39, 40, 0.4f));
            tutorial15done = true;
        }
    }

    // Function that takes the startline and the endline to read from the Dialogue.txt and starts the dialog.
    void TutorialFunction(int startLine, int breakLine)
    {
        rpgTalk.lineToStart = startLine;
        rpgTalk.lineToBreak = breakLine;
        rpgTalk.NewTalk();
    }

    // Coroutine to smoothly show the dialog
    IEnumerator Wait(int start, int end, float waitTime)
    {
        yield return new WaitForSeconds(waitTime);
        TutorialFunction(start, end);
    }
}
