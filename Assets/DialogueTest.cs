using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class DialogueTest : MonoBehaviour
{

    RPGTalk rpgTalk;
    MainAltCamControls altCam;
    GameMaster gm;
    bool tutorial1done = false;
    bool tutorial2done = false;
    bool tutorial3done = false;

    private void Awake()
    {
        gm = GameObject.Find("GameManager").GetComponent<GameMaster>();
        rpgTalk = gm.GetComponent<RPGTalk>();
        altCam = GameObject.Find("FarmViewCamera").GetComponent<MainAltCamControls>();
    }
    // Use this for initialization
    void Start()
    {
        StartCoroutine(Wait(Tutorial1));
    }

    // Update is called once per frame
    void Update()
    {
        if (altCam.cam1 == false && tutorial2done == false) 
        {
            StartCoroutine(Wait(Tutorial2));
            tutorial2done = true;
        }
        if (ColliderHandler.parentGameObject.tag == "NotPlanted" && gm.IsInventoryOpen == true && tutorial3done == false)
        {
            StartCoroutine(Wait(Tutorial3));
            tutorial3done = true;
        }
    }

    void Tutorial1()
    {
        rpgTalk.lineToStart = 1;
        rpgTalk.lineToBreak = 3;
        rpgTalk.NewTalk();
    }

    void Tutorial2()
    {
        rpgTalk.lineToStart = 4;
        rpgTalk.lineToBreak = 5;
        rpgTalk.NewTalk();
    }

    void Tutorial3()
    {
        rpgTalk.lineToStart = 6;
        rpgTalk.lineToBreak = 7;
        rpgTalk.NewTalk();
    }

    IEnumerator Wait(System.Action tutorial)
    {
        yield return new WaitForSeconds(1);
        tutorial();
    }
}
