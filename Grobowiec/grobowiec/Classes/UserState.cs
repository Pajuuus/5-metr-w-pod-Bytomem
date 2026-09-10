namespace grobowiec.Classes;

public static class UserState
{
    public static UserInfo Current { get; } = new UserInfo
    {
        Username = "Marian",
        Souls = 2137
    };
}
