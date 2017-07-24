using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using System;
using UnityEngine.UI;

public class CustomerPanel : MonoBehaviour {

    public List<GameObject> Clients = new List<GameObject>(); // place client prefabs here in editor
    public Client clientSender = null; // this is set by the gamemaster clientclick method
    GameObject InfoPanel;

    GetFinishedWines fgw;

    public string SelectedWine { get; set; }


    public void Start()
    {
        fgw = GetComponent<GetFinishedWines>();
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
            // instantiate sound effect
            GameObject.FindGameObjectWithTag("GameManager").GetComponent<GameMaster>().InstantiateSFX("sfx/TouchSFX");

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


            //Debug.Log(fgw.sellWinesPanel);

            if (fgw != null)
            {
                InfoPanel.SetActive(true);
                fgw.sellWinesPanel.SetActive(false);
            }

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
        // instantiate sound effect
        GameObject.FindGameObjectWithTag("GameManager").GetComponent<GameMaster>().InstantiateSFX("sfx/TouchSFX");

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

    public void AcceptRestaurantClient ()
    {
        // instantiate sound effect
        GameObject.FindGameObjectWithTag("GameManager").GetComponent<GameMaster>().InstantiateSFX("sfx/TouchSFX");

        Debug.Log(fgw.sellWinesPanel.activeSelf);
        if (fgw.sellWinesPanel.activeSelf == false) // check if the sell panel is open
        {
            InfoPanel.SetActive(false);
            fgw.sellWinesPanel.SetActive(true);
            fgw.LoadWinesForSale();
        }
        else if (((ItemOurWine)GameObject.FindGameObjectWithTag("GameManager").GetComponent<Inventory>().Items[GameObject.FindGameObjectWithTag("GameManager").GetComponent<SlotScript>().SeedName]).Stack > 0) // sell the wine if the panel is open and wine is selected
        {
            GameObject.FindGameObjectWithTag("GameManager").GetComponent<GameMaster>().WineSold = true;
            Wine wineA = clientSender.GetComponent<Client>().WineIWant.WineHolder;
            Wine wineB = ((ItemOurWine)GameObject.FindGameObjectWithTag("GameManager").GetComponent<Inventory>().Items[GameObject.FindGameObjectWithTag("GameManager").GetComponent<SlotScript>().SeedName]).GetAttributes();
            
            GameObject.FindGameObjectWithTag("GameManager").GetComponent<GameMaster>().CompareWines(wineA, wineB);

            ((ItemOurWine)GameObject.FindGameObjectWithTag("GameManager").GetComponent<Inventory>().Items[GameObject.FindGameObjectWithTag("GameManager").GetComponent<SlotScript>().SeedName]).PopItem();
        }
    }
}
