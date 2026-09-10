using System.Diagnostics;
using grobowiec.Classes;
using Grobowiec.Classes.Api;
using Grobowiec.Services;

namespace grobowiec.Pages;

[QueryProperty(nameof(Promo), "Item")]
public partial class ItemPage : ContentPage
{
    private readonly ItemApiService? _apiService;
    private PromoItem _promo;

    public PromoItem Promo
    {
        get => _promo;
        set
        {
            _promo = value;
            UpdateUI();
        }
    }

    public ItemPage(ItemApiService apiService)
    {
        InitializeComponent();
        _apiService = apiService;
    }

    public ItemPage() : this(Application.Current?.Handler?.MauiContext?.Services.GetService<ItemApiService>() ?? new ItemApiService())
    {
    }

    private void UpdateUI()
    {
        if (Promo == null) return;

        int userSouls = UserState.Current.Souls;
        int cost = Promo.SoulCost;

        ItemImage.Source = Promo.ImageUrl;
        TitleLabel.Text = Promo.Title;
        PriceLabel.Text = Promo.PromoPrice;
        OldPriceLabel.Text = Promo.OldPrice;
        SoulsCountLabel.Text = $"Urny: {userSouls}";

        if (Promo.IsActivated)
        {
            ProgressSection.IsVisible = false;
            ActivateBtn.IsVisible = false;
            ActiveCouponCard.IsVisible = true;
            CouponCodeLabel.Text = Promo.CouponCode;
            PriceLabel.Text = "0 zł (Odebrano)";
            return;
        }

        double progress = Math.Clamp((double)userSouls / cost, 0.0, 1.0);
        SoulsProgressBar.Progress = progress;
        ProgressLabel.Text = $"{userSouls} / {cost} urn";
        PercentLabel.Text = $"{(int)(progress * 100)}%";

        if (userSouls >= cost)
        {
            ActivateBtn.Text = $"Aktywuj za {cost} urn";
            ActivateBtn.IsEnabled = true;
            ActivateBtn.BackgroundColor = Color.FromArgb("#8B5CF6");
            ActivateBtn.TextColor = Color.FromArgb("#FFFFFF");
        }
        else
        {
            int missing = cost - userSouls;
            ActivateBtn.Text = $"Brakuje Ci {missing} urn";
            ActivateBtn.IsEnabled = false;
            ActivateBtn.BackgroundColor = Color.FromArgb("#231B32");
            ActivateBtn.TextColor = Color.FromArgb("#8B7FA8");
        }
    }

    protected override async void OnAppearing()
    {
        base.OnAppearing();
        if (Promo != null && !Promo.IsActivated && _apiService != null)
        {
            try
            {
                var coupons = await _apiService.GetCouponsAsync();
                var bought = coupons.FirstOrDefault(c => c.Title == Promo.Title);
                if (bought != null)
                {
                    Promo.IsActivated = true;
                    Promo.CouponCode = bought.CouponCode;
                    UpdateUI();
                }
            }
            catch (Exception ex)
            {
                Debug.WriteLine($"[API Error] Failed to check coupon status: {ex.Message}");
            }
        }
    }

    private async void OnActivateCouponClicked(object sender, EventArgs e)
    {
        if (Promo == null || Promo.IsActivated || UserState.Current.Souls < Promo.SoulCost) return;

        bool confirm = await DisplayAlert("Wymiana", $"Wymienić {Promo.SoulCost} urn na ten kupon?", "Ta jest", "Nah");
        if (!confirm) return;

        string couponCode = $"GRUB-{Random.Shared.Next(1000, 9999)}-{Random.Shared.Next(1000, 9999)}-JAJA";

        // Save purchased item / activated coupon to the server database
        try
        {
            if (_apiService != null)
            {
                await _apiService.CreateCouponAsync(new Coupon
                {
                    Title = Promo.Title,
                    CouponCode = couponCode,
                    SoulCost = Promo.SoulCost,
                    PromoPrice = Promo.PromoPrice,
                    ImageUrl = Promo.ImageUrl,
                    PurchasedAt = DateTime.UtcNow,
                    IsUsed = false
                });
            }

            UserState.Current.Souls -= Promo.SoulCost;
            Promo.IsActivated = true;
            Promo.CouponCode = couponCode;

            UpdateUI();
            await DisplayAlert("Sukces", "Kupon został aktywowany i zapisany na serwerze!", "Git");
        }
        catch (Exception ex)
        {
            Debug.WriteLine($"[API Error] Failed to save purchase to server: {ex.Message}");
            await DisplayAlert("Błąd", $"Nie udało się zapisać do bazy danych: {ex.Message}", "OK");
        }
    }
}
