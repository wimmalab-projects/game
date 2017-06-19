// completion rewards:
// + Rep ?
// = Rep ?
// - Rep ?
// + XP

using System;

public class RestaurantClient : Client
{
    // WineIWant : Wine
    // WineIGet : Wine

    private string goodReview;
    private string averageReview;
    private string badReview;
    private Wine wineIWant;

    // wine the player sells to the customer
    public Wine WineIGet
    {
        get { return WineIGet; }
        set { WineIGet = value; }
    }

    public Wine WineIWant
    {
        get { return wineIWant; }
        set { wineIWant = value; }
    }

    public string BadReview
    {
        get { return badReview; }
    }

    public string AverageReview
    {
        get { return averageReview; }
    }

    public string GoodReview
    {
        get { return goodReview; }
    }

    // client name comes from baseclass and we pass it on to the baseclass with : base
    public RestaurantClient(string clientName, string goodreview, string averagereview, string badreview) : base (clientName)
    {
        goodReview = goodreview;
        averageReview = averagereview;
        badReview = badreview;
    }

    public void CompareWines(Wine WhatIGet, Wine WhatIWant)
    {
        throw new NotImplementedException();
    }
}
