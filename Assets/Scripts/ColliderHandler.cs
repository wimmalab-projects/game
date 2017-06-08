using UnityEngine;
using System.Collections;

public class ColliderHandler : MonoBehaviour
{
    public static GameObject parentGameObject;
    public static bool hitDetected;

    //private CanvasGroup inventory;
    private Transform parent;

    private void Awake()
    {
        /*GameObject temp = GameObject.Find("Inventory");
        inventory = temp.GetComponent<CanvasGroup>();*/
    }

    void Start()
    {

    }

    // Update is called once per frame
    void Update()
    {
        if (Input.touchSupported == true || Input.GetMouseButton(0) == true)
        {
            CastRay();
        }
    }

    void CastRay()
    {
        Ray ray = Camera.main.ScreenPointToRay(Input.mousePosition);
        RaycastHit2D hit = Physics2D.Raycast(ray.origin, ray.direction, Mathf.Infinity);
        if (hit && hit.collider != null)
        {
            parent = hit.collider.gameObject.transform.parent;
            parentGameObject = parent.gameObject;
            hitDetected = true;
        }
        else
            hitDetected = false;
    }
}
