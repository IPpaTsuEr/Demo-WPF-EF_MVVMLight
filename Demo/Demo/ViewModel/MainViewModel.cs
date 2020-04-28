using CommonServiceLocator;
using Demo.DAL;
using Demo.EF;
using GalaSoft.MvvmLight;
using GalaSoft.MvvmLight.Command;
using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Data.Entity;
using System.Linq;
using System.Threading.Tasks;
using System.Windows.Controls;

namespace Demo.ViewModel
{
    /// <summary>
    /// This class contains properties that the main View can data bind to.
    /// <para>
    /// Use the <strong>mvvminpc</strong> snippet to add bindable properties to this ViewModel.
    /// </para>
    /// <para>
    /// You can also use Blend to data bind with the tool's support.
    /// </para>
    /// <para>
    /// See http://www.galasoft.ch/mvvm
    /// </para>
    /// </summary>
    public class MainViewModel : ViewModelBase
    {
        #region combobox����Դ
        public static List<string> GenderType { get; } = new List<string>() { "��", "Ů" };
        public static List<string> SearchType { get; } = new List<string>() { "����", "ѧ��","��ַ","�绰","�꼶" };
        #endregion
        
        private Demo.EF.DemoDataContext _EFDataContext = new EF.DemoDataContext();

        //���ݷ��ʲ����ʵ��
        private StudentInfoDal _StudentInfoDal;
        private RelationShipDal _RelationShipDal;
        private ClassInfoDal _ClassInfoDal;

        #region ����ͼ����Դ
        //DataGrid ����Դ
        public ObservableCollection<StudentInfoViewModel> StudentList { get; set; } = new ObservableCollection<StudentInfoViewModel>();
        //Listview ����Դ
        public ObservableCollection<ClassInfoViewModel> ClassList { get; set; } = new ObservableCollection<ClassInfoViewModel>();


        public ObservableCollection<Demo.EF.StudentInfo> Students {
            get {
                _EFDataContext.students.Load();
                return _EFDataContext.students.Local;
            }
        }
        public ObservableCollection<Demo.EF.ClassInfo> Classes {
            get {
                _EFDataContext.classes.Load();
                return _EFDataContext.classes.Local;
            }
        }
        public DbSet<Student_Class_Relation> Relation {
            get {
                _EFDataContext.relations.Load();
                return _EFDataContext.relations;
            }
        }
        
        #endregion
       
        /// <summary>
        /// Initializes a new instance of the MainViewModel class.
        /// </summary>
        public MainViewModel()
        {
            ////if (IsInDesignMode)
            ////{
            ////    // Code runs in Blend --> create design time data.
            ////}
            ////else
            ////{
            ////    // Code runs "for real"
            ////}
            Task.Run(() =>
            {
                try
                {
                    _EFDataContext.Database.CreateIfNotExists();
                }
                catch (System.Exception e)
                {
                    System.Console.WriteLine(e.Message);
                }
                var s = Students;
                var c = Classes;
                var r = Relation;
            }).ContinueWith(r=> {
                App.Current.Dispatcher.BeginInvoke( 
                    new Action( () => {
                        RefreshData();
                        RefreshClassData();
                    }));
            });

            _StudentInfoDal = new StudentInfoDal(_EFDataContext, _EFDataContext.students);
            _ClassInfoDal = new ClassInfoDal(_EFDataContext,_EFDataContext.classes);
            _RelationShipDal = new RelationShipDal(_EFDataContext, _EFDataContext.relations);

            AddStudent = new RelayCommand(_F_AddStudent);
            MultiDeleteStudent = new RelayCommand<object>(_F_MultiDeleteStudent);
            DeleteStudent = new RelayCommand<StudentInfoViewModel>(_F_DeleteStudent);
            UpdateStudent = new RelayCommand<StudentInfoViewModel>(_F_UpdateStudent);
            MultyMode = new RelayCommand<DataGrid>(_F_MultyModeChange);
            SendTo = new RelayCommand<object>(_F_SendToClass);

            AddClass = new RelayCommand(_F_AddClassInfo);
            UpdateClass = new RelayCommand<ClassInfoViewModel>(_F_ModifyClassInfo);
            RemoveClass = new RelayCommand<ClassInfoViewModel>(_F_RemoveClassInfo);

            DataChange = new RelayCommand<object[]>(_F_DataResourceChange);

        }


        #region ��ͼ�������
        private bool _EditModel = false;
        public bool EditModel {
            get { return _EditModel; }
            set { _EditModel = value;RaisePropertyChanged("EditModel"); } }

        private bool _ClassEditModel = false;
        public bool ClassEditModel {
            get { return _ClassEditModel; }
            set { _ClassEditModel = value;RaisePropertyChanged("ClassEditModel"); } }

        private bool _MultiSelectModel = false;
        public bool MultiSelectModel {
            get { return _MultiSelectModel; }
            set { _MultiSelectModel = value; RaisePropertyChanged("MultiSelectModel");  } }

        #endregion


        #region ѧ����Ϣ����

        public RelayCommand AddStudent { get; set; }
        public RelayCommand<StudentInfoViewModel> DeleteStudent { get; set; }
        public RelayCommand<object> MultiDeleteStudent { get; set; }
        public RelayCommand<StudentInfoViewModel> UpdateStudent { get; set; }
        
        public RelayCommand<object> SendTo { get; set; }

        private void _F_AddStudent()
        {
            var sInstance = ServiceLocator.Current.GetInstance<StudentModifyViewModel>();
            sInstance.studentInfo  = new StudentInfo();
            sInstance.classInfo  = Classes.FirstOrDefault();
            if (sInstance.classInfo == null) return;
            sInstance.Title = "���ѧ����Ϣ";
            StudentInfoWindow studentInfoWindow = new StudentInfoWindow();
            
            studentInfoWindow.ShowDialog();
            if (studentInfoWindow.DialogResult==true)
            {
                var target = sInstance.studentInfo;
                target.Age = DateTime.Now.Year - target.DateOfBirth.Year;
                _StudentInfoDal.Insert(target);
                _StudentInfoDal.Save();
                _RelationShipDal.Insert(new Student_Class_Relation() { StudentId = sInstance.studentInfo.ID, ClassId = sInstance.classInfo.ID });
                _RelationShipDal.Save();
                StudentList.Add(new StudentInfoViewModel(target));
            }
            
        }
        private void _F_MultiDeleteStudent(object students)
        {
            var list = ((System.Collections.IList)students)?.Cast<StudentInfoViewModel>();
            if (list == null || list.Count() == 0) return;

            var rlist = (from sitem in list from re in Relation where sitem.ID == re.StudentId select re).ToList();

            foreach (var item in list)
            {
                _StudentInfoDal.Remove(item.StudentInfo);
            }
            _StudentInfoDal.Save();

            foreach (var item in rlist)
            {
                _RelationShipDal.Remove(item);
            }
            _RelationShipDal.Save();
            RefreshData();
        }
        private void _F_DeleteStudent(StudentInfoViewModel s)
        {
            if (s == null) return;

            _StudentInfoDal.Remove(s.StudentInfo);
            var target = (from item in Relation where item.StudentId == s.ID select item).ToList();
            if(target!=null || target.Count > 0)
            {
                foreach (var ritem in target)
                {
                    _RelationShipDal.Remove(ritem);
                }
                _StudentInfoDal.Save();
                StudentList.Remove(s);
            }
        }
        private void _F_UpdateStudent(StudentInfoViewModel s)
        {
            var sInstance = ServiceLocator.Current.GetInstance<StudentModifyViewModel>();
            sInstance.studentInfo = s.StudentInfo;
            sInstance.Title = "�޸�ѧ����Ϣ";
            sInstance.classInfo = ( from citem in _EFDataContext.classes
                                    from item in _EFDataContext.relations
                                    where item.StudentId == s.ID && item.ClassId == citem.ID
                                    select citem).ToList()?.FirstOrDefault();

            StudentInfoWindow studentInfoWindow = new StudentInfoWindow();
            
            studentInfoWindow.ShowDialog();
            if (studentInfoWindow.DialogResult == true)
            {
                _StudentInfoDal.Update(s.StudentInfo);
                var target = (from item in Relation where item.StudentId == s.ID select item).ToList();
                if(target!=null && target.Count > 0)
                {
                    target[0].ClassId = sInstance.classInfo.ID;
                    _RelationShipDal.Update(target[0]);
                }
                else
                {
                    _RelationShipDal.Insert(new Student_Class_Relation() { StudentId = s.ID,ClassId=sInstance.classInfo.ID });
                }

                _StudentInfoDal.Save();
                _RelationShipDal.Save();

                s.Update();
                //RefreshData();
                //RaisePropertyChanged("Students");
            }

        }

        private void _F_SendToClass(object students)
        {
            var list = ((System.Collections.IList)students)?.Cast<StudentInfoViewModel>();
            if (list == null || list.Count() == 0) return;

            var cInstatnce = ServiceLocator.Current.GetInstance<ClassModifyViewModel>();
            cInstatnce.OriginalClass = _EFDataContext.classes.Local.FirstOrDefault();
            if (cInstatnce.OriginalClass == null) {
                //��ѡ�༶�б�Ϊ��
                return;
            }
            cInstatnce.SelectModel = true;
            cInstatnce.Title = "�����ƶ�ѧ����ָ���༶";
            ClassInfoWindow ciw = new ClassInfoWindow();
            ciw.ShowDialog();
            if (ciw.DialogResult == true)
            {
                var c = cInstatnce.OriginalClass;
                foreach (var item in list)
                {
                   _RelationShipDal.Update(new Student_Class_Relation() { StudentId = item.ID, ClassId = c.ID },true);
                    
                }
                _RelationShipDal.Save();

                foreach (var item in list)
                {
                    item.UpdateClassInfo();
                }
            }
            
        }

        public RelayCommand<DataGrid> MultyMode { get; set; }

        private void _F_MultyModeChange(DataGrid dg)
        {
            if (dg.SelectionMode == DataGridSelectionMode.Extended)
            {
                dg.SelectionMode = DataGridSelectionMode.Single;
                MultiSelectModel = false;
            }
            else
            {
                dg.SelectionMode = DataGridSelectionMode.Extended;
                MultiSelectModel = true;
            }
        }
        #endregion


        #region �༶��Ϣ����


        public RelayCommand AddClass { get; set; }
        public RelayCommand<ClassInfoViewModel> UpdateClass { get; set; }
        public RelayCommand<ClassInfoViewModel> RemoveClass { get; set; }

        private void _F_AddClassInfo()
        {
            var cInstatnce = ServiceLocator.Current.GetInstance<ClassModifyViewModel>();
            cInstatnce.OriginalClass = new ClassInfo();
            cInstatnce.SelectModel = false;
            cInstatnce.GradeEditable = true;
            cInstatnce.Title = "��Ӱ༶��Ϣ";
            ClassInfoWindow ciw = new ClassInfoWindow();
            ciw.ShowDialog();
            if (ciw.DialogResult == true)
            {
                var c = cInstatnce.OriginalClass;
                _ClassInfoDal.Insert(c);
                _ClassInfoDal.Save();
                ClassList.Add(new ClassInfoViewModel(c));
                //ClassList.OrderBy(a => a.Grade).ThenBy(b=>b.Name);
            }
        }
        private void _F_ModifyClassInfo(ClassInfoViewModel classInfo)
        {
            var cInstatnce = ServiceLocator.Current.GetInstance<ClassModifyViewModel>();
            cInstatnce.OriginalClass = classInfo.ClassInfo;
            cInstatnce.SelectModel = false;
            cInstatnce.GradeEditable = false;
            cInstatnce.Title = "�޸İ༶��Ϣ";
            ClassInfoWindow ciw = new ClassInfoWindow();
            ciw.ShowDialog();
            if (ciw.DialogResult == true)
            {
                _ClassInfoDal.Update(cInstatnce.OriginalClass);
                _ClassInfoDal.Save();
                classInfo.Update(cInstatnce.OriginalClass);
                //ClassList.OrderBy(a => a.Grade).ThenBy(b => b.Name);
            }
            var tStudent = StudentList.Where(s => s.ClassInfo.ID == cInstatnce.OriginalClass.ID).FirstOrDefault();
            tStudent?.UpdateClassInfo();
        }
        private void _F_RemoveClassInfo(ClassInfoViewModel classInfo)
        {
            var list = (from item in _EFDataContext.relations where item.ClassId == classInfo.ID select item).ToList();
            //ɾ����༶��Ӧ��ѧ��-�༶��ϵ��¼
            foreach (var relation in list)
            {
                _RelationShipDal.Remove(relation);
            }
            _ClassInfoDal.Remove(classInfo.ClassInfo);
            _RelationShipDal.Save();
            ClassList.Remove(classInfo);
            //RefreshData();
        }
        #endregion

        #region DataGrid����Դ�л�

        public RelayCommand<object[]> DataChange { get; set; }

        private void _F_DataResourceChange(object[] obj)
        {
            if (obj != null)
            {
                if (!(obj[0] is DataGrid host)) return;

                if (obj.Count() == 2)
                {
                    //�Ӱ༶����ѧ����Ϣʱ���µ�����Դ�仯
                    if (obj[1] is ClassInfoViewModel)
                    {
                        var target = obj[1] as ClassInfoViewModel;
                        var list = (from item in _EFDataContext.students join classes in _EFDataContext.relations on item.ID equals classes.StudentId where classes.ClassId == target.ID select item)?.ToList();
                        RefreshData(list);

                    }
                    //�˻�ѧ����Ϣ��ҳ��������Դ�仯
                    else if (obj[1] is string)
                    {
                        //host.ItemsSource = Students;
                        
                        RefreshData();
                        RefreshClassData();
                    }
                }
                //��ѯ���µ�����Դ�仯
                else if(obj.Count()==3)
                {
                    if(obj[1] is string && obj[2] is string)
                    {
                        var key  = obj[1] as string;
                        var type = obj[2] as string;
                        if (string.IsNullOrWhiteSpace(key)) return;
                        switch (type)
                        {
                            case "����":
                                RefreshData(_EFDataContext.students.Where(p => p.Name.IndexOf(key) >= 0).ToList());
                                break;
                            case "ѧ��":
                                try
                                {
                                    int keyid = System.Convert.ToInt32(key);
                                    RefreshData((from item in _EFDataContext.students
                                                       where item.ID == keyid select item).ToList());
                                }
                                finally
                                {

                                }
                                break;
                            case "��ַ":
                                RefreshData(_EFDataContext.students.Where(p => p.Address.IndexOf(key) >= 0).ToList());
                                break;
                            case "�绰":
                                RefreshData((from item in _EFDataContext.students where item.Telephone.IndexOf(key) >= 0 select item).ToList());
                                break;
                            case "�꼶":
                                try
                                {
                                    int gradeid = System.Convert.ToInt32(key);
                                    RefreshData((from ritem in _EFDataContext.relations
                                                        from sitem in _EFDataContext.students
                                                        from citem in _EFDataContext.classes
                                                        where citem.Grade == gradeid
                                                        && ritem.StudentId == sitem.ID
                                                        && ritem.ClassId == citem.ID
                                                        select sitem).ToList());
                                }
                                finally
                                {

                                }
                                break;
                            default:

                                break;
                        }
                    }
                }
            }
        }

        private void RefreshData()
        {
                StudentList.Clear();
                foreach (var item in Students)
                {
                    StudentList.Add(new StudentInfoViewModel(item));
                }
                //_DataCollectioner.GetBindingExpression(DataGrid.ItemsSourceProperty)?.UpdateTarget();
        }

        private void RefreshData(IList<StudentInfo> list)
        {
                StudentList.Clear();
                foreach (var item in list)
                {
                    StudentList.Add(new StudentInfoViewModel(item));
                }
                //_DataCollectioner.GetBindingExpression(DataGrid.ItemsSourceProperty)?.UpdateTarget();
        }

        private void RefreshClassData()
        {
            ClassList.Clear();
            foreach (var item in Classes)
            {
                ClassList.Add(new ClassInfoViewModel(item));
            }
        }
        #endregion

    }
}