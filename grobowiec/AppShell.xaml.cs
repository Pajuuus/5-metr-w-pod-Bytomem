namespace grobowiec;

public partial class AppShell : Shell
{
    public AppShell()
    {
        InitializeComponent();
        Routing.RegisterRoute(nameof(TestPage), typeof(TestPage));
        Routing.RegisterRoute(nameof(MainPage), typeof(MainPage));
    }

    private async void OnKuruClicked(object sender, EventArgs e)
    {
        FlyoutIsPresented = false;
        
        await GoToAsync(nameof(TestPage));
    }
    
    private async void OnHomeClicked(object sender, EventArgs e)
    {
        FlyoutIsPresented = false;
        
        await GoToAsync(nameof(MainPage));
    }
}