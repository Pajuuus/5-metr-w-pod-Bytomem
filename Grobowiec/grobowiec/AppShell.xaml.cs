using grobowiec.Pages;

namespace grobowiec;

public partial class AppShell : Shell
{
    public AppShell()
    {
        InitializeComponent();
        Routing.RegisterRoute(nameof(TestPage), typeof(TestPage));
        Routing.RegisterRoute(nameof(MainPage), typeof(MainPage));
        Routing.RegisterRoute(nameof(ItemPage), typeof(ItemPage));

        CurrentItem = MainTab;
    }
}
