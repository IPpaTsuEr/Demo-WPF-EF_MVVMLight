   M S B A M L   `   `   `  ����?  ;Demo, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null'clr-namespace:Demo.Style
Demo.Style  5      \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089   Grid_Head_Thumb  �� 
TargetType �� Property �� Value �� 
TargetType  Data_Grid_Row)   #System.Windows.Controls.DataGridRow  NormalForeground �� Triggers P� Property P� Value  PrimaryHeighLight  SecondaryHeighLight ]� 
Conditions �� Property	 �� Value  EvenBackground  OddBackground  Data_Grid_Cell*  $System.Windows.Controls.DataGridCell
 �� Triggers  SelectedForeground 	 Student_Data_Grid&   System.Windows.Controls.DataGrid 
 SecondaryBackground �� Padding J� SnapsToDevicePixels ��Name � ColumnDefinitions � RowDefinitions   SelectAllCommand7  1System.Windows.Controls.DataGridHeadersVisibility
   All �� ConverterParameter!   HeadersVisibilityConverter �� 	Converter �� RelativeSource �� AncestorTypeG  ASystem.Windows.Controls.Primitives.DataGridColumnHeadersPresenter  Name   Column ��Name �� CanContentScroll ��Name �� ScrollableHeight � Maximum �� Orientation* �� #ComputedVerticalScrollBarVisibility  �� ViewportHeight! �� ViewportSize" � Value# �� Mode$ �� ScrollableWidth,% �� %ComputedHorizontalScrollBarVisibility& �� ViewportWidth:  4System.Windows.Controls.Primitives.DataGridRowHeader=  7System.Windows.Controls.Primitives.DataGridColumnHeader' ��Name  	Icon_Text 	 Arrow  PrimaryBackground( J� RenderTransformOrigin) �� Angle* n�Name+ � Cursor, �� 
TargetName�� 5      D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    :x,http://schemas.microsoft.com/winfx/2006/xaml     5      "localclr-namespace:Demo.Style  5      %�  &	        &	 �     7  7  7  7  7  &	 �    7  &		 0    7  7 
 7  7  '  �    7  '  �    7  7  7  7  7   '  �    �� 5      "  n�6$   .�5   
   ��  � �� 5      �� 5	      " n�6"   .R�5
      �� #��z��6   #��z��5      #��z��5      #��z��5      5      5      5      5      �� 5      "    6"   .�5   
   ��  � ��8   6'   �� 5   
    � ��
 ���� 6'   �� 5   
    � ��$ 24��6#    5   
   P� 5       �@  
IsSelected . . �5      ��  � ��8  6/   5      P� 5       �@J�IsMouseOver . . �5       ��  � ��8  6/   5!      ]� 5#       5$      �� 5%       �@��AlternationIndex$	 0��6I   �� 5&       �@J�IsMouseOver	 .  67   �� 5'       �@  
IsSelected	 .  66   ./�5)      ��  � ��8  6/   5*      ]� 5+       5,      �� 5-       �@��AlternationIndex$	 1��6I   �� 5.       �@J�IsMouseOver	 .  67   �� 5/       �@  
IsSelected	 .  66   ./�51      ��  � ��8  6/   52      54      �� 57      "   6#   .�58   
   ��  � ��
 ���� 6'   �� 59   
    � ��
 ���� 6(   �� 5:   
    � ��$ Center=�67   �� 5;   
    � ��$ Center=�65   �� 5<   
    � ��$ Stretch=�60   �� 5=   
    � ��$ Stretch=�6.   �� 5>   
    � ��$ 0q�6,   �� 5?   
    � ��$ 0q�6#   �� 5@   
    � �� 5A      �� 5B      "  6"   .R�5C      �� #��z��6   #��z��5D      
������ ._�5F      �� #��z��6+   #��z��5G   +   6l   5H      
 5I      P� 5J       �@ 
IsSelected . . �5K      �� 8    � ��6;   5L      5N      5P      5Q      �� 5S      "   6&   .�5T   
   ��  �@ AutoGenerateColumns .  60   �� 5V   
    �@ SelectionMode$ Single=�6*   �� 5W   
    �@ SelectionUnit$ FullRow=�6*   �� 5Y   
    �@ CanUserSortColumns . 6/   �� 5Z   
    �@ CanUserReorderColumns . 62   �� 5[   
    �@ CanUserResizeColumns . 61   �� 5]   
    �@ CanUserAddRows .  6+   �� 5^   
    �@ CanUserDeleteRows .  6.   �� 5_   
    �@ CanUserResizeRows .  6.   �� 5a   
    �@ GridLinesVisibility$ 
Horizontal=�60   �� 5b   
     �@ HorizontalGridLinesBrush8   65   �� 5d   
    � ��8  6'   �� 5e   
    � ��
 ���� 6(   �� 5f   
    �@��AlternationCount$ 2��6-   �� 5g   
    � ��$ 14(�6%   �� 5i   
    �@ 	CellStyle8  6&   �� 5j   
    �@ RowStyle8  6%   �� 5k   
    � �� 5l      �� 5m      "  6"   .R�5n      �� #��z��6   #��z��5o      #��z��5p      # z��5q       . ._�5s      �� $ DG_ScrollViewer��6'   |�.  ��5t      �� 5u   "   " ��62   .R�5v   &   �  5w   *   �� 5x   .   $
��Auto �6?   �� 5y   .   $��* �6?   �� 5z   .   $
��Auto �6?    5|   *   �� 5}   .   $
��Auto �6<   �� 5~   .   $��* �6<   �� 5   .   $
��Auto �6<   .+�5�   *   �� #��Z 61   |�.  
������ $��1q�5�   1   ���	#3ff3f3f3y�5�   1   �� *HeadersVisibility+# Z # Z  �� "  ��5�   1   �� *CellsPanelHorizontalOffset+ �� "    5�   *   $! PART_ColumnHeadersPresenter��6I   $��1��6n   y�5�   I   �� *HeadersVisibility+# Z # Z  �� "  �� 5�   *   $! PART_ScrollContentPresenter��6A   # z��5�   A   $��2��5�   A   $��1��6U   �� 5�   *   $ PART_VerticalScrollBar��64   $��2��5�   4   $��1��6D   # z 5�   4   $ Vertical=�5�   4   #y�z 5�   4   #! z  5�   4   " 5�   4   �� *VerticalOffset+$# OneWay=� �� *TemplatedParent+5�   4   � 5�   *   $��1��6/   $��2��6?    5�   .   �� 5�   2   ��6C   �� **(NonFrozenColumnsViewportHorizontalOffset+ �� "  �� 5�   2   $��* �6C   .+�5�   .   �� $ PART_HorizontalScrollBar��68   $��1��6Z   # z$ 5�   8   $ 
Horizontal=�5�   8   #y�z% 5�   8   #! z& 5�   8   " 5�   8   �� *HorizontalOffset+$# OneWay=� �� *TemplatedParent+5�   8   5�   +   5�   '   5�   #   .��5�      �� # z 6-   5�      5�      5�      5�      5�      �� 5�      "   6   .�5�   
   ��  � ��$ 34��6"   �� 5�   
    �@�Cursor$
 Hand��6#   �� 5�   
    � ��
 ���� 6'   �� 5�   
    � ��8   6(   �� 5�   
    � ��$ 0,0,0,1q�6,   5�      �� 5�      "   6   .�5�   
   ��  � ��$ 24��6#   �� 5�   
    � ��$ 14(�6%   �� 5�   
    � ��8   6'   �� 5�   
    � �� �	#3ff3f3f36(   �� 5�   
    � ��$ 1q�6,   �� 5�   
    � ��
 ���� 6'   �� 5�   
    � �� 5�      �� 5�      "  6"   .R�5�      �� #��z��6   #��z��5�      #��z��5�      ._�5�      �  5�      �� 5�   "   �� 5�   "   $
��Auto �63   �� 5�   "   $
��Auto �63   .+�5�      �� $��Center=�6/   $��Center=�6L   �� 5�      $' 
Arraw_Text��69   $��1��6(   8�� 8�� $��10(�5�   (   8�� $( 0.5,0.5&�6f   z�5�   "   �� 5�   &   $	) 180Q�66   5�      n� 5�      $* PART_RightHeaderGripper��6$   $��2��6E   8�� $��2��5�   M   $+ SizeWE��5�   $   $��0q�64   
������ 6H   5�      5�      
 5�      P� 5�       �@ SortDirection$ 	AscendingX�6;   . �5�      �� $, 
Arraw_Text��6@    � z� 5�   "   �� 5�   &   $) 0Q�66   5�      5�      P� 5�       �@ SortDirection$ 
DescendingX�6;   . �5�      �� $, 
Arraw_Text��6F    �@��Angle$	 180Q�6^   5�      5�      5�       5�   
   P� 5�       �@J�IsMouseOver . 6-   5�      �� 5�      "   6   .�5�   
   ��  � �� 5�      �� 5�      "  6"   .R�5�      �� $��0q�6   ._�5�      �� 5�      5�      5�      5�      5�      