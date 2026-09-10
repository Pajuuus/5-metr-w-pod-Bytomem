using System.Net.Http.Json;
using Grobowiec.Classes.Api;

namespace Grobowiec.Services;

public class ItemApiService
{
    private readonly HttpClient _httpClient;

    // Resolve localhost dynamically based on platform:
    // - Android Emulator uses 10.0.2.2
    // - Physical Android device uses localhost (with 'adb reverse tcp:5039 tcp:5039')
    // - Windows/Mac/Linux uses localhost
    public static string BaseUrl => DeviceInfo.Platform == DevicePlatform.Android
        ? (DeviceInfo.DeviceType == DeviceType.Physical ? "http://localhost:5039" : "http://10.0.2.2:5039")
        : "http://localhost:5039";

    public ItemApiService()
    {
        _httpClient = new HttpClient
        {
            BaseAddress = new Uri(BaseUrl),
            Timeout = TimeSpan.FromSeconds(10)
        };
    }

    public async Task<List<Item>> GetItemsAsync()
    {
        return await _httpClient.GetFromJsonAsync<List<Item>>("/api/items") ?? new();
    }

    public async Task<Item?> GetItemByIdAsync(int id)
    {
        return await _httpClient.GetFromJsonAsync<Item>($"/api/items/{id}");
    }

    public async Task<Item?> CreateItemAsync(Item item)
    {
        var response = await _httpClient.PostAsJsonAsync("/api/items", item);
        response.EnsureSuccessStatusCode();
        return await response.Content.ReadFromJsonAsync<Item>();
    }

    public async Task UpdateItemAsync(Item item)
    {
        var response = await _httpClient.PutAsJsonAsync($"/api/items/{item.Id}", item);
        response.EnsureSuccessStatusCode();
    }

    public async Task DeleteItemAsync(int id)
    {
        var response = await _httpClient.DeleteAsync($"/api/items/{id}");
        response.EnsureSuccessStatusCode();
    }

    // Coupons API
    public async Task<List<Coupon>> GetCouponsAsync()
    {
        return await _httpClient.GetFromJsonAsync<List<Coupon>>("/api/coupons") ?? new();
    }

    public async Task<Coupon?> CreateCouponAsync(Coupon coupon)
    {
        var response = await _httpClient.PostAsJsonAsync("/api/coupons", coupon);
        response.EnsureSuccessStatusCode();
        return await response.Content.ReadFromJsonAsync<Coupon>();
    }

    public async Task UseCouponAsync(int id)
    {
        var response = await _httpClient.PutAsync($"/api/coupons/{id}/use", null);
        response.EnsureSuccessStatusCode();
    }
}