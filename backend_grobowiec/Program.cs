using Microsoft.EntityFrameworkCore;

var builder = WebApplication.CreateBuilder(args);


builder.Services.AddDbContext<AppDbContext>(options =>
    options.UseSqlite("Data Source=grobowiec.db"));

var app = builder.Build();


using (var scope = app.Services.CreateScope())
{
    var db = scope.ServiceProvider.GetRequiredService<AppDbContext>();
    db.Database.EnsureCreated();
}

const string API_KEY = "MojeTajneHaslo123!"; // Zmień na własny klucz

app.Use(async (context, next) =>
{
    if (!context.Request.Headers.TryGetValue("X-Api-Key", out var extractedKey) || extractedKey != API_KEY)
    {
        context.Response.StatusCode = 401;
        await context.Response.WriteAsync("Brak dostepu: Niepoprawny API Key");
        return;
    }
    await next();
});


app.MapGet("/api/items", async (AppDbContext db) => 
    await db.Items.ToListAsync());

app.MapPost("/api/items", async (AppDbContext db, Item item) =>
{
    db.Items.Add(item);
    await db.SaveChangesAsync();
    return Results.Created($"/api/items/{item.Id}", item);
});

app.Run();


public class Item
{
    public int Id { get; set; }
    public string Title { get; set; } = string.Empty;
    public string Description { get; set; } = string.Empty;
}

public class AppDbContext : DbContext
{
    public AppDbContext(DbContextOptions<AppDbContext> options) : base(options) { }
    public DbSet<Item> Items => Set<Item>();
}