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

    private const int maxMissedGrapes = 10;
    private Vector2 mousePos;
    private GameObject temp;
    private float startTime, refire = 0.4f;
    private GameObject grapeSplash;
    private MethodCallerHandler mch;
    private bool asd = false;
    private bool isStarted = false;

    GameObject[] spawnpoint;

    RuntimePlatform platform = Application.platform;
    // Use this for initialization

    void Awake()
    {
        mch = GetComponent<MethodCallerHandler>();
        fillBar.fillAmount = 0;
        fillText.text = "0%";
        gameOverText.text = "";
        missedText.text = "0/10";
    }

    void Start()
    {
        grapeSplash = Resources.Load<GameObject>("GrapeSplash 1");
        startTime = Time.time;
        spawnpoint = GameObject.FindGameObjectsWithTag("Respawn");
        mch = GetComponent<MethodCallerHandler>();
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
            gameOverText.text = "Good job!";
            gameOver();
            //GameObject.FindGameObjectWithTag("Inventory").GetComponent<Inventory>().items["Juice"].AddItem();
        }
        else if (missedGrapes == maxMissedGrapes)
        {
            gameOverText.text = "You lost!";
            gameOver();
        }
    }

        void checkTouch(Vector2 pos)
        {
            if (layerMask.value == 2048)
            {
                Debug.Log("asd");
                Vector3 wp = Camera.main.ScreenToWorldPoint(pos);

                Vector2 touchPos = new Vector2(wp.x, wp.y);

                Collider2D hit = Physics2D.OverlapPoint(touchPos, layerMask);

                if (hit && hit.tag == "Grape")
                {
                    Destroy(hit.gameObject);
                    Instantiate(grapeSplash, touchPos, Quaternion.identity);
                    grapeScore++;
                    Debug.Log(fillBar.fillAmount);
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
            GameObject asd = GameObject.Find("Canvas");
            yield return new WaitForSeconds(3);
            mch.CallMethod();
            yield return new WaitForSeconds(1);
            asd.SetActive(false);
            gameObject.GetComponent<CrushScript>().enabled = false;
            yield return new WaitForSeconds(1);
            Destroy(gameObject);
        }
    }
