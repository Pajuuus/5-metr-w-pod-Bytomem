using System.Collections.ObjectModel;
using grobowiec.Classes;

namespace grobowiec;

public partial class MainPage : ContentPage
{
    public UserInfo User { get; set; }
    public ObservableCollection<PromoItem> DailyPromos { get; set; }

    public Daily_Case_Promotion_Item Daily_Promotion { get; set; }
    protected List<Daily_Case_Promotion_Item> promotion_list;

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

        promotion_list = new List<Daily_Case_Promotion_Item>()
        {
            new Daily_Case_Promotion_Item("wioskowy cmentarz", "1 duszek na twoje konto", Rarity.Common, 20),
            new Daily_Case_Promotion_Item("miejski cmentarz", "3 duszki na twoje konto", Rarity.Rare, 10),
            new Daily_Case_Promotion_Item("ostatni poczęstunek", "10% rabatu na pogrzeb lub kremację, do wykorzystania w przeciągu 1 tygodnia", Rarity.Rare, 10),
            new Daily_Case_Promotion_Item("Dar z niebios", "21.37% rabatu na pogrzeb lub kremację, do wykorzystania w przeciągu 1 tygodnia", Rarity.Epic, 5),
            
        };
        BindingContext = this;
    }
    private void OnDrawPromotionClicked(object sender, EventArgs e)
    {
        Daily_Case_Drop quest = new Daily_Case_Drop();
        Daily_Promotion = quest.Draw_Promotion(promotion_list);
        BindingContext = null;
        BindingContext = this;
    }
}