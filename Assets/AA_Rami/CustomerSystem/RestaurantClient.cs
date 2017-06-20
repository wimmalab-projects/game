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

    public string GoodReview;
    public string AverageReview;
    public string BadReview;
    public Wine WineIWant;
    public Wine WineIGet;

    public void CompareWines(Wine WhatIGet, Wine WhatIWant)
    {
        throw new NotImplementedException();
    }
}
