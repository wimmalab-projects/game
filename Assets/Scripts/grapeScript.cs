using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class grapeScript : MonoBehaviour
{
    private Vector2 mousePos;
    private GameObject temp;
    private Camera crushCamera;
    public LayerMask layerMask;
    // Use this for initialization
    void Start()
    {
        temp = GameObject.Find("CrushCamera");
        crushCamera = temp.GetComponent<Camera>();
    }

    // Update is called once per frame
    void Update()
    {
        if (Input.GetMouseButton(0))
        {
            Ray ray = crushCamera.ScreenPointToRay(Input.mousePosition);
            RaycastHit2D hit = Physics2D.Raycast(ray.origin, ray.direction, Mathf.Infinity, layerMask);
            if (hit.collider.gameObject.tag == "Respawn")
            {
                Destroy(hit.collider.gameObject);
            }
        }
    }
}
