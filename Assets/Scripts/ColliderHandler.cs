using UnityEngine;
using System.Collections;

public class ColliderHandler : MonoBehaviour
{
    private Transform parent;
    private GameObject parentGameObject;
    private CanvasGroup inventory;
    public static bool hitDetected;

    void Start()
    {
        GameObject temp = GameObject.Find("Inventory");
        inventory = temp.GetComponent<CanvasGroup>();
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
        if (hit && hit.collider != null && inventory.alpha == 0)
        {
            parent = hit.collider.gameObject.transform.parent;
            parentGameObject = parent.gameObject;
            Debug.Log(parentGameObject);
            hitDetected = true;
        }
        else
            hitDetected = false;
    }
}
