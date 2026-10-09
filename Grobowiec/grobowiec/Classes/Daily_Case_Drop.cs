namespace grobowiec.Classes;

public class Daily_Case_Drop
{
    protected Random random = new Random();
    public Daily_Case_Promotion_Item Draw_Promotion(List<Daily_Case_Promotion_Item> promotions)
    {
        double all_chances = promotions.Sum(x => x.Chance);
        double random_number = random.NextDouble() * all_chances;
        double sum = 0;
        foreach (var promotion in promotions)
        {
            sum += promotion.Chance;
            if (sum >= random_number)
            {
                return promotion;
            }
        }

        return null;
    }
}