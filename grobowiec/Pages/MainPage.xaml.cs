namespace grobowiec;

public partial class MainPage : ContentPage
{
    int count = 0;

    public MainPage()
    {
        InitializeComponent();
    }

    private void OnCounterClicked(object? sender, EventArgs e)
    {
        count++;

        if (count == 1)
            CounterBtn.Text = $"cocked {count} time";
        else
            CounterBtn.Text = $"cocked {count} times";

        SemanticScreenReader.Announce(CounterBtn.Text);
    }
}