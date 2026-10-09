namespace grobowiec.Classes;


public enum Rarity
{
    Common,
    Rare,
    Epic
}
public class Daily_Case_Promotion_Item
{
    public string Name { get; set; }
    public string Description { get; set; }
    public Rarity Rarity { get; set; }
    public double Chance { get; set; }

    public Daily_Case_Promotion_Item(string name, string description, Rarity rarity, double chance)
    {
        Name = name;
        Description = description;
        Rarity = rarity;
        Chance = chance;
    }
}