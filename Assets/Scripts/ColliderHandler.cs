using UnityEngine;
using System.Collections;

public class ColliderHandler : MonoBehaviour
{
    public static bool hitDetected;
    public GameObject gameMaster;
    public static GameObject parentGameObject;

    //private CanvasGroup inventory;
    private Transform parent;
    private GameMaster gm;
    private LayerMask layerMask = 0;

    RuntimePlatform platform = Application.platform;

    void Awake()
    {
        gm = gameMaster.GetComponent<GameMaster>();
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

        if (gm.IsInventoryOpen == true)
            layerMask.value = 5;
        else if (gm.State == GameMaster.GameState.Farm)
        {
            layerMask.value = 256;
        }
        else if (gm.State == GameMaster.GameState.Brewery)
        {
            layerMask.value = 512;
        }
        else if (gm.State == GameMaster.GameState.Town)
        {
            layerMask.value = 1024;
        }
        else if (gm.State == GameMaster.GameState.GrapeCrush)
        {
            layerMask.value = 2048;
        }
        else
            layerMask.value = 0;

        //Debug.Log(layerMask.value);
    }

    void checkTouch(Vector2 pos)
    {

        if (layerMask.value == 256) // farmview
        {
            hitterMethod(pos);
        }
        if (layerMask.value == 512) // breweryview
        {
            hitterMethod(pos);
        }
        if (layerMask.value == 1024) // townview
        {
            hitterMethod(pos);
        }
        if (layerMask.value == 2048) // crushview
        {
            hitterMethod(pos);
        }
    }

    public void hitterMethod(Vector2 pos)
    {
        Vector3 wp = Camera.main.ScreenToWorldPoint(pos);
        Vector2 touchPos = new Vector2(wp.x, wp.y);
        Collider2D hit = Physics2D.OverlapPoint(touchPos, layerMask);

        if (hit)
        {
            parentGameObject = hit.gameObject;
            MethodCallerHandler mch;
            mch = parentGameObject.GetComponent<MethodCallerHandler>();
            mch.CallMethod();
            
        }
    }
}
