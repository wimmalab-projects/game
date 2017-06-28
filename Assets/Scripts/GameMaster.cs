using System;
using System.Collections;
using System.Collections.Generic;
using System.ComponentModel;
using System.Reflection;
using UnityEngine;

public class GameMaster : MonoBehaviour
{

    // Cameras for different views
    public GameObject townCamera, farmCamera, breweryCamera;
    public Camera grapeCrush;
    public GameObject playGrapeCrush;
    public bool CrushisActive;

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

    public enum FermentationState
    {
        NotFermentating,
        Fermenting,
        Fermented
    }

    public enum ClarificationState
    {
        NotClarificating,
        Clarificating,
        Clarificated
    }

    public enum Winetype
    {
        [Description("White wine")]
        WhiteWine,
        [Description("Rose wine")]
        RoseWine,
        [Description("Red wine")]
        RedWine,
    }

    public enum BottlingState
    {
        NotBottling,
        Bottling,
        Bottled
    }

    // set and reset when inventory opens closes
    // this is to stop colliders activating on mouse / touch clicks trough ui
    public bool IsInventoryOpen = false;

    void Awake()
    {
        curtainControls = GameObject.FindGameObjectWithTag("Curtain").GetComponent<CurtainControls>();
        guiTemp = GameObject.FindGameObjectWithTag("InventoryCanvas");
        guiScript = guiTemp.GetComponent<GUIScript>();
        playGrapeCrush.SetActive(false);
        CrushisActive = false;
    }
    void GoToTown()
    {
        curtainControls.FadeToBlack(Camera.main, townCamera.transform.Find("MainCam").GetComponent<Camera>());
        State = GameState.Town;
    }
    void GoToFarm()
    {
        curtainControls.FadeToBlack(Camera.main, farmCamera.transform.Find("MainCam").GetComponent<Camera>());
        State = GameState.Farm;
    }
    void GoToBrewery()
    {
        curtainControls.FadeToBlack(Camera.main, breweryCamera.transform.Find("MainCam").GetComponent<Camera>());
        State = GameState.Brewery;
    }

    void PlayGrapeCrush()
    {
        curtainControls.FadeToBlack(Camera.main, grapeCrush);
        State = GameState.GrapeCrush;
        StartCoroutine("Wait", 0.5f);
    }

    void ViewInventory(GameObject go)
    {
        guiScript.showInventory();
        IsInventoryOpen = true;
    }

    IEnumerator Wait(float time)
    {
        yield return new WaitForSeconds(time);
        GameObject obj = Instantiate(playGrapeCrush);
        State = GameState.GrapeCrush;
        obj.SetActive(true);
        CrushisActive = true;

    }

    // Get fermentation state enums description for nicer name
    public string GetDescription(Enum value)
    {
        FieldInfo field = value.GetType().GetField(value.ToString());

        DescriptionAttribute attribute
                = Attribute.GetCustomAttribute(field, typeof(DescriptionAttribute))
                    as DescriptionAttribute;

        return attribute == null ? value.ToString() : attribute.Description;
    }

    #region CustomerSystem
    public GameObject CurrentClient; // set by cpFarmButton.cs load this into farmview client
    public GameObject CustomerSystem; // set in editor.

    void ClientClick(GameObject go)
    {
        Debug.Log(go.ToString());
        CustomerSystem.GetComponent<CustomerPanel>().clientSender = go.GetComponent<Client>();
        CustomerSystem.GetComponent<CustomerPanel>().ActivatePanel();
        CustomerSystem.GetComponent<CustomerPanel>().ScaleExplanationContent();
    }
    public enum ClientType
    {
        Farmer,
        Restaurant
    };
    #endregion

    #region InsideSceneCameraTransition

    public void FarmCameraTransition()
    {
        farmCamera.GetComponent<MainAltCamControls>().transition = true;


}

#endregion


    // debug tarkoituksissa voi poistaa myöhemmin
    void DebugMethod()
    {
        Debug.Log("HEARHEAR!!");
    }
}

