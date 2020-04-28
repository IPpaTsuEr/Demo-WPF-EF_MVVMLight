using Demo.EF;
using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Demo.DAL
{
    class ClassInfoDal:DALBase<ClassInfo>
    {
        public ClassInfoDal(DbContext dbContext,DbSet<ClassInfo> classInfos):base(dbContext, classInfos)
        {

        }
        public override void Update(ClassInfo t, bool InsertWhenNull = false)
        {
            var key = dbSet.Find(t.ID);
            var entry = dbContext.Entry(key);
            entry.CurrentValues.SetValues(t);
            entry.Property(pro => pro.ID).IsModified = false;
            Save();
        }
    }
}
