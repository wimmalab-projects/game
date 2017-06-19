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
    public bool didWin;

    private const int maxMissedGrapes = 10;
    private GameObject temp;
    private float startTime, refire = 0.4f;
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
        mch = GetComponent<MethodCallerHandler>();
        slotScript = GameObject.FindGameObjectWithTag("GameManager").GetComponent<SlotScript>();
        inventory = GameObject.FindGameObjectWithTag("GameManager").GetComponent<Inventory>();
        grapeSplash = Resources.Load<GameObject>("GrapeSplash 1");
        spawnpoint = GameObject.FindGameObjectsWithTag("Respawn");
        mch = GetComponent<MethodCallerHandler>();
    }

    void Start()
    {
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
        handleUI();
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

        if (startTime + refire <= Time.time)
        {
            temp = Instantiate(grape);
            temp.transform.SetParent(gameObject.transform);
            temp.transform.position = spawnpoint[Random.Range(0, spawnpoint.Length)].transform.position;
            startTime = Time.time;
        }

        if (fillBar.fillAmount == 1)
        {
            didWin = true;
            gameOverText.text = "Good job!";
            gameOverText.fontSize = 30;
            gameOverText.text += "\n" + slotScript.currentlySelectedName + " juice added to your inventory";
            gameOver();
        }
        else if (missedGrapes == maxMissedGrapes)
        {
            didWin = false;
            gameOverText.text = "You lost!";
            gameOver();
        }
    }

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

    void handleUI()
    {
        fillText.text = Mathf.FloorToInt(grapeScore * 1.5f) + "%";
        fillBar.fillAmount = (grapeScore * 1.5f) / 100;
        missedText.text = missedGrapes + "/" + maxMissedGrapes;
    }

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

    IEnumerator Wait()
    {
        if (didWin)
        {
            inventory.items["Juice"].AddItem();
        }
        GameObject canvas = GameObject.Find("Canvas");
        yield return new WaitForSeconds(3);
        mch.CallMethod();
        yield return new WaitForSeconds(1);
        canvas.SetActive(false);
        gameObject.GetComponent<CrushScript>().enabled = false;
        yield return new WaitForSeconds(1);
        Destroy(gameObject);
    }
}
