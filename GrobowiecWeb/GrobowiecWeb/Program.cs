using GrobowiecWeb.Data;
using GrobowiecWeb.Models;
using Microsoft.EntityFrameworkCore;

var builder = WebApplication.CreateBuilder(args);

// Register SQLite (creates app.db in the project directory)
builder.Services.AddDbContext<AppDbContext>(options =>
    options.UseSqlite("Data Source=app.db"));

var app = builder.Build();

// Auto-create database schema on app start
using (var scope = app.Services.CreateScope())
{
    var db = scope.ServiceProvider.GetRequiredService<AppDbContext>();
    db.Database.EnsureCreated();
}

// API Endpoints
app.MapGet("/api/items", async (AppDbContext db) => 
    await db.TodoItems.ToListAsync());

app.MapPost("/api/items", async (Item item, AppDbContext db) =>
{
    db.TodoItems.Add(item);
    await db.SaveChangesAsync();
    return Results.Created($"/api/items/{item.Id}", item);
});

app.Run();