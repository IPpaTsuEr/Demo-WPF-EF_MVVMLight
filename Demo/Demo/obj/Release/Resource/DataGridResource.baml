   M S B A M L   `   `   `  ���� ?  ;Demo, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null'clr-namespace:Demo.Style
Demo.Style  \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089   Grid_Head_Thumb  �� 
TargetType �� Property �� Value �� 
TargetType  Data_Grid_Row)   #System.Windows.Controls.DataGridRow  NormalForeground �� Triggers P� Property P� Value  PrimaryHeighLight  SecondaryHeighLight ]� 
Conditions �� Property	 �� Value  EvenBackground  OddBackground  Data_Grid_Cell*  $System.Windows.Controls.DataGridCell
 �� Triggers  SelectedForeground 	 Student_Data_Grid&   System.Windows.Controls.DataGrid 
 SecondaryBackground �� Padding J� SnapsToDevicePixels ��Name � ColumnDefinitions � RowDefinitions   SelectAllCommand7  1System.Windows.Controls.DataGridHeadersVisibility
   All �� ConverterParameter!   HeadersVisibilityConverter �� 	Converter �� RelativeSource �� AncestorTypeG  ASystem.Windows.Controls.Primitives.DataGridColumnHeadersPresenter  Name   Column ��Name �� CanContentScroll ��Name �� ScrollableHeight � Maximum �� Orientation* �� #ComputedVerticalScrollBarVisibility  �� ViewportHeight! �� ViewportSize" � Value# �� Mode$ �� ScrollableWidth,% �� %ComputedHorizontalScrollBarVisibility& �� ViewportWidth:  4System.Windows.Controls.Primitives.DataGridRowHeader=  7System.Windows.Controls.Primitives.DataGridColumnHeader' ��Name  	Icon_Text 	 Arrow  PrimaryBackground( J� RenderTransformOrigin) �� Angle* n�Name+ � Cursor, �� 
TargetName�� D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    :x,http://schemas.microsoft.com/winfx/2006/xaml     "localclr-namespace:Demo.Style  %�  &	        &	 L     7  7  7  7  7  &	     7  &		 g    7  7 
 7  7  '  �	    7  '  D
    7  7  7  7  7   '  �    �� "  n�.���  � �� �� " n�.R��� #��z��#��z��#��z��#��z���� "    .���  � ��8   ��  � ��
 ���� ��  � ��$ 24�� P�  �@  
IsSelected . . ���  � ��8  P�  �@J�IsMouseOver . . ���  � ��8  ]�  ��  �@��AlternationIndex$	 0����  �@J�IsMouseOver	 .  ��  �@  
IsSelected	 .  ./���  � ��8  ]�  ��  �@��AlternationIndex$	 1����  �@J�IsMouseOver	 .  ��  �@  
IsSelected	 .  ./���  � ��8  �� "   .���  � ��
 ���� ��  � ��
 ���� ��  � ��$ Center=���  � ��$ Center=���  � ��$ Stretch=���  � ��$ Stretch=���  � ��$ 0q���  � ��$ 0q���  � �� �� "  .R��� #��z��#��z��
������ ._��� #��z��#��z��
 P�  �@ 
IsSelected . . ��� 8    � ���� "   .���  �@ AutoGenerateColumns .  ��  �@ SelectionMode$ Single=���  �@ SelectionUnit$ FullRow=���  �@ CanUserSortColumns . ��  �@ CanUserReorderColumns . ��  �@ CanUserResizeColumns . ��  �@ CanUserAddRows .  ��  �@ CanUserDeleteRows .  ��  �@ CanUserResizeRows .  ��  �@ GridLinesVisibility$ 
Horizontal=���   �@ HorizontalGridLinesBrush8   ��  � ��8  ��  � ��
 ���� ��  �@��AlternationCount$ 2����  � ��$ 14(���  �@ 	CellStyle8  ��  �@ RowStyle8  ��  � �� �� "  .R��� #��z��#��z��#��z��# z�� . ._��� $ DG_ScrollViewer��|�.  ���� " ��.R��  �� $
��Auto ��� $��* ��� $
��Auto � �� $
��Auto ��� $��* ��� $
��Auto �.+��� #��Z |�.  
������ $��1q����	#3ff3f3f3y��� *HeadersVisibility+# Z # Z  �� "  ���� *CellsPanelHorizontalOffset+ �� "    $! PART_ColumnHeadersPresenter��$��1��y��� *HeadersVisibility+# Z # Z  �� "  �� $! PART_ScrollContentPresenter��# z��$��2��$��1���� $ PART_VerticalScrollBar��$��2��$��1��# z $ Vertical=�#y�z #! z  " �� *VerticalOffset+$# OneWay=� �� *TemplatedParent+� $��1��$��2�� �� ���� **(NonFrozenColumnsViewportHorizontalOffset+ �� "  �� $��* �.+��� $ PART_HorizontalScrollBar��$��1��# z$ $ 
Horizontal=�#y�z% #! z& " �� *HorizontalOffset+$# OneWay=� �� *TemplatedParent+.���� # z �� "   .���  � ��$ 34����  �@�Cursor$
 Hand����  � ��
 ���� ��  � ��8   ��  � ��$ 0,0,0,1q��� "   .���  � ��$ 24����  � ��$ 14(���  � ��8   ��  � �� �	#3ff3f3f3��  � ��$ 1q���  � ��
 ���� ��  � �� �� "  .R��� #��z��#��z��#��z��._��  �� �� $
��Auto ��� $
��Auto �.+��� $��Center=�$��Center=��� $' 
Arraw_Text��$��1��8�� 8�� $��10(�8�� $( 0.5,0.5&�z��� $	) 180Q�n� $* PART_RightHeaderGripper��$��2��8�� $��2��$+ SizeWE��$��0q�
������ 
 P�  �@ SortDirection$ 	AscendingX�. ��� $, 
Arraw_Text�� � z� �� $) 0Q�P�  �@ SortDirection$ 
DescendingX�. ��� $, 
Arraw_Text�� �@��Angle$	 180Q� P�  �@J�IsMouseOver . �� "   .���  � �� �� "  .R��� $��0q�._��� 