using Microsoft.EntityFrameworkCore;
using Microsoft.Identity.Client;



namespace SchoolManagementSystem.Models
{
    public class SchoolDBContext : DbContext
    {

        public SchoolDBContext(DbContextOptions<SchoolDBContext> options) : base(options)
        {

        }

        public DbSet<Student> Students { get; set; }

    }
}
