   M S B A M L   `   `   `  ����B  >AddEdit, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null!clr-namespace:AddEditAddEdit  5   	       AddEdit.WinAuth   5   	   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   'localclr-namespace:AddEdit     5   	     � Title$  WinAuth��5   	   $	��450��6   $	��450��6&   $��20(�62   .��5	      �  � RowDefinitions 5
   
   �� 5      �� 5      �� 5      �� 5       � ColumnDefinitions 5   
   �� 5      �� 5      .+�5   
   �� $ ��Введите логин:��6   $��0��6*   $��Right=�67   $��Center=�6S   �� 5   
   $"��Введите пароль:��6   $��1��6+   $��Right=�68   $��Center=�6T   �� 5   
   -   5        $��txtBox_login��5      $	��190��6&   $��15 0 0 0q�62   $��1��6D   $��0��6T   $
��Left=�6a   $��Center=�6|   G� 5   
   -   5        $��passwordBox��5      $	��190��6)   $��15 0 0 0q�65   $��1��6G   $��1��6W   $
��Left=�6d   $��Center=�6   �� 5   
   -   5        $��btn_esc��5   J   $��0��6   $��2��6!   $��
Выход��6.   $��10q�6>   6J   �� 5   
   -   5        $��	btn_enter��5   J   $��1��6   $��2��6!   $��
Войти��6.   $��10q�6>   6[   �� 5   
   -   5        $��Регистрация��5      $��3��6'   $��1��64   $��Right=�6D   $��Center=�6`   $��	Underline{�6{   6�   5      5      