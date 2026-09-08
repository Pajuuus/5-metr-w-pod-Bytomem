using System.Collections.ObjectModel;
using grobowiec.Classes;

namespace grobowiec;

public partial class MainPage : ContentPage
{
    public UserInfo User { get; set; }
    
    public ObservableCollection<PromoItem> DailyPromos { get; set; }

    public MainPage()
    {
        InitializeComponent();

        User = new UserInfo
        {
            Username = "Marian",
            Souls = 8
        };

        DailyPromos = new ObservableCollection<PromoItem>
        {
            new PromoItem { Title = "Trumna1", PromoPrice = "tak zł", OldPrice = "0 zł", ImageUrl = "sandgren.jpg" },
            new PromoItem { Title = "Trumna2", PromoPrice = "2 zł", OldPrice = "1 zł", ImageUrl = "sandgren.jpg" },
            new PromoItem { Title = "Nagrobek1", PromoPrice = "6.99 zł", OldPrice = "-1 zł", ImageUrl = "dotnet_bot.png" },
            new PromoItem { Title = "Nagrobek2", PromoPrice = "4.20 zł", OldPrice = "21.37 zł", ImageUrl = "sandgren.jpg" }
        };

        BindingContext = this;
    }

    protected override void OnAppearing()
    {
        base.OnAppearing();
        Anims.StartPulse(eee);
    }

    protected override void OnDisappearing()
    {
        base.OnDisappearing();
        Anims.StopPulse(eee);
        eee.Scale = 1.0;
    }
}