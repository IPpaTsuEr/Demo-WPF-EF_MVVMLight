   M S B A M L   `   `   `  ���� D  @ExToolKit, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null8*clr-namespace:ExToolKit;assembly=ExToolKit	ExToolKit  c _System.Windows.Interactivity, Version=4.5.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35qPclr-namespace:System.Windows.Interactivity;assembly=System.Windows.InteractivitySystem.Windows.Interactivity R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R8clr-namespace:System.ComponentModel;assembly=WindowsBaseSystem.ComponentModel ? ;Demo, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullclr-namespace:DemoDemo /clr-namespace:Demo.ViewModelDemo.ViewModel    Demo.MainWindow   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     @d2http://schemas.microsoft.com/expression/blend/2008     Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     9ex*clr-namespace:ExToolKit;assembly=ExToolKit     ^iPclr-namespace:System.Windows.Interactivity;assembly=System.Windows.Interactivity     Hscm8clr-namespace:System.ComponentModel;assembly=WindowsBase     $localclr-namespace:Demo     -viewclr-namespace:Demo.ViewModel       � Title$
  Demo��$	��450��$	��800�� � WindowStartupLocation$ CenterScreen=�   NormalForeground#��[    PrimaryBackground#��[  � DataContext ��   Locator �� Source# [  �� Path$
 Main� � 	Resources   Class_Grouped �� Source �� GroupDescriptions2  ,System.Windows.Data.PropertyGroupDescription   PropertyName	 �� SortDescriptions+  %System.ComponentModel.SortDescription
   PropertyName��%`   &	       ��  �� *	ClassList+   $ Grade��	   $
 Grade��  $

 Name��.���  � ColumnDefinitions �� $��3* ��� $��3 ��� $	��10* � � RowDefinitions �� $��* ��� $
��Auto �.+��  �� $
��Auto ��� .+�� $��32��$��0q�  SecondaryBackground#��[  �� $
��Auto ��� $��* ��� $
��Auto �.+�d�  � ToolTip$ 编辑模式��$��16��$��26��  Switch_Toggle_Button#��[  d� 	IsChecked �� *ClassEditModel+ �� Mode$ TwoWay=��� $��2��$ 新增班级��$	��6,0q�$��24�� � Cursor$
 Hand������ *
AddClass+����   	Icon_Text#��[   Add#��[ 
 � Tag$ Access���� -    ��Name$ 	List_View��$��1��  
Class_List#��[  	 Class_List_Data#��[	  
 Class_List_Item#��[
 ���� # [ .  (System.Windows.Interactivity.Interaction   Triggers /  )System.Windows.Interactivity.EventTrigger     	EventName$ SelectionChanged��.  (System.Windows.Interactivity.TriggerBase   Actions. 6  0System.Windows.Interactivity.InvokeCommandAction     Command �� *
DataChange+   CommandParameter `�   CommonMultiConverter `� 	Converter# [ .1���  �� ElementName$ 	Data_Grid���� $ 	List_View��$ SelectedItem� �� 
GroupStyle (  "System.Windows.Controls.GroupStyle    List_Group_Style   ContainerStyle# [ �� $��1��
������ $��0q�$��Stretch=�$��Stretch=�� $��2�� �� $
��Auto ��� .+�� $��32��#��[  �� $
��Auto ��� $��* ��� $
��Auto �.+���  �� Orientation$ 
Horizontal=�.+��� $��30��$ 返回到总列表������ *
DataChange+��`� # [ .1��� $ 	Data_Grid���� $  ������ #��[   Home#��[ $ Access���� $��12���� $��4��$ 添加学生信息��$��32������ *
AddStudent+���� #��[   AddUser#��[ $ Access���� $��12��d� $��5��  MultiSelect_Toggle_Button#��[ $! 多选、单选模式切换��$��32������ *	MultyMode+���� $ 	Data_Grid���� $ 
Horizontal=�y��� *MultiSelectModel+  BoolVsiableConvert �� 	Converter# [ .+��� $��6��$! 删除选定的学生信息��$��32������ *MultiDeleteStudent+���� $ 	Data_Grid��$ SelectedItems����� #��[   MultiDelUser#��[ $ Warring���� $��7��$ 移动到指定班级��$��32������ *SendTo+���� $ 	Data_Grid��$ SelectedItems����� #��[   MultiMoveUser#��[ $ Access���� $��2��$ 
Horizontal=�$��4q�#��[ .+��� #��[ ���� *
DataChange+��`� # [ .1��� $ 	Data_Grid���� $ Search_Text��$
 Text��� $ Search_Type��$ SelectedValue�.���� $ 
Horizontal=�.+��� #��[  
 Search#��[ $	��4,1q�$ Access���� -    ��Name$ Search_Type��$��14��$��24��#��[ "  Demo.ViewModel.MainViewModel   
SearchType#��Z   �� SelectedIndex$  0��$��0q�$��Center=�$��Center=����� .R��� ���� *DataContext+! �� RelativeSource! �� " �� Mode$" TemplatedParent=�# �� StringFormat$#  按 {0} 查询������ $ �� 
TargetType"$ ��.R�� .+�d� % �� 	ClickMode$% Press=�  Transparent_Toggle_Button#��[  �� *IsDropDownOpen+! �� $" TemplatedParent=�.���� $��12(�#��[  	 Arrow#��[ & J� RenderTransformOrigin$& 0.5,0.5&�z��� ' �� Angle$	' 180Q�� ( �� IsDropDownOpen#��z( ) � AllowsTransparency) . .���� #��z��$��	0,0,15,15q�* J� Effect* 3	  -System.Windows.Media.Effects.DropShadowEffect	  + 	  Color$+ Black��, 	  
BlurRadius$, 5Q�- 	  ShadowDepth$- 6Q�._��� $��0q�. J� SnapsToDevicePixels. . $
��Auto=�$
��Auto=�.���� / K� IsItemsHost/ . #��[  -
  'System.Windows.Input.KeyboardNavigation0 
  DirectionalNavigation$0 	Contained=�$	��2,4q��� -   1 ��Name$1 Search_Text��$	��200��$��0q�#��[ #��[  2 �� 
CaretBrush#2 [  $��Center=�$��24��$��Center=�$��6,0,0,0q�.��3 J� InputBindings3 �� 
4 �� Key$4 Return��5 �� Command5 �� *
DataChange+6 �� CommandParameter6 `� # [ .1��� $ 	Data_Grid���� $ Search_Text��$
 Text��� $ Search_Type��$ SelectedValue�.��&   System.Windows.Controls.DataGrid  -   $��	Data_Grid��$��1��  Student_Data_Grid#��[ ���� *StudentList+���� 7 �� 
TargetType)  #System.Windows.Controls.DataGridRow"7  .��� 8 �� Property8 � ��9 �� Value$9 42���� 8 � ��$9 32��:   Columns: 0  *System.Windows.Controls.DataGridTextColumn  ,  &System.Windows.Controls.DataGridColumn;   Header$; 学号��<   Width5  /System.Windows.Controls.DataGridLengthConverter$< * =   MinWidth$= 32Q�>   SortMemberPath$> ID��?   
IsReadOnly? . 1  +System.Windows.Controls.DataGridBoundColumn@   Binding@ �� *ID+  $; 姓名��$< * $= 32Q�$
> Name��? . @ �� *Name+  $; 年龄��$< * $= 32Q�$	> Age��? . @ �� *Age+4  .System.Windows.Controls.DataGridComboBoxColumn  $; 性别��$< * $= 32Q�? . A   
GenderTypeB   ItemsSource#B ZA C   SelectedValueBindingC �� *Gender+  GenderConvert# [   $; 班级��$< * $= 32Q�$> ClassInfo.Grade��? . @ �� *	ClassInfo+  StudentGradeConvert# [   $; 民族��$< * $> Nation��? . @ �� *Nation+  $; 籍贯��$< * $> NativePlace��? . @ �� *NativePlace+  $; 联系地址��$< * $> Address��? . @ �� *	Address+  $; 联系电话��$< * $> 	Telephone��? . @ �� *	Telephone+4  .System.Windows.Controls.DataGridTemplateColumn  $
< Auto $= 70Q�; d� $ 编辑模式��#��[ $��18��$��26�� �� *DataContext.EditModel+! �� D �� AncestorType$D WindowL�$ TwoWay=�E   	CellStyleE �� *  $System.Windows.Controls.DataGridCell"7  .��� 8 � ��
9 ���� �� 8 � ��$9 0q�F   CellTemplateF �� .R��� $ 
Horizontal=�$
��10,0q�y��� *DataContext.EditModel+! �� $D WindowL�# [ .+��� $ 修改������ *DataContext.UpdateStudent+! �� $D WindowL����� ���� #��[   Edit#��[ $
 Open���� $��16���� $ 删除��$��2������ *DataContext.DeleteStudent+! �� $D WindowL����� ���� #��[   DelUser#��[ $ Warring���� $��1��$��0��$��32��$��3��$��Stretch=�$��Center=�.���� $ 
Horizontal=�$��Center=�
�������.+��� $��单击��$��14(��� #��[ #��[   AccessForeground#��[ �� $��刷新数据 打开 ��$��14(��� #��[   MultiSelect#��[   OpenedForeground#��[ �� $D��>呼出隐藏菜单 使用Shift+鼠标单击 实现多选操作��$��14(�