using UnityEngine;
using UnityEngine.UI;

/// <summary>
/// placed inside the gamemaster.
/// </summary>
public class FeedbackPanel : MonoBehaviour {

    public GameObject ClientSprite, ReviewText; // place these in editor, these are the children of FeedbackPanel gameobject
    Client client;

    public void OpenFeedback ()
    {
        client = GetComponent<GameMaster>().CurrentClient.GetComponent<Client>();
        int test = (int)GetComponent<GameMaster>().MatchPercentage;

        // get the animation and the line for feedback panel
        if (test < 50) // bad wine
        {
            ReviewText.GetComponent<Text>().text = client.BadReview[Random.Range(0, 2)];
            Player.GainExperience(500);
            ClientSprite.GetComponent<Animator>().runtimeAnimatorController = client.BadFeedback;
        }
        else if (test < 85) // good wine
        {
            ReviewText.GetComponent<Text>().text = client.AverageReview[Random.Range(0, 2)];
            Player.GainExperience(700);
            ClientSprite.GetComponent<Animator>().runtimeAnimatorController = client.NormalFeedback;
        }
        else // over 85% 
        {
            ReviewText.GetComponent<Text>().text = client.GoodReview[Random.Range(0, 2)];
            Player.GainExperience(900);
            ClientSprite.GetComponent<Animator>().runtimeAnimatorController = client.ExcellentFeedback;
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
