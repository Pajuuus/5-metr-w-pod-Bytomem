using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using grobowiec.Classes;

namespace grobowiec;

public partial class TestPage : ContentPage
{
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