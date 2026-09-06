using System.ComponentModel;
using System.Runtime.CompilerServices;

namespace grobowiec.Classes;

public class UserInfo
{
    private string _username;
    private int _souls;

    public string Username
    {
        get => _username;
        set
        {
            if (_username != value)
            {
                _username = value;
                OnPropertyChanged();
            }
        }
    }

    public int Souls
    {
        get => _souls;
        set
        {
            if (_souls != value)
            {
                _souls = value;
                OnPropertyChanged();
            }
        }
    }

    public event PropertyChangedEventHandler? PropertyChanged;

    protected void OnPropertyChanged([CallerMemberName] string? propertyName = null)
    {
        PropertyChanged?.Invoke(this, new PropertyChangedEventArgs(propertyName));
    }
}