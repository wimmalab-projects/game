using System;
using System.Collections;
using System.Collections.Generic;
using System.ComponentModel;
using System.Reflection;
using UnityEngine;

public class GameMaster : MonoBehaviour
{

    // Cameras for different views
    public GameObject TownCamera, FarmCamera, BreweryCamera; // Drag in editor
    public Camera GrapeCrush; // Drag in editor
    public GameObject PlayGrapeCrushGO; // Drag in editor
    public bool CrushisActive { get; set; }
    public bool WineSold { get; set; }

    // set and compare to this
    public GameState State { get; set; }

    // set and reset when inventory opens closes
    // this is to stop colliders activating on mouse / touch clicks trough ui
    public bool IsInventoryOpen { get; set; }

    private GUIScript guiScript;
    private CurtainControls curtainControls;


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

    void Awake()
    {
        curtainControls = GameObject.FindGameObjectWithTag("Curtain").GetComponent<CurtainControls>();
        guiScript = GameObject.FindGameObjectWithTag("InventoryCanvas").GetComponent<GUIScript>();
    }

    private void Start()
    {
        State = GameState.Farm;
        PlayGrapeCrushGO.SetActive(false);
        CrushisActive = false;
        WineSold = false;
        IsInventoryOpen = false;
    }

    private void Update()
    {
        WineSold = false;
    }
    void GoToTown()
    {
        curtainControls.FadeToBlack(Camera.main, TownCamera.transform.Find("MainCam").GetComponent<Camera>());
        State = GameState.Town;
    }
    void GoToFarm()
    {
        curtainControls.FadeToBlack(Camera.main, FarmCamera.transform.Find("MainCam").GetComponent<Camera>());
        State = GameState.Farm;
    }
    void GoToBrewery()
    {
        curtainControls.FadeToBlack(Camera.main, BreweryCamera.transform.Find("MainCam").GetComponent<Camera>());
        State = GameState.Brewery;
    }

    void PlayGrapeCrush()
    {
        curtainControls.FadeToBlack(Camera.main, GrapeCrush);
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
        GameObject obj = Instantiate(PlayGrapeCrushGO);
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

    void ResetGame()
    {
        // Asiakkaat
        // Tehty viini
    }
    #endregion

    #region CameraRailsSystemMethods

    public void FarmCameraTransition()
    {
        FarmCamera.GetComponent<MainAltCamControls>().transition = true;
    }

    public void TownCameraTransition()
    {
        TownCamera.GetComponent<MainAltCamControls>().transition = true;
    }

    public void BreweryCameraTransition()
    {
        BreweryCamera.GetComponent<MainAltCamControls>().transition = true;
    }

    #endregion

    #region wine compare

    /// <summary>
    /// Compare two wines and return the number of matches
    /// </summary>
    /// <param name="wine1"></param>
    /// <param name="wine2"></param>
    /// <returns></returns>
    public int CompareWines(Wine wineA, Wine wineB)
    {
        bool match = false;
        wineA.ComparisonMatrix = wineA.CreateMatrix(); // make sure comparison wine matrix is not null
        wineB.ComparisonMatrix = wineB.CreateMatrix();

        int similiarities = 0;

        // new comparsion loop wihtout LINQ (LINQ reportedly doesn't work properly with mobile)
        for (int i = 0; i < wineA.ComparisonMatrix.Count; i++)
        {
            for (int x = 0; x < wineB.ComparisonMatrix.Count; x++)
            {

                if (wineA.ComparisonMatrix[i].Length != wineB.ComparisonMatrix[x].Length)
                    break;

                for (int y = 0; y < wineA.ComparisonMatrix[i].Length; y++)
                {
                    if (wineA.ComparisonMatrix[i][y] != wineB.ComparisonMatrix[x][y])
                    {
                        match = false;
                        break;
                    }
                    else
                    {
                        match = true;
                    }
                }

                if (match)
                {
                    similiarities++;
                    match = false;
                }
            }
        }

        return similiarities;
    }

    #endregion
}

