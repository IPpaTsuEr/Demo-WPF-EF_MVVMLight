using CommonServiceLocator;
using Demo.EF;
using Demo.ViewModel;
using System;
using System.Collections.Generic;
using System.Globalization;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Data;

namespace Demo.Convert
{
    class StudentGradeConvert : IValueConverter
    {
        public object Convert(object value, Type targetType, object parameter, CultureInfo culture)
        {
            if (value is int)
            {
                //通过ID查询
                var data = ServiceLocator.Current.GetInstance<MainViewModel>();
                var result = (from classitem in data.Classes join relationItem in data.Relation on classitem.ID equals relationItem.ClassId where relationItem.StudentId == (int)value select classitem)?.ToList<ClassInfo>();
                if (result == null || result.Count == 0) return null;
                return string.Format("{0}年级 {1}", result.First().Grade, result.First().Name);
            }
            else if (value is ClassInfo)
            {
                //通过包装后的viewmodel直接获取
                var classinfo = (ClassInfo)value;
                return string.Format("{0}年级 {1}", classinfo.Grade, classinfo.Name);
            }
            return null;
        }

        public object ConvertBack(object value, Type targetType, object parameter, CultureInfo culture)
        {
            throw new NotImplementedException();
        }
    }
}
