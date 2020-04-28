using Demo.EF;
using ExToolKit;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Shapes;

namespace Demo
{
    /// <summary>
    /// StudentInfoWindow.xaml 的交互逻辑
    /// </summary>
    public partial class StudentInfoWindow : ExWindow
    {
        

        public StudentInfoWindow()
        {
            InitializeComponent();
        }

        public void SetStudentInfo(StudentInfo studentInfo)
        {
           DataContext = studentInfo;
        }
        public StudentInfo GetStudentInfo()
        {
            return DataContext as StudentInfo;
        }

        private void Sure_Button_Click(object sender, RoutedEventArgs e)
        {
            DialogResult = true;
            this.Close();
        }
        private void Cancel_Button_Click(object sender,RoutedEventArgs e)
        {
            Close();
        }
    }
}
