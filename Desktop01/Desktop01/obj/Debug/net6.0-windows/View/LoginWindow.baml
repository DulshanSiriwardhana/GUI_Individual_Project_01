   M S B A M L   `   `   `  ����D  @Desktop01, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null/clr-namespace:Desktop01.ViewDesktop01.View  5   	   9!clr-namespace:Desktop01.ViewModelDesktop01.ViewModel  64        Desktop01.View.LoginWindow   5   	   W SPresentationCore, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   .localclr-namespace:Desktop01.View     5   	   4local1!clr-namespace:Desktop01.ViewModel     64     � Title$  Student Manager Login��5   	   $	��460��6'   $	��300��64    � WindowState$ 	Minimized=�5
   	    � WindowStartupLocation$ CenterScreen=�5   	    � 
ResizeMode$ NoResize=�5   	   
������  � DataContext 5      '   !Desktop01.ViewModel.LoginWindowVM  5   
   .��5      � ��5   
   �� 5       �� 
StartPoint$	 0,0&�6"    �� EndPoint$	 1,1&�63   .��5      �  � Color$ DarkSlateBlue��6    � Offset$	 0.5Q�66   � 5      $ 
DodgerBlue��6   $	 1.0Q�63   5      .+�5   
   �� 
���   �$��3,3,3,3q�6%   $��Center=�6?   $	��250��6\   $��0,70,0,0q�6i   $	��Top=�6{   $	��250��6�   ��5      �� 5      $	 0,0&�6&   $	 1,1&�67   .��5      � $
 Aqua��6#   $	 0.0Q�61   � 5      $ 	AliceBlue��6#   $	 0.5Q�65   � 5      $ 
Aquamarine��6#   $	 1.0Q�67   5      5       �� 5!   
   $
��Bold"�6   $��Center=�6$   $��	0,125,0,0q�6A   	 �� TextWrapping$
	 Wrap=�6T   $	��Top=�6�   $	��200��6�   $��30��6�   $��Center=�6�   $��Center=�6�   
���������6h   �� *
UserName+6�   �� 5"   
   $
��Bold"�6   $��Center=�6$   $��	0,250,0,0q�6A   $
	 Wrap=�6T   $	��Top=�6�   $	��200��6�   $��30��6�   $��Center=�6�   $��Center=�6�   ��6h   �� *
Password+6�   �� 5#   
   -   5        
 ��Name$
 Login��5#      $��Login��6    $��Center=�60   $��	0,350,0,0q�6M   $	��Top=�6`   $	��100��6x   $��30��6�   ���	#FF0DFF9F���	#FF00060E$��	UltraBold"�6�   $��Times New Roman)�6�   ��6�   �� *LoginCommand+�� 5$   
   $
��Bold"�6   $��Center=�6&   $��0,95,0,0q�6C   $
��Wrap=�6U   $��	User Name��6i   $	��Top=�6z   $��30��6�   $	��200��6�   $��Times New Roman)�6�   $��15(�6�   �� 5%   
   $
��Bold"�6   $��Center=�6&   $��	0,220,0,0q�6C   $
��Wrap=�6V   $��Password��6j   $	��Top=�6z   $��30��6�   $	��200��6�   $��Times New Roman)�6�   $��15(�6�   5'      5(      