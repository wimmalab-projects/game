/* This is the script that runs the grape crush minigame.
 * It spawns grapes and checks if the player has crushed them.
 * It also contains states for losing and winning*/

using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class CrushScript : MonoBehaviour
{
    public int MissedGrapes { get; set; }
    public static bool DidWin { get; set; }
    public GameObject Grape; // Drag in prefab
    public LayerMask LayerMask; // Choose in editor
    public Image FillBar; // Drag in editor
    public Text FillText; // Drag in editor
    public Text GameOverText; // Drag in editor
    public Text MissedText; // Drag in editor
    public Text GameStartText; // Drag in editor

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
    // Use this for initialization

    void Awake()
    {
        // Get script / gameobject references.
        mch = GetComponent<MethodCallerHandler>();
        grapeSplash = Resources.Load<GameObject>("GrapeSplash 1");
        spawnpoint = GameObject.FindGameObjectsWithTag("Respawn"); // Get the spawn points for the grapes
        mch = GetComponent<MethodCallerHandler>();
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
        StartCoroutine("WaitInstructions");
    }


    // Update is called once per frame
    void Update()
    {
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
        GameObject[] grapesLeft = GameObject.FindGameObjectsWithTag("Grape");
        GameObject[] grapeSplashLeft = GameObject.FindGameObjectsWithTag("GrapeSplash");
        foreach (GameObject grapes in grapesLeft)
        {
            Destroy(grapes);
            foreach (GameObject splash in grapeSplashLeft)
            {
                Destroy(splash);
            }
        }
        GameOverText.GetComponent<Animator>().SetBool("gameOver", true);
        if (!isStarted)
        {
            isStarted = true;
            StartCoroutine("Wait");
        }
    }

    // Coroutine to smoothly end the game and transistion back to brewery view. Destroys the view at the end.
    IEnumerator Wait()
    {
        DidWin = false;
        GameObject canvas = GameObject.Find("Canvas");
        yield return new WaitForSeconds(3);
        mch.CallMethod();
        yield return new WaitForSeconds(1);
        canvas.SetActive(false);
        gameObject.GetComponent<CrushScript>().enabled = false;
        yield return new WaitForSeconds(1);
        Destroy(gameObject);
        GameObject.Find("GameManager").GetComponent<GameMaster>().CrushisActive = false;
    }

    IEnumerator WaitInstructions()
    {
        GameStartText.text = "You need to crush the grapes to fill the bar\nBut dont miss too much!";
        yield return new WaitForSeconds(5);
        GameStartText.text = "";
        instructionsDone = true;
    }
}
