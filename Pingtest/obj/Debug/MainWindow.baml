   M S B A M L   `   `   `  ����C  ?Pingtest, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null#clr-namespace:PingtestPingtest  5   	       Pingtest.MainWindow   5   	   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   (localclr-namespace:Pingtest     5   	     � Title$  	Ping test��5   	   $	��450��6   $	��449��6(   .��5	      � $��0,0,2,0q�6   .+�5
   
   �� -   5         ��Name$ 
TestButton��5
      $*��$Wysyłaj zapytania PING przez 7 sek.��6%   $
��Left=�6S   $��205,375,0,0q�6n   $	��Top=�6�   $	��216��6�   6�   �� 5   
   -   5         ��Name$ textbox1��5      $
��Left=�6$   $��23��6?   $��
23,375,0,0q�6K    �� TextWrapping$
 Wrap=�6_   $�� ��6s   $	��Top=�6{   $	��149��6�   �� 5   
   $��Adres do testowania PING��6   $
��Left=�63   $��
23,344,0,0q�6N   $	��Top=�6b    J� RenderTransformOrigin$ -6.408,7.135&�6z   �� 5   
   $9��3Czas, który upłynął od rozpoczęcia testu PING.��6   $
��Left=�6I   $��
23,237,0,0q�6d   $	��Top=�6x   � 5   
   -   5         �Name$ progressbar1��5      $
��Left=�6,   $��22��6G   $��
23,281,0,0q�6S   $	��Top=�6g   $	��398��6    � Maximum$ 7Q�6�    � Minimum$ 0Q�6�   �� 5   
   -   5         ��Name$ display��5      $
��Left=�6#   $	��227��6>   $��	10,10,0,0q�6K   $	��Top=�6^   $	��411��6v   ���	#FF0C0101
����� �6�   5      5      