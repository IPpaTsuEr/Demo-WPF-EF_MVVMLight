   M S B A M L   `   `   `  ���� ?  ;Demo, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullclr-namespace:DemoDemo  D @ExToolKit, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null8*clr-namespace:ExToolKit;assembly=ExToolKit	ExToolKit     Demo.ClassInfoWindow   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     @d2http://schemas.microsoft.com/expression/blend/2008     Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     $localclr-namespace:Demo     9ex*clr-namespace:ExToolKit;assembly=ExToolKit       � WindowStartupLocation$  CenterScreen=� � 
ResizeMode$ NoResize=�   PrimaryBackground#��[    NormalForeground#��[ $	��180��$	��400�� � Title �� *Title+ � DataContext ��   Locator �� Source# [  �� Path$ Class�.���  � ColumnDefinitions �� �� $
��Auto ��� $
��Auto ��� $
��Auto ��� $
��Auto ���  � RowDefinitions �� $��32 ��� $
��Auto ��� .+��� $��1��$��1��$��年级��$
��5,10q��� $��2��$��1��$	��120��$��5q����� *OriginalClass.Grade+{��� *GradeEditable+�� -    ��Name$ Grade_Combobox��$��2��$��1��$	��120��$	��1,5q�	 �� DisplayMemberPath$	 Grade��y��� *SelectModel+  BoolVsiableConvert
 �� 	Converter#
 [ ���� *OriginalClass+  GradePulldownConvert#
 [  �� SelectedIndex ��  �� RelativeSource ��  �� Mode$
 Self=� �� Mode$ OneWay=�$ ItemsSource�  GradePullSelecteConvert#
 [  �� ConverterParameter$ 	FromClass���� $��3��$��1��$��班级��$
��5,10q��� $��4��$��1��$	��120��$��5q����� *OriginalClass.Name+�� $��4��$��1��$	��120��$	��1,5q�$
	 Name��y��� *SelectModel+#
 [ ����  �� ElementName$ Grade_Combobox��$ SelectedItem�  ClassPulldownConvert#
 [  �� SelectedValue �� *OriginalClass+$ TwoWay=���  �� Orientation$ 
Horizontal=�$��1��$��2��$��5��$��24��$��RightToLeft=�$
��10,0q�.+��� $��确定��$��64��  Sure_Button#��[ ���� *Submit+��`�   CommonMultiConverter `� 	Converter# [ .1���  ��  �� AncestorType$ WindowL��� $
 True���� $��32���� $��取消��$��32�� 	 Cancel_Button#��[	 ���� *Submit+��`� # [ .1���  �� $ WindowL��� $ False��