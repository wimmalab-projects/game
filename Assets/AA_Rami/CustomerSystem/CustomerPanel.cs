using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using System;
using UnityEngine.UI;

public class CustomerPanel : MonoBehaviour {

    public List<GameObject> Clients = new List<GameObject>(); // place client prefabs here in editor
    public Client clientSender = null; // this is set by the gamemaster clientclick method
    GameObject InfoPanel;

    public string SelectedWine { get; set; }


    private void Start()
    {
        InfoPanel = transform.Find("Info").gameObject;
    }

    /// <summary>
    /// This method here replaces the white boxes in customer panel to hold the sprite of the customer
    /// this also sets the proper button for the ccustomer panel depending on client type pressed.
    /// </summary>
    public void ActivatePanel () 
    {
        if (clientSender != null)
        {
            GameObject.FindGameObjectWithTag("GameManager").GetComponent<GameMaster>().IsInventoryOpen = true;

            this.gameObject.transform.Find("Info").Find("Viewport").Find("Content").Find("CustomerExplanation").GetComponent<Text>().text = clientSender.Explanation;
            if (clientSender.clientType == GameMaster.ClientType.Farmer)
            {
                gameObject.transform.Find("LeftSidePanel").Find("FarmButton").gameObject.SetActive(true);
                gameObject.transform.Find("LeftSidePanel").Find("RestaurantButton").gameObject.SetActive(false);
            }
            else
            {
                gameObject.transform.Find("LeftSidePanel").Find("FarmButton").gameObject.SetActive(false);
                gameObject.transform.Find("LeftSidePanel").Find("RestaurantButton").gameObject.SetActive(true);
            }

            gameObject.transform.Find("LeftSidePanel").Find("CustomerImage").GetComponent<Image>().sprite = clientSender.GetComponent<SpriteRenderer>().sprite;

            gameObject.SetActive(true);
        }
    }

    /// <summary>
    /// Scales customerpanels scrollview content to match the size of the text
    /// inside it.
    /// </summary>
    public void ScaleExplanationContent()
    {
        Canvas.ForceUpdateCanvases(); // without this the content won't update properly.

        // tarvii siivousta
        this.gameObject.transform.Find("Info").Find("Viewport").Find("Content").GetComponent<RectTransform>().sizeDelta =
            new Vector2(this.gameObject.transform.Find("Info").Find("Viewport").Find("Content").GetComponent<RectTransform>().sizeDelta.x,
            this.gameObject.transform.Find("Info").Find("Viewport").Find("Content").Find("CustomerExplanation").GetComponent<RectTransform>().sizeDelta.y);
    }

    // self explanatory
    public void DeactivatePanel()
    {
        gameObject.SetActive(false);
        GameObject.FindGameObjectWithTag("GameManager").GetComponent<GameMaster>().IsInventoryOpen = false;
    }

    public void AcceptFarmer()
    {
        if (clientSender != null)
        {
            GameObject.FindGameObjectWithTag("GameManager").GetComponent<GameMaster>().CurrentClient = clientSender.gameObject;
            DeactivatePanel();
        }
    }
    public void AcceptRestaurantClient () // placeholder
    {
        GetFinishedWines fgw = GetComponent<GetFinishedWines>();

        if (fgw.sellWinesList.activeSelf == false) // check if the sell panel is open
        {
            InfoPanel.SetActive(false);
            fgw.sellWinesList.SetActive(true);
            fgw.LoadWinesForSale();
        }
        else // sell the wine if the panel is open and wine is selected
        {
            GameObject.FindGameObjectWithTag("GameManager").GetComponent<GameMaster>().WineSold = true;
            Wine wineA = clientSender.GetComponent<Client>().WineIWant.WineHolder;
            Wine wineB = ((ItemOurWine)GameObject.FindGameObjectWithTag("GameManager").GetComponent<Inventory>().Items[GameObject.FindGameObjectWithTag("GameManager").GetComponent<SlotScript>().SeedName]).test();
            
            GameObject.FindGameObjectWithTag("GameManager").GetComponent<GameMaster>().CompareWines(wineA, wineB);
        }


        //Item wine = GameObject.FindGameObjectWithTag("GameManager").GetComponent<Inventory>().Items["Bottle"];

        //if (wine.Stack > 0)
        //{
        //    // 1. Avaa luettelon viineistä (sisältää pullotetut viinit)
        //    // 2. Valitaan viini
        //    // 3. painetaan myy
        //    // 4. vertaus tapahtuu
        //    // 5. vertaa palautetut yhtäläisyydet halutun viinin maksini attribuuttien määrään (esim. 10 yhtäläisyyttä 20 attribuuttia = 50%)
        //    // 6. antaa XP perustuen yhtäläisyyksien määrään. Erinomainen > 85%, kohtalainen > 50%, Huono < 50%
        //    // 7. loopin resetti.
    }
}
