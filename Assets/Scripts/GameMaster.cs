﻿using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class GameMaster : MonoBehaviour
{

    // Cameras for different views
    public Camera townCamera, farmCamera, breweryCamera, grapeCrush;

    private GameObject guiTemp;
    private GUIScript guiScript;
    private CurtainControls curtainControls;

    // set and compare to this
    public GameState State = GameState.Farm;

    /// <summary>
    /// List our gamestates here
    /// set default state and inventory state
    /// to prevent clicking trough ui
    /// </summary>
    public enum GameState
    {
        Farm,
        Town,
        Brewery,
        GrapeCrush
    };

    public enum PlantState
    {
        NotPlanted,
        JustPlanted,
        Overgrowth,
        Trimmed,
        Grapes
    };

    // set and reset when inventory opens closes
    // this is to stop colliders activating on mouse / touch clicks trough ui
    public bool IsInventoryOpen = false;

    void Awake()
    {
        curtainControls = GameObject.FindGameObjectWithTag("Curtain").GetComponent<CurtainControls>();
        guiTemp = GameObject.FindGameObjectWithTag("InventoryCanvas");
        guiScript = guiTemp.GetComponent<GUIScript>();
    }
    void GoToTown()
    {
        curtainControls.FadeToBlack(Camera.main, townCamera);
        State = GameState.Town;
    }
    void GoToFarm()
    {
        curtainControls.FadeToBlack(Camera.main, farmCamera);
        State = GameState.Farm;
    }
    void GoToBrewery()
    {
        curtainControls.FadeToBlack(Camera.main, breweryCamera);
        State = GameState.Brewery;
    }
    void PlayGrapeCrush()
    {
        curtainControls.FadeToBlack(Camera.main, grapeCrush);
        State = GameState.GrapeCrush;
    }

    void ViewInventory(GameObject go)
    {
        guiScript.showInventory();
        IsInventoryOpen = true;
    }
}