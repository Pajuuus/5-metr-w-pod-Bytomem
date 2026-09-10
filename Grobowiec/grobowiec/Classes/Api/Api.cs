using System.Net.Http.Json;

namespace grobowiec.Classes.Api;

public class ApiService
{
    private readonly HttpClient _httpClient;

    // Use 10.0.2.2 for Android emulator, localhost for Linux desktop
    private static readonly string BaseUrl = DeviceInfo.Platform == DevicePlatform.Android 
        ? "http://10.0.2.2:5000" // Replace 5000 with your API's HTTP port
        : "http://localhost:5000";

    public ApiService(HttpClient httpClient)
    {
        _httpClient = httpClient;
        _httpClient.BaseAddress = new Uri(BaseUrl);
    }

    // GET: api/items
    public async Task<List<Item>> GetItemsAsync()
    {
        try
        {
            var items = await _httpClient.GetFromJsonAsync<List<Item>>("api/items");
            return items ?? new List<Item>();
        }
        catch (Exception ex)
        {
            Console.WriteLine($"API Error: {ex.Message}");
            return new List<Item>();
        }
    }

    // POST: api/items
    public async Task<bool> CreateItemAsync(Item item)
    {
        var response = await _httpClient.PostAsJsonAsync("api/items", item);
        return response.IsSuccessStatusCode;
    }
}