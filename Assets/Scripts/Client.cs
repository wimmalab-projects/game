using System.Collections.Generic;
using UnityEngine;

/// <summary>
/// Placed inside a gameobject together with collider2d and a methodcallerhandler that calls ClientClick method
/// </summary>
public class Client : MonoBehaviour
{
    public bool AtFarm = false;

    public GameMaster.ClientType clientType;

    public string Name;
    public string Explanation;

    // these can be either feedback from restaurant, or farmer reaction to the feedback the wine gets
    public List<string> GoodReview = new List<string>();
    public List<string> AverageReview = new List<string>();
    public List<string> BadReview = new List<string>();

    // restaurant client
    public WinePrefab WineIWant;

    // farm client
    public int Budget;

    [Header("Canvas animations")]
    public RuntimeAnimatorController ExcellentFeedback;
    public RuntimeAnimatorController NormalFeedback;
    public RuntimeAnimatorController BadFeedback;
}
