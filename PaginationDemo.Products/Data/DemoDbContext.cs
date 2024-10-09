using Microsoft.EntityFrameworkCore;
using PaginationDemo.Products.Entities;

namespace PaginationDemo.Products.Data;

public class DemoDbContext : DbContext
{
    public DemoDbContext(DbContextOptions<DemoDbContext> options) : base(options) { }

    public DbSet<Product> Products { get; set; }
}
