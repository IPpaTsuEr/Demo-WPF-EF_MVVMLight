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
    class StudentClassConvert : IValueConverter
    {
        public object Convert(object value, Type targetType, object parameter, CultureInfo culture)
        {
            if(value is string)
            {
                var data = ServiceLocator.Current.GetInstance<MainViewModel>();
                var result = (from classitem in data.Classes join relationItem in data.Relation on classitem.ID equals relationItem.ClassId where relationItem.StudentId == (int)value select classitem)?.ToList<ClassInfo>();
                if (result == null || result.Count == 0) return null;
                return string.Format("{0}", result.First().Name);
                //return (string)value;
            }
            return value;
        }

        public object ConvertBack(object value, Type targetType, object parameter, CultureInfo culture)
        {
            throw new NotImplementedException();
        }
    }
}
