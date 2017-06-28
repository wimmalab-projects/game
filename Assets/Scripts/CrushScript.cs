/* This is the script that runs the grape crush minigame.
 * It spawns grapes and checks if the player has crushed them.
 * It also contains states for losing and winning*/

using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class CrushScript : MonoBehaviour
{
    public Camera farmCamera;
    public GameObject grape;
    public LayerMask layerMask;
    public float grapeScore;
    public int missedGrapes;
    public Image fillBar;
    public Text fillText;
    public Text gameOverText;
    public Text missedText;
    public static bool didWin;

    private const int maxMissedGrapes = 10; // How many grapes can be missed
    private GameObject temp;
    private float startTime, refire = 0.4f; // How ofen a new grape is respawned
    private GameObject grapeSplash;
    private MethodCallerHandler mch;
    private bool isStarted;
    private SlotScript slotScript;
    private Inventory inventory;

    GameObject[] spawnpoint;

    RuntimePlatform platform = Application.platform;
    // Use this for initialization

    void Awake()
    {
        // Get script / gameobject references.
        mch = GetComponent<MethodCallerHandler>();
        slotScript = GameObject.FindGameObjectWithTag("GameManager").GetComponent<SlotScript>();
        inventory = GameObject.FindGameObjectWithTag("GameManager").GetComponent<Inventory>();
        grapeSplash = Resources.Load<GameObject>("GrapeSplash 1");
        spawnpoint = GameObject.FindGameObjectsWithTag("Respawn"); // Get the spawn points for the grapes
        mch = GetComponent<MethodCallerHandler>();
    }

    void Start()
    {
        // Set everything to default
        didWin = false;
        isStarted = false;
        fillBar.fillAmount = 0;
        fillText.text = "0%";
        gameOverText.text = "";
        missedText.text = "0/10";
        startTime = Time.time;
    }


    // Update is called once per frame
    void Update()
    {
        // Handle ui updates the ui accordingly to how many missed grapes and hits.
        handleUI();
        // If touch supported, use touch position else use mouse position then do the checktouch function
        if (platform == RuntimePlatform.Android || platform == RuntimePlatform.IPhonePlayer)
        {
            if (Input.touchCount > 0)
            {
                if (Input.GetTouch(0).phase == TouchPhase.Began)
                {
                    checkTouch(Input.GetTouch(0).position);
                }
            }
        }
        else if (platform == RuntimePlatform.WindowsEditor)
        {
            if (Input.GetMouseButtonUp(0))
            {
                checkTouch(Input.mousePosition);
            }
        }

        // Respawn grapes
        if (startTime + refire <= Time.time)
        {
            temp = Instantiate(grape);
            temp.transform.SetParent(gameObject.transform);
            temp.transform.position = spawnpoint[Random.Range(0, spawnpoint.Length)].transform.position;
            startTime = Time.time;
        }

        // If the whole bar has been filled, the game is won. Else if the missedgrapes is equal to maxmissedgrapes you lose the game. Does the gameOver function
        if (fillBar.fillAmount == 1)
        {
            didWin = true;
            gameOverText.text = "Good job!";
            gameOverText.text += "\nYour wine is now fermenting";
            gameOver();
        }
        else if (missedGrapes == maxMissedGrapes)
        {
            didWin = false;
            gameOverText.text = "You lost your grapes!";
            gameOver();
        }
    }

    // Checks if the touch position collides with the grape collider. If it does the grape is destroyed and grapescore is added
    void checkTouch(Vector2 pos)
    {
        if (layerMask.value == 2048)
        {
            Vector3 wp = Camera.main.ScreenToWorldPoint(pos);

            Vector2 touchPos = new Vector2(wp.x, wp.y);

            Collider2D hit = Physics2D.OverlapPoint(touchPos, layerMask);

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
        fillText.text = Mathf.FloorToInt(grapeScore * 1.5f) + "%";
        fillBar.fillAmount = (grapeScore * 1.5f) / 100;
        missedText.text = missedGrapes + "/" + maxMissedGrapes;
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
        gameOverText.GetComponent<Animator>().SetBool("gameOver", true);
        if (!isStarted)
        {
            isStarted = true;
            StartCoroutine("Wait");
        }
    }

    // Coroutine to smoothly end the game and transistion back to brewery view. Destroys the view at the end.
    IEnumerator Wait()
    {
        didWin = false;
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
}
