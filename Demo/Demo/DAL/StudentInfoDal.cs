using Demo.EF;
using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Demo.DAL
{
    class StudentInfoDal:DALBase<StudentInfo>
    {

        public StudentInfoDal(DbContext dbContext,DbSet<StudentInfo> dbSet):base(dbContext,dbSet)
        {

        }
        //public void Insert(StudentInfo studentInfo)
        //{
        //    dbSet.Add(studentInfo);
        //    dbContext.SaveChanges();
        //}
        //public void Remove(StudentInfo studentInfo)
        //{
        //    dbSet.Remove(studentInfo);
        //    dbContext.SaveChanges();
        //}
        public override void Update(StudentInfo studentInfo, bool InsertWhenNull = false)
        {
            if (studentInfo == null) return;
            var key = dbSet.Find(studentInfo.ID);
            var entry = dbContext.Entry(key);
            entry.CurrentValues.SetValues(studentInfo);
            entry.Property(pro => pro.ID).IsModified = false;
            Save();
        }
    }
}
