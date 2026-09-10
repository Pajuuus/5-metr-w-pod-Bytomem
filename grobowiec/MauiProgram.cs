using Microsoft.Extensions.Logging;

namespace grobowiec;

public static class MauiProgram
{
    public static MauiApp CreateMauiApp()
    {
        var builder = MauiApp.CreateBuilder();
        builder
            .UseMauiApp<App>()
            .ConfigureFonts(fonts =>
            {
                // fonts.AddFont("OpenSans-Regular.ttf", "OpenSansRegular");
                // fonts.AddFont("OpenSans-Semibold.ttf", "OpenSansSemibold");
                // fonts.AddFont("Lexend-Light.ttf", "LexendLight");
                fonts.AddFont("Robto-Bold.ttf", "OpenSansRegular");
                fonts.AddFont("Robto-Bold.ttf", "LexendLight");
            });

#if DEBUG
        builder.Logging.AddDebug();
        builder.Logging.SetMinimumLevel(LogLevel.Warning);
#endif

        return builder.Build();
    }
}