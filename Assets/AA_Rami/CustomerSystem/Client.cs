/// <summary>
/// Inherited class for restaurant client and farm client
/// </summary>
using UnityEngine;

public class Client : MonoBehaviour
{
    public GameMaster.ClientType clientType;

    public string Name;
    public string Explanation;

    // these can be either feedback from restaurant, or farmer reaction to the feedback the wine gets
    public string GoodReview;
    public string AverageReview;
    public string BadReview;
    
    // restaurant client
    public Wine WineIWant;
    public Wine WineIGet;

    // farm client
    public int Budget;

}
