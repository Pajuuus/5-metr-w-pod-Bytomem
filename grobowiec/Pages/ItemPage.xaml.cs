using grobowiec.Classes;

namespace grobowiec.Pages;

[QueryProperty(nameof(Promo), "Item")]
public partial class ItemPage : ContentPage
{
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

    public ItemPage()
    {
        InitializeComponent();
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

    private async void OnActivateCouponClicked(object sender, EventArgs e)
    {
        if (Promo == null || UserState.Current.Souls < Promo.SoulCost) return;

        bool confirm = await DisplayAlert("Wymiana", $"Wymienić {Promo.SoulCost} urn na ten kupon?", "Ta jest", "Nah");
        if (!confirm) return;

        UserState.Current.Souls -= Promo.SoulCost;
        Promo.IsActivated = true;
        Promo.CouponCode = $"GRUB-{Random.Shared.Next(1000, 9999)}-{Random.Shared.Next(1000, 9999)}-JAJA";

        UpdateUI();
        await DisplayAlert("Sukces", "Kupon został aktywowany!", "Git");
    }
}
