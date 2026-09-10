using GrobowiecWeb.Data;
using GrobowiecWeb.Models;
using Microsoft.EntityFrameworkCore;

var builder = WebApplication.CreateBuilder(args);

builder.Services.AddOpenApi();

var connectionString = builder.Configuration.GetConnectionString("DefaultConnection") ?? "Data Source=app.db";
builder.Services.AddDbContext<AppDbContext>(options =>
    options.UseSqlite(connectionString));

builder.Services.AddCors(options =>
{
    options.AddDefaultPolicy(policy =>
    {
        policy.AllowAnyOrigin().AllowAnyHeader().AllowAnyMethod();
    });
});

var app = builder.Build();

if (app.Environment.IsDevelopment())
{
    app.MapOpenApi();
}

app.UseCors();

using (var scope = app.Services.CreateScope())
{
    var db = scope.ServiceProvider.GetRequiredService<AppDbContext>();
    db.Database.EnsureCreated();
}

var items = app.MapGroup("/api/items");

items.MapGet("/", async (AppDbContext db) =>
    Results.Ok(await db.TodoItems.ToListAsync()));

items.MapGet("/{id:int}", async (int id, AppDbContext db) =>
    await db.TodoItems.FindAsync(id) is { } item
        ? Results.Ok(item)
        : Results.NotFound());

items.MapPost("/", async (Item item, AppDbContext db) =>
{
    db.TodoItems.Add(item);
    await db.SaveChangesAsync();
    return Results.Created($"/api/items/{item.Id}", item);
});

items.MapPut("/{id:int}", async (int id, Item updated, AppDbContext db) =>
{
    var item = await db.TodoItems.FindAsync(id);
    if (item is null) return Results.NotFound();

    item.Title = updated.Title;
    item.IsCompleted = updated.IsCompleted;
    await db.SaveChangesAsync();
    return Results.NoContent();
});

items.MapDelete("/{id:int}", async (int id, AppDbContext db) =>
{
    var item = await db.TodoItems.FindAsync(id);
    if (item is null) return Results.NotFound();

    db.TodoItems.Remove(item);
    await db.SaveChangesAsync();
    return Results.NoContent();
});

var coupons = app.MapGroup("/api/coupons");

coupons.MapGet("/", async (AppDbContext db) =>
    Results.Ok(await db.Coupons.OrderByDescending(c => c.PurchasedAt).ToListAsync()));

coupons.MapGet("/{id:int}", async (int id, AppDbContext db) =>
    await db.Coupons.FindAsync(id) is { } coupon
        ? Results.Ok(coupon)
        : Results.NotFound());

coupons.MapPost("/", async (Coupon coupon, AppDbContext db) =>
{
    if (coupon.PurchasedAt == default)
    {
        coupon.PurchasedAt = DateTime.UtcNow;
    }
    db.Coupons.Add(coupon);
    await db.SaveChangesAsync();
    return Results.Created($"/api/coupons/{coupon.Id}", coupon);
});

coupons.MapPut("/{id:int}/use", async (int id, AppDbContext db) =>
{
    var coupon = await db.Coupons.FindAsync(id);
    if (coupon is null) return Results.NotFound();

    coupon.IsUsed = true;
    await db.SaveChangesAsync();
    return Results.NoContent();
});

coupons.MapDelete("/{id:int}", async (int id, AppDbContext db) =>
{
    var coupon = await db.Coupons.FindAsync(id);
    if (coupon is null) return Results.NotFound();

    db.Coupons.Remove(coupon);
    await db.SaveChangesAsync();
    return Results.NoContent();
});

app.Run();