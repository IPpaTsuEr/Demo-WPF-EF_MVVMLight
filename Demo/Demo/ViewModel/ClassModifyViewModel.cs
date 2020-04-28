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
    public class ClassModifyViewModel:ViewModelBase
    {
        private string _Title;

        public string Title
        {
            get { return _Title; }
            set { Set(ref _Title, value); }
        }

        private bool _GradeEditable;
        public bool GradeEditable
        {
            get { return _GradeEditable; }
            set {  Set(ref _GradeEditable , value);}
        }


        private ClassInfo _OriginalClass = new ClassInfo();
        public ClassInfo OriginalClass {
            get { return _OriginalClass; }
            set {
                _OriginalClass = value;
                //RaisePropertyChanged("OriginalClass");
            } }


        public bool _SelectModel = false;
        public bool SelectModel { get { return _SelectModel; } set { _SelectModel = value;RaisePropertyChanged("SelectModel"); } }


        public ClassModifyViewModel()
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
