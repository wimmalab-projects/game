/* This is the script that runs the grape crush minigame.
 * It spawns grapes and checks if the player has crushed them.
 * It also contains states for losing and winning*/

using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.EventSystems;
using UnityEngine.UI;

public class CrushScriptFix : MonoBehaviour
{
    public GameObject ourWinePrefab; // place in edtior

    public int MissedGrapes { get; set; }
    public static bool DidWin { get; set; }
    public GameObject Grape; // Drag in prefab
    public LayerMask LayerMask; // Choose in editor
    public Image FillBar; // Drag in editor
    public Text FillText; // Drag in editor
    public Text GameOverText; // Drag in editor
    public Text MissedText; // Drag in editor
    public Text GameStartText; // Drag in editor
    public Button readyButton;
    public Canvas cg;

    private float grapeScore;
    private const int maxMissedGrapes = 10; // How many grapes can be missed
    private float startTime;
    private readonly float refire = 0.4f; // How ofen a new grape is respawned
    private GameObject grapeSplash;
    private MethodCallerHandler mch;
    private bool isStarted;
    private bool instructionsDone;
    private GameObject[] spawnpoint;
    private RuntimePlatform platform;
    private SlotScript slotScript;
    private CurtainControls cc;
    private GameMaster gm;
    // Use this for initialization

    void Awake()
    {
        // Get script / gameobject references.
        mch = GetComponent<MethodCallerHandler>();
        grapeSplash = Resources.Load<GameObject>("GrapeSplash 1");
        spawnpoint = GameObject.FindGameObjectsWithTag("Respawn"); // Get the spawn points for the grapes
        mch = GetComponent<MethodCallerHandler>();
        gm = GameObject.FindGameObjectWithTag("GameManager").GetComponent<GameMaster>();
        slotScript = GameObject.FindGameObjectWithTag("GameManager").GetComponent<SlotScript>();
        cc = GameObject.FindGameObjectWithTag("GameManager").transform.GetChild(1).GetComponent<CurtainControls>();
        cg.gameObject.SetActive(false);
    }

    void Start()
    {        
        // Set everything to default
        platform = Application.platform;
        DidWin = false;
        isStarted = false;
        instructionsDone = false;
        FillBar.fillAmount = 0;
        FillText.text = "0%";
        GameOverText.text = "";
        MissedText.text = "0/10";
        startTime = Time.time;
    }


    // Update is called once per frame
    void Update()
    {
        if(gm.State == GameMaster.GameState.GrapeCrush && cc.IsClear && !instructionsDone)
        {
            cg.gameObject.SetActive(true);
            grapeScore = 0;
            FillBar.fillAmount = 0;
            FillText.text = "0%";
            MissedText.text = "0/10";
            startTime = Time.time;
            GameOverText.text = "";
            GameStartText.text = "You need to crush the grapes to fill the bar\nBut dont miss too much!";
            readyButton.transform.gameObject.SetActive(true);
            readyButton.name = "ReadyButton";
            readyButton.GetComponentInChildren<Text>().text = "Play";
        }
        // Wait till the instructions have been done
        if (instructionsDone)
        {
            // Handle ui updates the ui accordingly to how many missed grapes and hits.
            handleUI();
            // If touch supported, use touch position else use mouse position then do the checktouch function
            if (platform == RuntimePlatform.Android || platform == RuntimePlatform.IPhonePlayer)
            {
                if (Input.touchCount > 0 && Input.GetTouch(0).phase == TouchPhase.Began)
                {
                    checkTouch(Input.GetTouch(0).position);
                }
            }
            else if (platform == RuntimePlatform.WindowsEditor && Input.GetMouseButtonUp(0))
            {
                checkTouch(Input.mousePosition);
            }

            // Respawn grapes
            if (startTime + refire <= Time.time)
            {
                GameObject temp = Instantiate(Grape);
                temp.transform.SetParent(gameObject.transform);
                temp.transform.position = spawnpoint[Random.Range(0, spawnpoint.Length)].transform.position;
                startTime = Time.time;
            }

            // If the whole bar has been filled, the game is won. Else if the missedgrapes is equal to maxmissedgrapes you lose the game. Does the gameOver function
            if (FillBar.fillAmount == 1)
            {
                DidWin = true;
                GameOverText.text = "Good job!";
                GameOverText.text += "\nYour wine is now fermenting";
                gameOver();
            }
            else if (MissedGrapes == maxMissedGrapes)
            {
                DidWin = false;
                GameOverText.text = "You lost your grapes!";
                gameOver();
            }

            //if (GameObject.Find("GameManager").GetComponent<GameMaster>().CrushisActive = false && cc.transition == false)
            //{
            //    Destroy(gameObject);
            //}
        }
    }

    // Checks if the touch position collides with the grape collider. If it does the grape is destroyed and grapescore is added
    void checkTouch(Vector2 pos)
    {
        if (LayerMask.value == 2048)
        {
            Vector3 wp = Camera.main.ScreenToWorldPoint(pos);

            Vector2 touchPos = new Vector2(wp.x, wp.y);

            Collider2D hit = Physics2D.OverlapPoint(touchPos, LayerMask);

            if (hit && hit.tag == "Grape")
            {
                Destroy(hit.gameObject);
                Instantiate(grapeSplash, touchPos, Quaternion.identity);
                grapeScore++;
            }
        }
    }

    // Handles the fillbar filling and missed grapes count. Is being updated in Update().
    void handleUI()
    {
        FillText.text = Mathf.FloorToInt(grapeScore * 1.5f) + "%";
        FillBar.fillAmount = (grapeScore * 1.5f);
        MissedText.text = MissedGrapes + "/" + maxMissedGrapes;
    }

    // When the game is over destroy all remaining gameobjects and display the gameover text. Also starts the wait coroutine to end the game.
    void gameOver()
    {
        readyButton.transform.gameObject.SetActive(true);
        readyButton.name = "ExitGame";
        readyButton.GetComponentInChildren<Text>().text = "Exit";
        GameObject[] grapesLeft = GameObject.FindGameObjectsWithTag("Grape");
        GameObject[] grapeSplashLeft = GameObject.FindGameObjectsWithTag("GrapeSplash");
        foreach (GameObject grapes in grapesLeft)
        {
            Destroy(grapes);
            foreach (GameObject splash in grapeSplashLeft)
            {
                gameObject.GetComponent<CrushScriptFix>().enabled = false;
                Destroy(splash);
            }
        }
    }

    public void ButtonClicked()
    {
        bool isKeyUsed = false;

        string Button = EventSystem.current.currentSelectedGameObject.name;

        switch (Button)
        {
            case "ReadyButton":

                FermentorScript fs = gm.GetComponent<ColliderHandler>().ParentGameObject.GetComponent<FermentorScript>();
                fs.ourWine = Resources.Load("OurWine") as GameObject;
                OurWine ow = fs.ourWine.GetComponent<OurWine>();
                ow.wineName = GameObject.Find("WineName").transform.Find("Text").GetComponent<Text>().text;               
                //Debug.Log(fs.ourWine.GetComponent<OurWine>().ourWine.returnID());

                Debug.Log(ow);
                ow.ourWine.Prefix = "cw";
                Debug.Log(ow.ourWine.Prefix + ow.wineName);
                foreach (string key in GameObject.FindGameObjectWithTag("GameManager").GetComponent<Inventory>().Items.Keys)
                {
                    Debug.Log(key);
                    if (ow.ourWine.Prefix + ow.wineName == key)
                    {
                        isKeyUsed = true;
                        break;
                    }
                    else
                        isKeyUsed = false;
                }

                if (isKeyUsed == false)
                {
                    GameObject go = Instantiate(fs.ourWine);
                    go.name = "cw" + fs.ourWine.GetComponent<OurWine>().wineName;
                    fs.ourWine = go;
                    go.GetComponent<OurWine>().CreateInventoryItem(fs.ourWine);
                    instructionsDone = true;
                    GameStartText.text = "";
                    readyButton.transform.gameObject.SetActive(false);
                }
                else
                {
                    Destroy(ow);
                }
                break;
            case "ExitGame":
                EndGame();
                break;
        }
    }

    // Coroutine to smoothly end the game and transistion back to brewery view. Destroys the view at the end.
    void EndGame()
    {

        instructionsDone = false;
        mch.CallMethod();
        //// If won, start the fermentation process
        if (DidWin)
        {
            slotScript.Ferment();
        }
        GameObject canvas = GameObject.Find("Canvas");
        canvas.SetActive(false);
        GameObject.Find("GameManager").GetComponent<GameMaster>().CrushisActive = false;
        //gameObject.transform.GetChild(1).gameObject.SetActive(false);
    }
}
