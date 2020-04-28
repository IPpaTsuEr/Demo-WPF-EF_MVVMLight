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
    class ClassPulldownConvert : IValueConverter
    {
        public object Convert(object value, Type targetType, object parameter, CultureInfo culture)
        {
            try
            {
                if (value is ClassInfo)
                {
                    var source = ServiceLocator.Current.GetInstance<MainViewModel>().Classes;
                    var key = (ClassInfo)value;
                    return (from item in source where item.Grade == key.Grade select item).ToList();
                }
            }catch(Exception eer)
            {
                Console.WriteLine(eer.Message);
            }

            return null;
        }

        public object ConvertBack(object value, Type targetType, object parameter, CultureInfo culture)
        {
            throw new NotImplementedException();
        }
    }
}
