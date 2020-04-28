using System;
using System.Collections.Generic;
using System.Globalization;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Data;

namespace Demo.Convert
{
    class BoolVsiableConvert : IValueConverter
    {
        public object Convert(object value, Type targetType, object parameter, CultureInfo culture)
        {
           if(value is bool) {
                if ((bool)value) return Visibility.Visible;
                else return Visibility.Collapsed;
            }
            return Visibility.Hidden;
        }

        public object ConvertBack(object value, Type targetType, object parameter, CultureInfo culture)
        {
            if(value is Visibility)
            {
                switch ((Visibility)value)
                {
                    case Visibility.Visible:
                        return true;
                    case Visibility.Hidden:
                        return null;
                    case Visibility.Collapsed:
                        return false;
                    default:
                        return null;
                }
            }
            return null;
        }
    }
}
