   M S B A M L   `   `   `  ����?  ;Demo, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullclr-namespace:DemoDemo  5   	   D @ExToolKit, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null8*clr-namespace:ExToolKit;assembly=ExToolKit	ExToolKit 5   	   /clr-namespace:Demo.ViewModelDemo.ViewModel  5   	       Demo.StudentInfoWindow   5      \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   $localclr-namespace:Demo     5   	   9ex*clr-namespace:ExToolKit;assembly=ExToolKit     5   	   -Viewclr-namespace:Demo.ViewModel     5   	     � WindowStartupLocation$  CenterScreen=�5
       � 
ResizeMode$ NoResize=�5         PrimaryBackground#��[  5        NormalForeground#��[ 5      $	��340��5   !   $	��460��6.    � Title 6	   �� *Title+ � DataContext 5      �� 5   
     Locator �� Source# [ 6    �� Path$ Student�64   .��5      �  � RowDefinitions 5   
   �� 5      $��32 �6   �� 5      $
��Auto �6   �� 5      $
��Auto �6   �� 5      $
��Auto �6   �� 5      $
��Auto �6   �� 5      $
��Auto �6   �� 5      $
��Auto �6   �� 5      $
��Auto �6   �� 5      $
��Auto �6   �� 5      $��* �6    � ColumnDefinitions 5   
   �� 5       $��* �6   �� 5!      $
��Auto �6   �� 5"      $
��Auto �6   �� 5#      $
��Auto �6   �� 5$      $
��Auto �6   �� 5%      $��* �6   .+�5(   
   �� $��1��6   $��1��6$   $��姓名��61   $
��5,10q�6;   �� 5)   
   $��2��6   $��1��6"   $	��120��6/   $��5q�6<   ��6G   �� *studentInfo.Name+�� 5+   
   $��3��6   $��1��6$   $��出生日期��61   $
��5,10q�6=   (  "System.Windows.Controls.DatePicker  5,   
   $��4��6   $��1��6%   $	��5,0q�6c   $	��120��6p   $��Center=�6}      SelectedDate 62   �� *studentInfo.DateOfBirth+6}   �� 5.   
   $��1��6   $��3��6$   $��性别��61   $
��5,10q�6;   �� 5/   
   $��2��6   $��3��6#   $	��120��60   $��5q�6=   "   Demo.ViewModel.MainViewModel	   
GenderType#��Z	 50      
 �� SelectedValue
 51      �� *studentInfo.Gender+  GenderConvert �� 	Converter# [ �� 53   
   $��3��6   $��3��6$   $��民族��61   $
��5,10q�6;   �� 54   
   $��4��6   $��3��6"   $��5q�6S   ��6/   �� *studentInfo.Nation+6S   �� 56   
   $��1��6   $��5��6$   $��籍贯��61   $
��5,10q�6;   �� 57   
   $��2��6   $��5��6"   $��5q�6X   ��6/   �� *studentInfo.NativePlace+6X   �� 59   
   $��3��6   $��5��6$   $��联系电话��61   $
��5,10q�6=   �� 5:   
   $��4��6   $��5��6"   $��5q�6V   ��6/   �� *studentInfo.Telephone+6V   �� 5<   
   $��1��6   $��7��6$   $��联系地址��61   $
��5,10q�6=   �� 5=   
   $��2��6   $��7��6"   $��3��6/   $��5q�6h   ��6C   �� *studentInfo.Address+6h   �� 5?   
   $��1��6   $��8��6$   $��年级��61   $
��5,10q�6;   �� 5@   
   -   5         ��Name$ Select_Grade��5@   0   $��2��6   $��8��6#    �� DisplayMemberPath$ Grade��5G      $��5q�5H      ��5A      �� *studentInfo.ID+  GradePulldownConvert# [  �� SelectedIndex 5B      ��  �� RelativeSource ��  �� Mode$
 Self=� �� Mode$ OneWay=�$ ItemsSource�  GradePullSelecteConvert# [  �� ConverterParameter$ FromStudent��5H      �� 5J   
   $��3��6   $��8��6$   $��班级��61   $
��5,10q�6;   �� 5K   
   $��4��6   $��8��6#   $
 Name��5N      $��5q�5P      ��5L      ��  �� ElementName$ Select_Grade��$ SelectedItem�  ClassPulldownConvert# [ 
 5O      �� *	classInfo+$ TwoWay=�5P      �� 5R   
    �� Orientation$ 
Horizontal=�6   $��1��5S      $��9��6%   $��5��62   $��24��6F   $��RightToLeft=�5T      $
��10,0q�61   .+�5V      �� $��确定��6   $��64��6"     Sure_Button#��[ 6-   ��6R   �� *Submit+��5W      `� 5X        CommonMultiConverter `� 	Converter# [ 6#   .1�5Y      ��  6"   ��  �� AncestorType$ WindowL��� 5Z      $
 True��6"   5[      5]      �� 5_      $��32��6   6"   �� 5a      $��取消��6   $��32��6"    	 Cancel_Button#��[	 6-   ��6T   �� *Submit+��5b      `� 5c      # [ 6#   .1�5d      ��  6"   �� $ WindowL��� 5e      $ False��6"   5f      5h      5i      5l      5m      