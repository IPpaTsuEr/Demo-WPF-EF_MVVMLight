using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Demo.DAL
{
    abstract class DALBase<T> where T:class
    {
        public DbContext dbContext;
        public DbSet<T> dbSet;

        public DALBase(DbContext dbContext, DbSet<T> dbSet)
        {
            this.dbContext = dbContext;
            this.dbSet = dbSet;
        }
        public void Insert(T t)
        {
            dbSet.Add(t);
        }
        public void Remove(T t)
        {
            dbSet.Remove(t);
        }
        public void Save()
        {
            dbContext.SaveChanges();
        }
        public virtual void Update(T t,bool InsertWhenNull = false)
        { }
    }
}
