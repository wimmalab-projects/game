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
    public Image fillBar;
    public Text fillText;
    public Text gameOverText;

    private Vector2 mousePos;
    private GameObject temp;
    private float startTime, refire = 0.3f;
    private GameObject grapeSplash;
    private MethodCallerHandler mch;

    GameObject[] spawnpoint;

    RuntimePlatform platform = Application.platform;
    // Use this for initialization

    void Awake()
    {
        mch = GetComponent<MethodCallerHandler>();
        fillBar.fillAmount = 0;
        fillText.text = "0%";
        gameOverText.text = "";
    }

    void Start()
    {
        grapeSplash = Resources.Load<GameObject>("GrapeSplash 1");
        startTime = Time.time;
        spawnpoint = GameObject.FindGameObjectsWithTag("Respawn");
    }

    // Update is called once per frame
    void Update()
    {
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
            gameOverText.text = "Good job!";
            gameOverText.GetComponent<Animator>().SetBool("gameOver", true);
        }
    }

    void checkTouch(Vector2 pos)
    {
        Vector3 wp = Camera.main.ScreenToWorldPoint(pos);

        Vector2 touchPos = new Vector2(wp.x, wp.y);

        Collider2D hit = Physics2D.OverlapPoint(touchPos, layerMask);

        if (hit && hit.tag == "Grape")
        {
            Destroy(hit.gameObject);
            Instantiate(grapeSplash, touchPos, Quaternion.identity);
            grapeScore++;
            handleUI();
            Debug.Log(fillBar.fillAmount);
        }
    }

    void handleUI()
    {
        fillText.text = Mathf.FloorToInt(grapeScore * 1.5f) + "%";
        fillBar.fillAmount = (grapeScore * 1.5f) / 100;
    }
}
