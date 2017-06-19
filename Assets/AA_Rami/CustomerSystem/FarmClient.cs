public class FarmClient : Client
{
    private int budget;
    private string goodReviewSpeech;
    private string averageReviewSpeech;
    private string badReviewSpeech;

    public string BadReviewSpeech
    {
        get { return badReviewSpeech; }
    }

    public string AverageReviewSpeech
    {
        get { return averageReviewSpeech; }
    }

    public string GoodReviewSpeech
    {
        get { return goodReviewSpeech; }
    }

    public int Budget
    {
        get { return budget; }
    }

    // client name comes from baseclass and we pass it on to the baseclass with : base
    public FarmClient (string clientName, string goodreview, string averagereview, string badreview, int clientBudget) : base (clientName)
    {
        goodReviewSpeech = goodreview;
        averageReviewSpeech = averagereview;
        badReviewSpeech = badreview;
        budget = clientBudget;
    }
}