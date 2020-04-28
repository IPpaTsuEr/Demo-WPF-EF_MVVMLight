using Demo.EF;
using GalaSoft.MvvmLight;
using GalaSoft.MvvmLight.Command;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;

namespace Demo.ViewModel
{
    public class StudentModifyViewModel:ViewModelBase
    {
        private string _Title;

        public string Title
        {
            get { return _Title; }
            set
            {
                if (value != _Title)
                {
                    Set(ref _Title,value);
                }
            }
        }


        private StudentInfo _StudentInfo;
        public StudentInfo studentInfo {
            get { return _StudentInfo; }
            set { _StudentInfo = value;
                //RaisePropertyChanged("studentInfo");
            } }

        private ClassInfo _ClassInfo;
        public ClassInfo classInfo {
            get { return _ClassInfo; }
            set { _ClassInfo = value;
                //RaisePropertyChanged("classInfo");
            }
        }

        public StudentModifyViewModel()
        {
            Submit = new RelayCommand<object[]>(_F_Submit);
        }

        public RelayCommand<object[]> Submit { get; set; }

        private void _F_Submit(object[] para)
        {
            if (para.Count() != 2) return;
            var target = (Window)para[0];
            var result = System.Convert.ToBoolean(para[1]);

            if (result)
            {
                target.DialogResult = true;
            }
            target.Close();
        }

    }
}
