using System.Collections.ObjectModel;
using grobowiec.Classes;
using grobowiec.Pages;

namespace grobowiec;

public partial class MainPage : ContentPage
{
    public UserInfo User => UserState.Current;
    
    public ObservableCollection<PromoItem> DailyPromos { get; set; }

    public MainPage()
    {
        InitializeComponent();

        DailyPromos = new ObservableCollection<PromoItem>
        {
            new PromoItem { Title = "Trumna1", PromoPrice = "tak zł", OldPrice = "0 zł", ImageUrl = "sandgren.jpg", SoulCost = 500 },
            new PromoItem { Title = "Trumna2", PromoPrice = "2 zł", OldPrice = "1 zł", ImageUrl = "sandgren.jpg", SoulCost = 800 },
            new PromoItem { Title = "Nagrobek1", PromoPrice = "6.99 zł", OldPrice = "-1 zł", ImageUrl = "dotnet_bot.png", SoulCost = 1000 },
            new PromoItem { Title = "Nagrobek2", PromoPrice = "4.20 zł", OldPrice = "21.37 zł", ImageUrl = "sandgren.jpg", SoulCost = 1500 }
        };

        BindingContext = this;
    }

    protected override void OnAppearing()
    {
        base.OnAppearing();
        Anims.StartPulse(eee);
        Anims.StartPulse(banger_real_totally_not_illegal_gambling);
        Anims.Shake(banger_real_totally_not_illegal_gambling);
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
