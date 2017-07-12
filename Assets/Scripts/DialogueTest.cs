/* Script that runs the tutorial when launching the game first time. At the end it is destroyed */

using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class DialogueTest : MonoBehaviour
{

    private RPGTalk rpgTalk;
    private MainAltCamControls altCam;
    private GameMaster gm;
    private CurtainControls cControls;
    private Shop shopScript;
    private GUIScript guiScript;
    private ColliderHandler colliderHandler;
    private SlotScript slotScript;
    private FermentorScript fermentorScript;

    bool tutorial2done, tutorial3done, tutorial4done, tutorial5done, tutorial6done, tutorial7done, tutorial8done, tutorial9done,
         tutorial10done, tutorial11done, tutorial12done, tutorial13done, tutorial14done, tutorial15done, tutorial16done, tutorial17done,
         tutorial18done, tutorial19done, tutorial20done, tutorial21done, tutorial22done, tutorial23done, tutorial24done, tutorial25done,
         tutorial26done, tutorial27done, tutorial28done, tutorial29done;

    private void Awake()
    {
        // Get references
        gm = GameObject.Find("GameManager").GetComponent<GameMaster>();
        shopScript = gm.GetComponent<Shop>();
        rpgTalk = gm.GetComponent<RPGTalk>();
        altCam = GameObject.Find("FarmViewCamera").GetComponent<MainAltCamControls>();
        cControls = GameObject.Find("fadetoblacktile").GetComponent<CurtainControls>();
        guiScript = GameObject.Find("InventoryCanvas").GetComponent<GUIScript>();
        colliderHandler = gm.GetComponent<ColliderHandler>();
        slotScript = gm.GetComponent<SlotScript>();
    }

    // Use this for initialization
    void Start()
    {
        tutorial2done = tutorial3done = tutorial4done = tutorial5done = tutorial6done = tutorial7done = tutorial8done = tutorial9done
        = tutorial10done = tutorial11done = tutorial12done = tutorial13done = tutorial14done = tutorial15done = tutorial16done
        = tutorial17done = tutorial18done = tutorial19done = tutorial20done = tutorial21done = tutorial22done = tutorial23done = tutorial24done
        = tutorial25done = tutorial26done = tutorial27done = tutorial28done = false;
        // Start the tutorial when launching the game first time
        //rpgTalk.variables[0].variableValue = Player.Name;
        StartCoroutine(Wait(1, 6, 1f));
    }

    // Update is called once per frame
    void Update()
    {
        // Update the gamestate so we can use it
        GameMaster.GameState GameState = gm.State;

        // Tutorial steps
        if (!tutorial2done && GameState == GameMaster.GameState.Town && !cControls.transition)
        {
            StartCoroutine(Wait(7, 10, 0.3f));
            tutorial2done = true;
        }

        if (!tutorial3done && tutorial2done && shopScript.shop.activeInHierarchy)
        {
            StartCoroutine(Wait(11, 13, 0.4f));
            tutorial3done = true;
        }

        if (!tutorial4done && tutorial3done && shopScript.bought)
        {
            rpgTalk.variables[1].variableValue = shopScript.currentlySelectedItem.Name;
            rpgTalk.variables[2].variableValue = shopScript.currentlySelectedItem.Name;
            shopScript.CloseShop();
            StartCoroutine(Wait(14, 15, 0.2f));
            tutorial4done = true;
        }

        if (!tutorial5done && tutorial4done && GameState == GameMaster.GameState.Farm && !cControls.transition)
        {
            StartCoroutine(Wait(16, 19, 0.3f));
            tutorial5done = true;
        }

        if (!tutorial6done && tutorial5done && !altCam.cam1)
        {
            StartCoroutine(Wait(20, 20, 0.3f));
            tutorial6done = true;
        }

        if (!tutorial7done && tutorial6done && colliderHandler.ParentGameObject.tag == "NotPlanted" && gm.IsInventoryOpen)
        {
            StartCoroutine(Wait(21, 23, 1f));
            tutorial7done = true;
        }

        if (!tutorial8done && tutorial7done && SlotScript.didPlant)
        {
            StartCoroutine(Wait(24, 28, 0.4f));
            tutorial8done = true;
        }

        if (!tutorial9done && tutorial8done && colliderHandler.ParentGameObject.tag == "Planted" && gm.IsInventoryOpen)
        {
            StartCoroutine(Wait(29, 30, 0.4f));
            tutorial9done = true;
        }

        if (!tutorial10done && tutorial9done && guiScript.Button == "Harvest")
        {
            StartCoroutine(Wait(31, 34, 0.35f));
            tutorial10done = true;
        }

        if (!tutorial11done && tutorial10done && altCam.cam1 && tutorial5done)
        {
            StartCoroutine(Wait(35, 35, 0.4f));
            tutorial11done = true;
        }

        if (!tutorial12done && tutorial11done && GameState == GameMaster.GameState.Brewery && !cControls.transition)
        {
            StartCoroutine(Wait(36, 40, 0.4f));
            tutorial12done = true;
        }

        if (!tutorial13done && tutorial12done && colliderHandler.ParentGameObject.tag == "NotFermenting" && gm.IsInventoryOpen)
        {
            StartCoroutine(Wait(41, 42, 1f));
            tutorial13done = true;
        }

        Debug.Log(CrushScriptFix.DidWin + " " + gm.CrushisActive);

        if (!tutorial14done && tutorial13done && CrushScriptFix.DidWin && !gm.CrushisActive)
        {
            StartCoroutine(Wait(43, 45, 1f));
            tutorial14done = true;
        }

        if (!tutorial15done && tutorial14done && colliderHandler.ParentGameObject.tag == "Fermenting" && gm.IsInventoryOpen)
        {
            StartCoroutine(Wait(46, 54, 0.4f));
            tutorial15done = true;
        }

        if (!tutorial16done && tutorial15done && guiScript.Button == "Collect")
        {
            fermentorScript = colliderHandler.ParentGameObject.GetComponent<FermentorScript>();
            rpgTalk.variables[3].variableValue = gm.OurWine.GetComponent<WinePrefab>().wineType.ToString();
            StartCoroutine(Wait(55, 56, 0.4f));
            tutorial16done = true;
        }

        if (!tutorial17done && tutorial16done && guiScript.Button == "Collect" && colliderHandler.ParentGameObject.GetComponent<FermentorScript>().Timer <= 0)
        {
            StartCoroutine(Wait(57, 59, 1f));
            tutorial17done = true;
        }

        if (!tutorial18done && tutorial17done && colliderHandler.ParentGameObject.tag == "NotClarificating" && gm.IsInventoryOpen)
        {
            StartCoroutine(Wait(60, 60, 1f));
            tutorial18done = true;
        }

        if (!tutorial19done && tutorial18done && guiScript.Button == "Clarificate")
        {
            StartCoroutine(Wait(61, 62, 0.4f));
            tutorial19done = true;
        }

        if (!tutorial20done && tutorial19done && colliderHandler.ParentGameObject.tag == "Clarificating" && gm.IsInventoryOpen)
        {
            StartCoroutine(Wait(63, 64, 0.4f));
            tutorial20done = true;
        }

        if (!tutorial21done && tutorial20done && guiScript.Button == "Collect")
        {
            StartCoroutine(Wait(65, 67, 0.4f));
            tutorial21done = true;
        }

        if (!tutorial22done && tutorial21done && colliderHandler.ParentGameObject.tag == "NotBottling" && gm.IsInventoryOpen)
        {
            StartCoroutine(Wait(68, 68, 1f));
            tutorial22done = true;
        }

        if (!tutorial23done && tutorial22done && guiScript.Button == "Bottle")
        {
            StartCoroutine(Wait(69, 69, 0.4f));
            tutorial23done = true;
        }

        if (!tutorial24done && tutorial23done && colliderHandler.ParentGameObject.tag == "Bottling" && gm.IsInventoryOpen)
        {
            StartCoroutine(Wait(70, 70, 0.4f));
            tutorial24done = true;
        }

        if (!tutorial25done && tutorial24done && guiScript.Button == "Collect")
        {
            StartCoroutine(Wait(71, 73, 0.4f));
            tutorial25done = true;
        }

        if (!tutorial26done && tutorial25done && GameState == GameMaster.GameState.Farm && !cControls.transition)
        {
            StartCoroutine(Wait(74, 74, 0.4f));
            tutorial26done = true;
        }

        if (!tutorial27done && tutorial26done && GameState == GameMaster.GameState.Town && !cControls.transition)
        {
            StartCoroutine(Wait(75, 75, 0.4f));
            tutorial27done = true;
        }

        if (!tutorial28done && tutorial27done && GameObject.Find("CustomerPanel").activeInHierarchy)
        {
            StartCoroutine(Wait(76, 76, 0.4f));
            tutorial28done = true;
        }

        if (!tutorial29done && tutorial28done && gm.WineSold)
        {
            StartCoroutine(Wait(77, 79, 0.4f));
            tutorial29done = true;
            // PITÄS TUHOTA TÄMÄ SAATANAN SCRIPTI, MUTTA MITEN!?!?!?!?!?!?!?!?!?!?!?
        }

        if (tutorial28done && rpgTalk.dialogueFinished)
        {
            Destroy(gameObject.GetComponent<DialogueTest>());
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
