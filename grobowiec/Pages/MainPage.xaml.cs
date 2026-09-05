using System.Collections.ObjectModel;
using grobowiec.Classes;

namespace grobowiec;

public partial class MainPage : ContentPage
{
    int count = 0;
    
    public ObservableCollection<PromoItem> DailyPromos { get; set; }

    public MainPage()
    {
        InitializeComponent();
        
        DailyPromos = new ObservableCollection<PromoItem>
        {
            new PromoItem { Title = "Trumna1", PromoPrice = "tak zł", OldPrice = "0 zł", ImageUrl = "dotnet_bot.png" },
            new PromoItem { Title = "Trumna2",   PromoPrice = "2 zł", OldPrice = "1 zł", ImageUrl = "dotnet_bot.png" },
            new PromoItem { Title = "Nagrobek1",     PromoPrice = "6.99 zł",  OldPrice = "-1 zł", ImageUrl = "dotnet_bot.png" },
            new PromoItem { Title = "Nagrobek2",     PromoPrice = "4.20 zł",  OldPrice = "21.37 zł",  ImageUrl = "dotnet_bot.png" }
        };
        
        BindingContext = this;
        
    }
    //
    // private void OnCounterClicked(object? sender, EventArgs e)
    // {
    //     count++;
    //
    //     if (count == 1)
    //         CounterBtn.Text = $"cocked {count} time";
    //     else
    //         CounterBtn.Text = $"cocked {count} times";
    //
    //     SemanticScreenReader.Announce(CounterBtn.Text);
    // }
}