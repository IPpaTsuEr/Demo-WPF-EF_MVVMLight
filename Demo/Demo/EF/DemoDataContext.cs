using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Demo.EF
{
    class DemoDataContext : DbContext
    {
        public DemoDataContext():base("name = DemoConn"){

        }
        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            
            base.OnModelCreating(modelBuilder);
        }

        public DbSet<StudentInfo> students { get; set; }
        public DbSet<ClassInfo> classes { get; set; }
        public DbSet<Student_Class_Relation> relations { get; set; }

    }
}
