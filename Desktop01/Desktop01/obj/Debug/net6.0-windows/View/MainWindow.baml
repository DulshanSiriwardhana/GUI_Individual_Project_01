   M S B A M L   `   `   `  ����D  @Desktop01, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null%clr-namespace:Desktop01	Desktop01  5   	   9!clr-namespace:Desktop01.ViewModelDesktop01.ViewModel  6/       Desktop01.MainWindow   5   	   W SPresentationCore, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   )localclr-namespace:Desktop01     5   	   4local1!clr-namespace:Desktop01.ViewModel     6/     � WindowStartupLocation$  CenterScreen=�5   	    � Title$ 
MainWindow��5	   	   $	��550��6   $
��1000��6)    � AllowsTransparency$
 True��5
   	   
������  � WindowStyle$
 None=�5   	    � DataContext 5      &    Desktop01.ViewModel.MainWindowVM  5   
   .��5      � .+�5   
   � .+�5      ��  �� CornerRadius$ 50 50 50 50��6   ��5      �� 5       �� 
StartPoint$	 0 0&�6*    �� EndPoint$	 1 1&�6;   .��5      �  � Color$
 Cyan��6'   	 � Offset$	 0Q�65   � 5      $ 
Aquamarine��6'   $	 1Q�6;   5      5      �� 5      $��5q�6   
���   �$ 20��6=   $��332,20,28,22q�6O   ���#ffc3a0
 J� Opacity$	
 0.5Q�6z    J� Effect 5      3  -System.Windows.Media.Effects.DropShadowEffect  5         ShadowDepth$ 20Q�6'      Color$ Black��68   5      �� 5       $��   Registred Student List��6   
���   �$��25(�6L   $��504,40,0,470q�6Z   $
��Left=�5!      
������ $
��Bold"�6M   $	��300��6_   �� 5#      
���   �$��2q�6)   $ 20��6=   $��400 100 100 446q�6O   �� 5%      $��2q�6   
���   �$ 20��6=   $��352 140 45 360q�6O   
����� �$	
 0.5Q�6z   �� 5&      $
��Name��6   $��18(�6$   $
��Bold"�62   $��420,152,516,0q�6D   $	��Top=�6[   �� 5'      $	��Age��6   $��18(�6#   $
��Bold"�61   $��606,152,330,0q�6C   $	��Top=�6Z   �� 5(      $��Date of birth��6   $��18(�6-   $
��Bold"�6;   $��688,152,180,0q�6M   $	��Top=�6d   �� 5)      $	��GPA��6   $��18(�6#   $
��Bold"�61   $��856,152,80,0q�6C   $	��Top=�6Y   �� 5*      -   5         ��Name$ Listview��5*      $	��-17q�6)   $��350,239,46,36q�67   
������ ��5+      �� *Users+ �� UpdateSourceTrigger$ PropertyChanged=� �� SelectedItem 5,      �� *SelectedUser+$ PropertyChanged=���5.      �� 5/      .R�50      �� 
���   �$��2q�65   $ 20��51   %   $��10 0 0 0q�67   $��50��6I   
�������._�52      �� $	��600��6)   
������  �� Orientation$ 
Horizontal=�6O   $��Center=�53   -   $��Center=�6J   .+�54   "   �� $��50��6(   $��40��63   $��1q�6?   ��6J   �� *Image+�� 55   "   $
��Bold"�6k   $��14(�6}   $��10 0 0 0q�6�   $��Center=�6�   ��6,   �� *	FirstName+$ PropertyChanged=�6�   �� 56   "   $
��Bold"�6j   $��14(�6|   $��10 0 0 0q�6�   $��Center=�6�   ��6,   �� *
LastName+$ PropertyChanged=�6�   �� 57   "   $
��Bold"�6e   $��14(�6w   $��60 0 0 0q�6�   $��Center=�6�   ��6,   �� *Age+$ PropertyChanged=�6�   �� 58   "   $
��Bold"�6m   $��14(�6   $��70 0 0 0q�6�   $��Center=�6�   ��6,   �� *DateOfBirth+$ PropertyChanged=�6�   �� 59   "   $
��Bold"�6e   $��14(�6w   $��70 0 0 0q�6�   $��Center=�6�   ��6,   �� *GPA+$ PropertyChanged=�6�   5;      5=      5>      5@      5A      � 5C   
   .+�5D      �� $ 40 40 100 100��6   $	��300��62   $��10,10,690,400q�6>   $

 0.01Q�6U   ��5E      �� 5F      $	 0 0&�6*   $	 1 1&�6;   .��5G      � $ #daa520��6'   $	 0Q�67   � 5H      $ Beige��6'   $	 1Q�65   5I      5O      �� 5P      $��Student Mannager��6   
���   �$��30(�6C   $
��Bold"�6Q   
������ $��26,150,706,358q�6|   �� 5Q      $"��../images/LOGO_OF_RUHUNA.png��6   $��55,28,735,400q�6:    J� RenderTransformOrigin$ 0.376,0.482&�6Q   �� 5R      .+�5S      �� $��Add Student��6   $��60 220 740 10q�6U      ButtonDesign#��[  6l   
����� �$��50��6�   $	��200��6�   ��6/   �� *AddStudentCommand+6�   �� 5T      $��Edit Student Student��6   $��60 10 740 10q�6_   #��[  6u   
��� ���$��50��6�   $	��200��6�   ��68   �� *EditStudentCommand+6�   �� 5U      $��Delete Student��6   $��60 10 740 10q�6T   #��[  6j   ���#daa520$��50��6�   $	��200��6�   ��62   �� *DeleteCommand+6�   �� 5V      $
��Exit��6   $��60 10 740 10q�6H   #��[  6^   
���  ��$��50��6�   $	��200��6�   ��6(   �� *ExitCommand+6�   5W      5X      5Y      5Z      