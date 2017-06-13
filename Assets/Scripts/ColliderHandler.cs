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
    private LayerMask layerMask;

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
            layerMask.value = 32;
        else
            layerMask.value = 256;
    }

    void checkTouch(Vector2 pos)
    {
        if (layerMask.value == 256)
        {
            Vector3 wp = Camera.main.ScreenToWorldPoint(pos);

            Vector2 touchPos = new Vector2(wp.x, wp.y);

            Collider2D hit = Physics2D.OverlapPoint(touchPos, layerMask);

            if (hit && hit.name != null)
            {
                switch (gm.State)
                {
                    case GameMaster.GameState.Farm:
                        if (hit && gm.IsInventoryOpen == false)
                        {
                            //gm.IsInventoryOpen = true;
                            //hitDetected = true;
                            parentGameObject = hit.gameObject;
                            MethodCallerHandler mch = parentGameObject.GetComponent<MethodCallerHandler>();
                            mch.CallMethod();
                        }
                        break;
                    case GameMaster.GameState.Town:
                        if (hit && gm.IsInventoryOpen == false)
                        {
                            gm.IsInventoryOpen = true;
                            hitDetected = true;
                            Debug.Log(hit.transform.gameObject.name);
                        }
                        break;
                    case GameMaster.GameState.Brewery:
                        if (hit && gm.IsInventoryOpen == false)
                        {
                            gm.IsInventoryOpen = true;
                            hitDetected = true;
                            Debug.Log(hit.transform.gameObject.name);
                        }
                        break;
                    case GameMaster.GameState.GrapeCrush:
                        if (hit && gm.IsInventoryOpen == false)
                        {
                            gm.IsInventoryOpen = true;
                            hitDetected = true;
                            Debug.Log(hit.transform.gameObject.name);
                        }
                        break;
                    default:
                        break;
                }
            }
        }
    }
}
