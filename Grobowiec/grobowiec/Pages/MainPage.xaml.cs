using System.Collections.ObjectModel;
using System.Diagnostics;
using grobowiec.Classes;
using grobowiec.Pages;
using Grobowiec.Classes.Api;
using Grobowiec.Services;

namespace grobowiec;

public partial class MainPage : ContentPage
{
    private readonly ItemApiService _apiService;
    
    public UserInfo User => UserState.Current;
    
    public ObservableCollection<PromoItem> DailyPromos { get; set; }
    public ObservableCollection<Coupon> AvailableCoupons { get; set; } = new();

    public MainPage(ItemApiService apiService)
    {
        InitializeComponent();
        _apiService = apiService;

        DailyPromos = new ObservableCollection<PromoItem>
        {
            new PromoItem { Title = "Trumna1", PromoPrice = "tak zł", OldPrice = "0 zł", ImageUrl = "sandgren.jpg", SoulCost = 500 },
            new PromoItem { Title = "Trumna2", PromoPrice = "2 zł", OldPrice = "1 zł", ImageUrl = "sandgren.jpg", SoulCost = 800 },
            new PromoItem { Title = "Nagrobek1", PromoPrice = "6.99 zł", OldPrice = "-1 zł", ImageUrl = "dotnet_bot.png", SoulCost = 1000 },
            new PromoItem { Title = "Nagrobek2", PromoPrice = "4.20 zł", OldPrice = "21.37 zł", ImageUrl = "sandgren.jpg", SoulCost = 1500 },
            new PromoItem { Title = "Koszulki promocyjne", PromoPrice = "3894723943.21232 USD", OldPrice = "2", ImageUrl = "icon.png", SoulCost = 1500 },
            new PromoItem { Title = "Czyjs dziadek", PromoPrice = "12", OldPrice = "11", ImageUrl = "old_man_gerson_overworld.webp", SoulCost = 12435 },
            new PromoItem { Title = "Nagrobek2.5", PromoPrice = "2.", OldPrice = "5 zł", ImageUrl = "sandgren.jpg", SoulCost = -1 },
            new PromoItem { Title = "null", PromoPrice = "null", OldPrice = "null", ImageUrl = "debugempty.png", SoulCost = 1 },
            new PromoItem { Title = "half", PromoPrice = "life", OldPrice = "3", ImageUrl = "err.png", SoulCost = 2 },
            new PromoItem { Title = "Hello everybody!", PromoPrice = "My name is", OldPrice = "welcom", ImageUrl = "sddefault.png", SoulCost = 3 }
        };

        BindingContext = this;
    }

    protected override async void OnAppearing()
    {
        base.OnAppearing();
        
        Anims.StartPulse(eee);
        Anims.Shake(banger_real_totally_not_illegal_gambling);
        
        try
        {
            var coupons = await _apiService.GetCouponsAsync();
            AvailableCoupons.Clear();
            foreach (var coupon in coupons)
            {
                AvailableCoupons.Add(coupon);
            }

            // Sync bought status with DailyPromos so already bought items persist across restarts
            foreach (var promo in DailyPromos)
            {
                var bought = coupons.FirstOrDefault(c => c.Title == promo.Title);
                if (bought != null)
                {
                    promo.IsActivated = true;
                    promo.CouponCode = bought.CouponCode;
                }
            }

            // Deduct spent souls for bought items
            int totalSpent = coupons.Sum(c => c.SoulCost);
            UserState.Current.Souls = Math.Max(0, 2137 - totalSpent);
        }
        catch (Exception ex)
        {
            Debug.WriteLine($"[API Error] Failed to fetch coupons: {ex.Message}");
        }
    }

    protected override void OnDisappearing()
    {
        base.OnDisappearing();
        Anims.StopPulse(eee);
    }

    public async void OpenItemPage(object sender, TappedEventArgs e)
    {
        if (sender is BindableObject bindable && bindable.BindingContext is PromoItem selectedItem)
        {
            var navParams = new Dictionary<string, object>
            {
                { "Item", selectedItem }
            };

            await Shell.Current.GoToAsync(nameof(ItemPage), navParams);
        }
    }
}
