/* Script that handles the grapes that hit the floor */

using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class grapeScript : MonoBehaviour
{
    private GameObject temp;
    private CrushScriptFix crushScriptFix;

    private void Awake()
    {
        temp = GameObject.Find("CrushView");
        crushScriptFix = temp.GetComponent<CrushScriptFix>();
    }

    //private void Update()
    //{
    //    crushScriptFix = temp.GetComponent<CrushScriptFix>();
    //}

    private void OnCollisionEnter2D(Collision2D collision)
    {
        if (collision.gameObject.tag == "GrapeFloor")
        {
            crushScriptFix.MissedGrapes++;
            Destroy(gameObject);
        }
    }
}
