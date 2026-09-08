using System.ComponentModel;
using System.Runtime.CompilerServices;

namespace grobowiec.Classes;

public class PromoItem : INotifyPropertyChanged
{
    private string _title = string.Empty;
    private string _promoPrice = string.Empty;
    private string _oldPrice = string.Empty;
    private string _imageUrl = string.Empty;
    private int _soulCost = 500;
    private bool _isActivated;
    private string _couponCode = string.Empty;

    public string Title
    {
        get => _title;
        set { _title = value; OnPropertyChanged(); }
    }

    public string PromoPrice
    {
        get => _promoPrice;
        set { _promoPrice = value; OnPropertyChanged(); }
    }

    public string OldPrice
    {
        get => _oldPrice;
        set { _oldPrice = value; OnPropertyChanged(); }
    }

    public string ImageUrl
    {
        get => _imageUrl;
        set { _imageUrl = value; OnPropertyChanged(); }
    }

    public int SoulCost
    {
        get => _soulCost;
        set { _soulCost = value; OnPropertyChanged(); }
    }

    public bool IsActivated
    {
        get => _isActivated;
        set { _isActivated = value; OnPropertyChanged(); }
    }

    public string CouponCode
    {
        get => _couponCode;
        set { _couponCode = value; OnPropertyChanged(); }
    }

    public event PropertyChangedEventHandler? PropertyChanged;

    protected void OnPropertyChanged([CallerMemberName] string? propertyName = null)
    {
        PropertyChanged?.Invoke(this, new PropertyChangedEventArgs(propertyName));
    }
}
