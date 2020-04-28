using Demo.EF;
using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Demo.DAL
{
    class RelationShipDal:DALBase<Student_Class_Relation>
    {
        public RelationShipDal(DbContext dbContext, DbSet<Student_Class_Relation> dbSet) : base(dbContext,dbSet)
        {

        }
        public override void Update(Student_Class_Relation t,bool InsertWhenNull = false)
        {
            var key = dbSet.Find(t.StudentId);
            if (key == null)
            {
                if (InsertWhenNull)
                {
                    Insert(t);
                }
                Console.WriteLine("没有找到关系{1}-->{0}",t.StudentId,t.ClassId);
            }
            else
            {
                var entry = dbContext.Entry(key);
                entry.CurrentValues.SetValues(t);
                entry.Property(pro => pro.StudentId).IsModified = false;
                Save();
            }

        }
    }
}
