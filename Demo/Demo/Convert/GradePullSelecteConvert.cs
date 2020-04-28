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
    class GradePullSelecteConvert : IValueConverter
    {
        public object Convert(object value, Type targetType, object parameter, CultureInfo culture)
        {
            try
            {
                if(value is IList<ClassInfo>)
                {
                    if(parameter is string)
                    {
                        if((string)parameter == "FromStudent")
                        {
                            var self = ServiceLocator.Current.GetInstance<StudentModifyViewModel>().classInfo;
                            if (self == null) return -1;
                            int index = 0;
                            foreach (var item in (IList<ClassInfo>)value)
                            {
                                if (item.Grade == self.Grade)
                                {
                                    return index;
                                }
                                index++;
                            }
                        }
                        else if((string)parameter == "FromClass")
                        {
                            var self = ServiceLocator.Current.GetInstance<ClassModifyViewModel>().OriginalClass;
                            if (self == null) return -1;
                            int index = 0;
                            foreach (var item in (IList<ClassInfo>)value)
                            {
                                if (item.Grade == self.Grade)
                                {
                                    return index;
                                }
                                index++;
                            }
                        }
                    }


                }
            }catch(Exception err)
            {
                Console.WriteLine(err.Message);
            }
            
            return -1;
        }

        public object ConvertBack(object value, Type targetType, object parameter, CultureInfo culture)
        {
            throw new NotImplementedException();
        }
    }
}
