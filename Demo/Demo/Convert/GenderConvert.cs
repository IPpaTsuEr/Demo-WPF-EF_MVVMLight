using System;
using System.Collections.Generic;
using System.Globalization;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Data;

namespace Demo.Convert
{
    class GenderConvert : IValueConverter
    {
        public object Convert(object value, Type targetType, object parameter, CultureInfo culture)
        {
            if(value is bool)
            {
                if ((bool)value) return "男";
                else return "女";
            }
            return value;
        }

        public object ConvertBack(object value, Type targetType, object parameter, CultureInfo culture)
        {
           if(value is string)
            {
                string v = value as string;
                if (!string.IsNullOrWhiteSpace(v))
                {
                    if (v.CompareTo("男") == 0) return true;
                    if (v.CompareTo("女") == 0) return false;
                }
            }
            return true;
        }
    }
}
