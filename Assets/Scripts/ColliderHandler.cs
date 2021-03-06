﻿using UnityEngine;

/// <summary>
/// Script that handles the collision between touch/mouse position and colliders
/// </summary>
public class ColliderHandler : MonoBehaviour
{
    public GameObject ParentGameObject { get; set; }

    private GameMaster gm;
    private LayerMask layerMask;
    private RuntimePlatform platform;

    void Awake()
    {
        GameObject gameMaster = GameObject.FindGameObjectWithTag("GameManager");
        gm = gameMaster.GetComponent<GameMaster>();
    }

    void Start()
    {
        layerMask = 0;
        platform = Application.platform;
    }

    // Update is called once per frame
    void Update()
    {
        if (platform == RuntimePlatform.Android || platform == RuntimePlatform.IPhonePlayer)
        {
            if (Input.touchCount > 0 && Input.GetTouch(0).phase == TouchPhase.Began)
            {
                checkTouch(Input.GetTouch(0).position);
            }
        }
        else if (platform == RuntimePlatform.WindowsEditor && Input.GetMouseButtonUp(0))
        {
            checkTouch(Input.mousePosition);
        }

        if (gm.IsInventoryOpen || gm.dialogueOpen || gm.optionsOpen)
        {
            layerMask.value = 5;
        }
        else if (gm.State == GameMaster.GameState.Farm)
        {
            layerMask.value = 256;
        }
        else if (gm.State == GameMaster.GameState.Brewery)
        {
            layerMask.value = 512;
        }
        else if (gm.State == GameMaster.GameState.Town)
        {
            layerMask.value = 1024;
        }
        else if (gm.State == GameMaster.GameState.GrapeCrush)
        {
            layerMask.value = 2048;
        }
        else
            layerMask.value = 0;
    }

    /// <summary>
    /// Checks collision based on touch position OR mouse position.
    /// </summary>
    /// <param name="pos"></param>
    void checkTouch(Vector2 pos)
    {

        if (layerMask.value == 256) // farmview
        {
            hitterMethod(pos);
        }
        if (layerMask.value == 512) // breweryview
        {
            hitterMethod(pos);
        }
        if (layerMask.value == 1024) // townview
        {
            hitterMethod(pos);
        }
    }

    public void hitterMethod(Vector2 pos)
    {
        Vector3 wp = Camera.main.ScreenToWorldPoint(pos);
        Vector2 touchPos = new Vector2(wp.x, wp.y);
        Collider2D hit = Physics2D.OverlapPoint(touchPos, layerMask);

        if (hit)
        {
            ParentGameObject = hit.gameObject;
            MethodCallerHandler mch;
            mch = ParentGameObject.GetComponent<MethodCallerHandler>();
            mch.CallMethod();

            // instantiate sound effect
            gm.InstantiateSFX("sfx/TouchSFX");
        }
    }
}
