   M S B A M L   `   `   `  ����?  ;Demo, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullclr-namespace:DemoDemo  5   	   D @ExToolKit, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null8*clr-namespace:ExToolKit;assembly=ExToolKit	ExToolKit 5   	       Demo.ClassInfoWindow   5      \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   $localclr-namespace:Demo     5   	   9ex*clr-namespace:ExToolKit;assembly=ExToolKit     5   	     � WindowStartupLocation$  CenterScreen=�5
       � 
ResizeMode$ NoResize=�5         PrimaryBackground#��[  5        NormalForeground#��[ 5      $	��180��5      $	��400��6    � Title 5	   	   �� *Title+ � DataContext 5      �� 5   
     Locator �� Source# [ 6    �� Path$ Class�64   .��5      �  � ColumnDefinitions 5   
   �� 5      �� 5      $
��Auto �6   �� 5      $
��Auto �6   �� 5      $
��Auto �6   �� 5      $
��Auto �6   �� 5       � RowDefinitions 5   
   �� 5      $��32 �6   �� 5      $
��Auto �6   �� 5      .+�5#   
   �� $��1��6   $��1��6$   $��年级��61   $
��5,10q�6;   �� 5$   
   $��2��6   $��1��6"   $	��120��60   $��5q�6b   ��6=   �� *OriginalClass.Grade+{�5%      �� *GradeEditable+�� 5'   
   -   5         ��Name$ Grade_Combobox��5'   K   $��2��6   $��1��6$   $	��120��62   $	��1,5q�6>   	 �� DisplayMemberPath$	 Grade��5+      y�5(      �� *SelectModel+  BoolVsiableConvert
 �� 	Converter#
 [ ��5)      �� *OriginalClass+  GradePulldownConvert#
 [  �� SelectedIndex 5*      ��  �� RelativeSource ��  �� Mode$
 Self=� �� Mode$ OneWay=�$ ItemsSource�  GradePullSelecteConvert#
 [  �� ConverterParameter$ 	FromClass��5+      �� 5.   
   $��3��6   $��1��6$   $��班级��61   $
��5,10q�6;   �� 5/   
   $��4��6   $��1��6"   $	��120��6/   $��5q�6_   ��6;   �� *OriginalClass.Name+6_   �� 50   
   $��4��6   $��1��6$   $	��120��62   $	��1,5q�6>   $
	 Name��54      y�51      �� *SelectModel+#
 [ ��52      ��  �� ElementName$ Grade_Combobox��$ SelectedItem�  ClassPulldownConvert#
 [  �� SelectedValue 53      �� *OriginalClass+$ TwoWay=�54      �� 56   
    �� Orientation$ 
Horizontal=�6   $��1��6.   $��2��6>   $��5��6K   $��24��6_   $��RightToLeft=�6k   $
��10,0q�6�   .+�58      �� $��确定��6   $��64��6"     Sure_Button#��[ 6-   ��6R   �� *Submit+��59      `� 5:        CommonMultiConverter `� 	Converter# [ 6#   .1�5;      ��  6"   ��  �� AncestorType$ WindowL��� 5<      $
 True��6"   5=      5?      �� 5A      $��32��6   6"   �� 5C      $��取消��6   $��32��6"    	 Cancel_Button#��[	 6-   ��6T   �� *Submit+��5D      `� 5E      # [ 6#   .1�5F      ��  6"   �� $ WindowL��� 5G      $ False��6"   5H      5J      5K      5L      5M      