using Demo.EF;
using GalaSoft.MvvmLight;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Demo.ViewModel
{
    public class ClassInfoViewModel:ViewModelBase
    {
        public ClassInfoViewModel() { }
        public ClassInfoViewModel(ClassInfo classInfo):this() { Update(classInfo); }

        public void Update() {
            Update(ClassInfo);
        }
        public void Update(ClassInfo classInfo) {
            ID = classInfo.ID;
            Name = classInfo.Name;
            Grade = classInfo.Grade;

            ClassInfo = classInfo;
        }


        private ClassInfo _ClassInfo;
        public ClassInfo ClassInfo { get { return _ClassInfo; } set { Set(ref _ClassInfo, value); } }

        private int _ID;
        public int ID { get { return _ID; } set { Set(ref _ID, value); } }

        private string _Name;
        public string Name { get { return _Name; } set { Set(ref _Name,value); } }

        private int _Grade;
        public int Grade { get { return _Grade; } set { Set(ref _Grade,value); } }
    }
}
