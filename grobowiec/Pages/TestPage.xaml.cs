using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using grobowiec.Classes;

namespace grobowiec;

public partial class TestPage : ContentPage
{
    // Temporary solution
    public class Ussr
    {
        public string Username = "Marcin";
        public int Souls = 2137;
    }
    
    // nie wiem jak dziala "UserInfo.Current" ale wyglada na to ze tutaj nie dziala xd
    public Ussr User = new Ussr();
    
    public TestPage()
    {
        InitializeComponent();
    }
    
    private void OnKuruClicked(object? sender, EventArgs e)
    {
        Anims.BounceClickAsync(KuruToggleB);
        KuruGif.IsAnimationPlaying = !KuruGif.IsAnimationPlaying;
        KuruToggleB.Text = KuruGif.IsAnimationPlaying ? "Kurukuru" : "No kurukuru :c";
        SemanticScreenReader.Announce(KuruToggleB.Text);
    }
}