   M S B A M L   `   `   `  ���� ?  ;Demo, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullclr-namespace:DemoDemo  D @ExToolKit, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null8*clr-namespace:ExToolKit;assembly=ExToolKit	ExToolKit /clr-namespace:Demo.ViewModelDemo.ViewModel      Demo.StudentInfoWindow   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     @d2http://schemas.microsoft.com/expression/blend/2008     Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     $localclr-namespace:Demo     9ex*clr-namespace:ExToolKit;assembly=ExToolKit     -Viewclr-namespace:Demo.ViewModel       � WindowStartupLocation$  CenterScreen=� � 
ResizeMode$ NoResize=�   PrimaryBackground#��[    NormalForeground#��[ $	��340��$	��460�� � Title �� *Title+ � DataContext ��   Locator �� Source# [  �� Path$ Student�.���  � RowDefinitions �� $��32 ��� $
��Auto ��� $
��Auto ��� $
��Auto ��� $
��Auto ��� $
��Auto ��� $
��Auto ��� $
��Auto ��� $
��Auto ��� $��* � � ColumnDefinitions �� $��* ��� $
��Auto ��� $
��Auto ��� $
��Auto ��� $
��Auto ��� $��* �.+��� $��1��$��1��$��姓名��$
��5,10q��� $��2��$��1��$	��120��$��5q����� *studentInfo.Name+�� $��3��$��1��$��出生日期��$
��5,10q�(  "System.Windows.Controls.DatePicker  $��4��$��1��$	��5,0q�$	��120��$��Center=�   SelectedDate �� *studentInfo.DateOfBirth+�� $��1��$��3��$��性别��$
��5,10q��� $��2��$��3��$	��120��$��5q�"   Demo.ViewModel.MainViewModel	   
GenderType#��Z	 
 �� SelectedValue
 �� *studentInfo.Gender+  GenderConvert �� 	Converter# [ �� $��3��$��3��$��民族��$
��5,10q��� $��4��$��3��$��5q����� *studentInfo.Nation+�� $��1��$��5��$��籍贯��$
��5,10q��� $��2��$��5��$��5q����� *studentInfo.NativePlace+�� $��3��$��5��$��联系电话��$
��5,10q��� $��4��$��5��$��5q����� *studentInfo.Telephone+�� $��1��$��7��$��联系地址��$
��5,10q��� $��2��$��7��$��3��$��5q����� *studentInfo.Address+�� $��1��$��8��$��年级��$
��5,10q��� -    ��Name$ Select_Grade��$��2��$��8�� �� DisplayMemberPath$ Grade��$��5q����� *studentInfo.ID+  GradePulldownConvert# [  �� SelectedIndex ��  �� RelativeSource ��  �� Mode$
 Self=� �� Mode$ OneWay=�$ ItemsSource�  GradePullSelecteConvert# [  �� ConverterParameter$ FromStudent���� $��3��$��8��$��班级��$
��5,10q��� $��4��$��8��$
 Name��$��5q�����  �� ElementName$ Select_Grade��$ SelectedItem�  ClassPulldownConvert# [ 
 �� *	classInfo+$ TwoWay=���  �� Orientation$ 
Horizontal=�$��1��$��9��$��5��$��24��$��RightToLeft=�$
��10,0q�.+��� $��确定��$��64��  Sure_Button#��[ ���� *Submit+��`�   CommonMultiConverter `� 	Converter# [ .1���  ��  �� AncestorType$ WindowL��� $
 True���� $��32���� $��取消��$��32�� 	 Cancel_Button#��[	 ���� *Submit+��`� # [ .1���  �� $ WindowL��� $ False��