using CommonServiceLocator;
using Demo.EF;
using GalaSoft.MvvmLight;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Demo.ViewModel
{
    public class StudentInfoViewModel:ViewModelBase
    {
        public StudentInfoViewModel() { }
        public StudentInfoViewModel(StudentInfo  studentInfo) :this(){ Update(studentInfo); }


        private StudentInfo _StudentInfo;
        public StudentInfo StudentInfo
        {
            get { return _StudentInfo; }
            set { Set(ref _StudentInfo); }
        }

        public void Update(StudentInfo studentInfo)
        {
            ID = studentInfo.ID;
            DateOfBirth = studentInfo.DateOfBirth;
            Name = studentInfo.Name;
            Gender = studentInfo.Gender;
            Age = studentInfo.Age;
            Nation = studentInfo.Nation;
            NativePlace = studentInfo.NativePlace;
            Address = studentInfo.Address;
            Telephone = studentInfo.Telephone;

            _StudentInfo = studentInfo;
            UpdateClassInfo();
        }
        public void Update()
        {
            Update(_StudentInfo);
        }
        public void UpdateClassInfo()
        {
            var data = ServiceLocator.Current.GetInstance<MainViewModel>();
            try
            {   
                ClassInfo = data.Classes.Where(c => c.ID == data.Relation.Where(i => i.StudentId == ID).ToList().FirstOrDefault().ClassId).ToList().FirstOrDefault();
            }catch(Exception er)
            {
                Console.WriteLine("更新学生班级信息出错 {0}",er.Message);
            }

        }

        private ClassInfo _ClassInfo;
        public ClassInfo ClassInfo { get { return _ClassInfo; } set { Set(ref _ClassInfo, value); } }

        private int _ID;
        public int ID { get{ return _ID; } set{ Set(ref _ID, value); } }

        private DateTime _DateOfBirth;
        public DateTime DateOfBirth { get { return _DateOfBirth; } set { Set(ref _DateOfBirth, value); } }

        private string _Name;
        public string Name { get { return _Name; } set { Set(ref _Name, value); } }

        private bool _Gender;
        public bool Gender { get { return _Gender; } set { Set(ref _Gender, value); } }

        private int _Age;
        public int Age { get { return _Age; } set { Set(ref _Age, value); } }

        private string _Nation;
        public string Nation { get { return _Nation; } set { Set(ref _Nation, value); } }

        private string _NativePlace;
        public string NativePlace { get { return _NativePlace; } set { Set(ref _NativePlace, value); } }

        private string _Address;
        public string Address { get { return _Address; } set { Set(ref _Address, value); } }

        private string _Telephone;
        public string Telephone { get { return _Telephone; } set { Set(ref _Telephone, value); } }
    }
}
