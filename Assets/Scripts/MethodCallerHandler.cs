using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class MethodCallerHandler : MonoBehaviour
{

    // set gamemaster in editor and the method to be called
    public GameMaster gm;
    public string MethodName;

    public void CallMethod()
    {
        gm.SendMessage(MethodName, gameObject);
    }
}
