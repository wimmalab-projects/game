using System.Collections;
using System.Collections.Generic;
using UnityEngine;

/// <summary>
/// Get collider we are hitting in the scene. to be taken in use when we finally throw canvas outta window
/// </summary>
public class TestTouch : MonoBehaviour
{

    RuntimePlatform platform = Application.platform;
    public GameObject gameMaster;
    private GameMaster gm;

    private void Start()
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
            if (Input.GetMouseButtonDown(0))
            {
                checkTouch(Input.mousePosition);
            }
        }
    }

    private void checkTouch (Vector2 pos)
    {
        Vector3 wp = Camera.main.ScreenToWorldPoint(pos);

        Vector2 touchPos = new Vector2(wp.x,wp.y);

        Collider2D hit = Physics2D.OverlapPoint(touchPos);


        switch (gm.State)
        {
            case GameMaster.GameState.Farm:
                if (hit && gm.IsInventoryOpen == false)
                    Debug.Log("farmview " + hit.transform.gameObject.name);
                break;
            case GameMaster.GameState.Town:
                if (hit && gm.IsInventoryOpen == false)
                    Debug.Log("town " + hit.transform.gameObject.name);
                break;
            case GameMaster.GameState.Brewery:
                if (hit && gm.IsInventoryOpen == false)
                    Debug.Log("brewery " + hit.transform.gameObject.name);
                break;
            case GameMaster.GameState.GrapeCrush:
                if (hit && gm.IsInventoryOpen == false)
                    Debug.Log("grapecrush " + hit.transform.gameObject.name);
                break;
            default:
                break;
        }
    }
}
