/* Script that handles the grapes that hit the floor */

using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class grapeScript : MonoBehaviour
{
    private GameObject temp;
    private CrushScript crushScript;

    private void Awake()
    {
        temp = GameObject.Find("CrushView(Clone)");
    }

    private void Update()
    {
        crushScript = temp.GetComponent<CrushScript>();
    }

    private void OnCollisionEnter2D(Collision2D collision)
    {
        if (collision.gameObject.tag == "GrapeFloor")
        {
            crushScript.missedGrapes++;
            Destroy(gameObject);
        }
    }
}
