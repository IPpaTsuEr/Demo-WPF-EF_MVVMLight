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
    class GradePulldownConvert : IValueConverter
    {
        public object Convert(object value, Type targetType, object parameter, CultureInfo culture)
        {
            try
            {
                if(value is int)
                {
                    var source = ServiceLocator.Current.GetInstance<MainViewModel>();
                    return source.Classes.GroupBy(i => i.Grade).Select(s => s.First()).ToList();
                }
                else if( value is ClassInfo)
                {
                    var source = ServiceLocator.Current.GetInstance<MainViewModel>();
                    return source.Classes.GroupBy(i => i.Grade).Select(s => s.First()).ToList();
                }
            }
            catch(Exception err)
            {
                Console.WriteLine(err.Message);
            }

            return null;
        }

        public object ConvertBack(object value, Type targetType, object parameter, CultureInfo culture)
        {
            throw new NotImplementedException();
        }
    }
}
