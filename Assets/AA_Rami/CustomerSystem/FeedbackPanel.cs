using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class FeedbackPanel : MonoBehaviour {

    public GameObject ClientSprite, ReviewText;
    Client client;

    public void OpenFeedback ()
    {
        Debug.Log("open feedpack");
        client = GetComponent<GameMaster>().CurrentClient.GetComponent<Client>();
        int test = (int)GetComponent<GameMaster>().MatchPercentage;

        if (test < 50) // bad wine
        {
            ReviewText.GetComponent<Text>().text = client.BadReview[Random.Range(0, 2)];
            Player.GainExperience(500);
        }
        else if (test < 85) // good wine
        {
            ReviewText.GetComponent<Text>().text = client.AverageReview[Random.Range(0, 2)];
            Player.GainExperience(700);
        }
        else // over 85% 
        {
            ReviewText.GetComponent<Text>().text = client.GoodReview[Random.Range(0, 2)];
            Player.GainExperience(900);
        }

        ClientSprite.GetComponent<Image>().sprite = GetComponent<GameMaster>().CurrentClient.GetComponent<SpriteRenderer>().sprite;

        
        ClientSprite.transform.parent.gameObject.SetActive(true);
    }

    public void CloseFeedback()
    {
        GameObject.Find("CustomerPanel").GetComponent<GetFinishedWines>().LoadWinesForSale();
        ClientSprite.transform.parent.gameObject.SetActive(false);
    }
}
