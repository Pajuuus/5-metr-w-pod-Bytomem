using GrobowiecWeb.Models;

namespace GrobowiecWeb.Data;
using Microsoft.EntityFrameworkCore;

public class AppDbContext : DbContext
{
    public AppDbContext(DbContextOptions<AppDbContext> options) : base(options) { }
    public DbSet<Item> TodoItems => Set<Item>();
    public DbSet<Coupon> Coupons => Set<Coupon>();
}