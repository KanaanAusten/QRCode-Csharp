using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Navigation;
using System.Windows.Shapes;
using com.google.zxing;
using ByteMatrix = com.google.zxing.common.ByteMatrix;
using System.Drawing;
using System.Runtime.InteropServices;

namespace QRCode
{
    /// <summary>
    /// MainWindow.xaml 的交互逻辑
    /// </summary>
    public partial class MainWindow : Window
    {
        public MainWindow()
        {
            InitializeComponent();
        }

        private void button1_Click(object sender, RoutedEventArgs e)
        {
            label1.Content = "";
            try
            {
                String Server_IP, Server_Port, Password, Encryption_Method, At, Colon, Head, All, Final;
                Server_IP = server_ip_text.Text;
                Server_Port = server_prot_text.Text;
                Password = password_text.Password;
                Encryption_Method = encryption_method_text.Text;
                At = "@";
                Colon = ":";
                Head = "ss://";
                All = Encryption_Method + Colon + Password + At + Server_IP + Colon + Server_Port;
                byte[] bytes = Encoding.Default.GetBytes(All);
                string str = Convert.ToBase64String(bytes);
                Final = Head + str;
                //构造二维码写码器
                MultiFormatWriter mutiWriter = new com.google.zxing.MultiFormatWriter();
                ByteMatrix bm = mutiWriter.encode(Final, com.google.zxing.BarcodeFormat.QR_CODE, 300, 300);

                Bitmap img = bm.ToBitmap();

                image1.Source = ChangeBitmapToImageSource(img);
              

                //自动保存图片到当前目录
                string filename = System.Environment.CurrentDirectory + "\\QR" + DateTime.Now.Ticks.ToString() + ".jpg";
                img.Save(filename, System.Drawing.Imaging.ImageFormat.Jpeg);
                MessageBox.Show("图片已保存到:" + filename);
            }
            catch (Exception ee)
            { MessageBox.Show(ee.Message); }
        }

       
      
        public static ImageSource ChangeBitmapToImageSource(Bitmap bitmap)
        {
            //Bitmap bitmap = icon.ToBitmap();
            IntPtr hBitmap = bitmap.GetHbitmap();
            ImageSource wpfBitmap = System.Windows.Interop.Imaging.CreateBitmapSourceFromHBitmap(
                hBitmap,
                IntPtr.Zero,
                Int32Rect.Empty,
                BitmapSizeOptions.FromEmptyOptions());

           
            return wpfBitmap;
        }


    }
}
