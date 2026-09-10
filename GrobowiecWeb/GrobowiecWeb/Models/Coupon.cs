namespace GrobowiecWeb.Models;

public class Coupon
{
    public int Id { get; set; }
    public string Title { get; set; } = string.Empty;
    public string CouponCode { get; set; } = string.Empty;
    public int SoulCost { get; set; }
    public string PromoPrice { get; set; } = string.Empty;
    public string ImageUrl { get; set; } = string.Empty;
    public DateTime PurchasedAt { get; set; } = DateTime.UtcNow;
    public bool IsUsed { get; set; }
}
