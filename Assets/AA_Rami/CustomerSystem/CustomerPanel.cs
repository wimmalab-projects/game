using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using System;
using UnityEngine.UI;

public class CustomerPanel : MonoBehaviour {

    public Client clientSender = null; // this is set by the gamemaster clientclick method

    /// <summary>
    /// This method here replaces the white boxes in customer panel to hold the sprite of the customer
    /// this also sets the proper button for the ccustomer panel depending on client type pressed.
    /// </summary>
    public void ActivatePanel () 
    {
        if (clientSender != null)
        {
            this.gameObject.transform.Find("Scroll View").Find("Viewport").Find("Content").Find("CustomerExplanation").GetComponent<Text>().text = clientSender.Explanation;
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
        this.gameObject.transform.Find("Scroll View").Find("Viewport").Find("Content").GetComponent<RectTransform>().sizeDelta =
            new Vector2(this.gameObject.transform.Find("Scroll View").Find("Viewport").Find("Content").GetComponent<RectTransform>().sizeDelta.x,
            this.gameObject.transform.Find("Scroll View").Find("Viewport").Find("Content").Find("CustomerExplanation").GetComponent<RectTransform>().sizeDelta.y);
    }

    // self explanatory
    public void DeactivatePanel()
    {
        gameObject.SetActive(false);
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
        Item wine = GameObject.FindGameObjectWithTag("GameManager").GetComponent<Inventory>().Items["Bottle"];

        if (wine.itemCount > 0)
        {
            // Kutsuu arviointimetodin gamemasterista
            // Pelaaja profiilille palkintometodi kutsu gamemasterista
            // Kutsuu resetmetodin gamemasterista, joka aloittaa loopin alusta
            wine.PopItem();
            Debug.Log("wine sold");
            GameObject.FindGameObjectWithTag("GameManager").GetComponent<GameMaster>().WineSold = true;
        }
    }
}
