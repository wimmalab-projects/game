using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class GameMaster : MonoBehaviour {

    // Cameras for different views
    public Camera townCamera, farmCamera, breweryCamera, grapeCrush;

    /// <summary>
    /// List our gamestates here
    /// set default state and inventory state
    /// to prevent clicking trough ui
    /// </summary>
    public enum  GameState
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

    // set and compare to this
    public GameState State = GameState.Farm;

    // set and reset when inventory opens closes
    // this is to stop colliders activating on mouse / touch clicks trough ui
    public bool IsInventoryOpen = false;

    public void GoToTown()
    {
        GameObject.FindGameObjectWithTag("Curtain").GetComponent<CurtainControls>().FadeToBlack(Camera.main, townCamera);
        State = GameState.Town;
    }
    public void GoToFarm()
    {
        GameObject.FindGameObjectWithTag("Curtain").GetComponent<CurtainControls>().FadeToBlack(Camera.main, farmCamera);
        State = GameState.Town;
    }
    public void GoToBrewery()
    {
        GameObject.FindGameObjectWithTag("Curtain").GetComponent<CurtainControls>().FadeToBlack(Camera.main, breweryCamera);
        State = GameState.Town;
    }
    public void PlayGrapeCrush()
    {
        throw new NotImplementedException();
    }

    public void ViewInventory (GameObject go)
    {
        IsInventoryOpen = true;
    }

    public void PlantInfoPanel ()
    {

    }
}
