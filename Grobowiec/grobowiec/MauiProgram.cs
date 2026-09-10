using grobowiec.Classes;
using grobowiec.Classes.Api;
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
        
        // Select the base address based on the target platform:
        // Android Emulator uses 10.0.2.2 to access host machine's localhost
        string baseAddress = DeviceInfo.Platform == DevicePlatform.Android
            ? "http://10.0.2.2:5000/"  // Replace 5000 with your API port
            : "http://localhost:5000/";

        builder.Services.AddHttpClient<ApiService>();
        builder.Services.AddTransient<MainPage>();

        #if DEBUG
            builder.Logging.AddDebug();
            builder.Logging.SetMinimumLevel(LogLevel.Warning);
        #endif
        
        return builder.Build();
    }
}