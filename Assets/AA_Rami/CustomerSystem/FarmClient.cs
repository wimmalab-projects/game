public class FarmClient : Client
{
    public int Budget;
    public string GoodReviewSpeech;
    public string AverageReviewSpeech;
    public string BadReviewSpeech;

    // client name comes from baseclass and we pass it on to the baseclass with : base
    //public FarmClient (string clientName, string clientExplanation, string goodreview, string averagereview, string badreview, int clientBudget) : base (clientName, clientExplanation)
    //{
    //    goodReviewSpeech = goodreview;
    //    averageReviewSpeech = averagereview;
    //    badReviewSpeech = badreview;
    //    budget = clientBudget;
    //}
}