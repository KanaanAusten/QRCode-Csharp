   M S B A M L   `   `   `  ���� 
  QRCode    QRCode.MainWindow   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml       � Title$#  Shadowsocks二维码生成器��$	��623��$	��600��.���  � RowDefinitions  � ColumnDefinitions .+��� -   $��button1��$��生成��$��28��$
��Left=�$��252,266,0,0q�$	��Top=�$��75��$
��Bold"�$��16(��� -   $��image1��$	��300��$
��Left=�$��149,294,0,0q�$
��Fill=�$	��Top=�$	��300���� -   $��label1��$��31��$
��Left=�$��	0,294,0,0q�$	��Top=�$	��592��$
��Bold"�$��16(��� $#��Shadowsocks二维码生成器��$
��Left=�$��56��$	��Top=�$	��456��$��35(�$
��Bold"�$��73,0,0,0q�$��2���� $��服务器地址��$
��Left=�$��30��$	��Top=�$��89��$��16(�$��	73,70,0,0q�$
��Bold"��� $��加密方式��$
��Left=�$��30��$	��Top=�$��89��$��16(�$
��Bold"�$��
73,220,0,0q��� $��密码��$
��Left=�$��30��$	��Top=�$��89��$��16(�$
��Bold"�$��
73,170,0,0q��� $��服务器端口��$
��Left=�$��30��$	��Top=�$��89��$��16(�$
��Bold"�$��
73,120,0,0q��� -    ��Name$ server_ip_text��$
��Left=�$��30��$��
171,70,0,0q� �� TextWrapping$
 Wrap=�$	��Top=�$	��358��$
��Bold"�$��20(��� -   $ server_prot_text��$
��Left=�$��30��$��171,120,0,0q�$
 Wrap=�$	��Top=�$	��358��$
��Bold"�$��20(�G� -    G�Name$ password_text��$
��Left=�$��30��$��171,170,0,0q�$	��Top=�$	��358��$
��Bold"�$��20(��� -    ��Name$ encryption_method_text��$
��Left=�$��30��$��171,220,0,0q�$	��Top=�$	��358��$
��Bold"�$��20(�.@��� $��aes-256-cfb���� $��aes-128-cfb���� $��aes-192-cfb���� $��aes-256-ofb���� $��aes-128-ofb���� $��aes-192-ofb���� $��aes-128-ctr���� $��aes-192-ctr���� $��aes-256-ctr���� $��aes-128-cfb8���� $��aes-192-cfb8���� $��aes-256-cfb8���� $��aes-128-cfb1���� $��aes-192-cfb1���� $��aes-256-cfb1���� $��bf-cfb���� $��camellia-128-cfb���� $��camellia-192-cfb���� $��camellia-256-cfb���� $��	cast5-cfb���� $��chacha20���� $��idea-cfb���� $��rc2-cfb���� $��rc4-md5���� $	��rc4���� $��salsa20���� $��seed-cfb��