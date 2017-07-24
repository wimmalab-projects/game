using UnityEngine;
using System.Collections;

public class tempTouch : MonoBehaviour
{
    public static bool hitDetected;
    public static GameObject parentGameObject;

    RuntimePlatform platform = Application.platform;
    
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
    }

    void checkTouch(Vector2 pos)
    {
        Vector3 wp = Camera.main.ScreenToWorldPoint(pos);
        Vector2 touchPos = new Vector2(wp.x, wp.y);
        Collider2D hit = Physics2D.OverlapPoint(touchPos);

        if (hit)
        {
            parentGameObject = hit.gameObject;
            MethodCallerHandler mch;
            mch = parentGameObject.GetComponent<MethodCallerHandler>();
            mch.CallMethod();

        }
    }
}
