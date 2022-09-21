using Microsoft.EntityFrameworkCore;
using Projex___HBO_ICT_IT_Solutions.Models;

namespace Projex___HBO_ICT_IT_Solutions.Data
{
    public class AppDbContext:DbContext
    {
        public AppDbContext(DbContextOptions<AppDbContext> contextOptions)
            : base(contextOptions)
        {

        }
        
        public DbSet<Projects> Projects { get; set; }
        public DbSet<Users> Users  { get; set; }
    }
}
