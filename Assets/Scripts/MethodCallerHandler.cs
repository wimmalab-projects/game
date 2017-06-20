using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;

/// <summary>
/// place this script inside gamescene objects you want to be able to click and have effects
/// like camera transitions or open / close shop
/// </summary>
public class MethodCallerHandler : MonoBehaviour
{

    // find gamemaster in scene
    private GameMaster gm;

    // method name to be called. set in editor
    public string MethodName;

    void Awake()
    {
        gm = GameObject.FindGameObjectWithTag("GameManager").GetComponent<GameMaster>();
    }

    public void CallMethod()
    {
        gm.SendMessage(MethodName, gameObject);
    }
}
