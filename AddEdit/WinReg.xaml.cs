using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Shapes;

namespace AddEdit
{
    /// <summary>
    /// Логика взаимодействия для WinReg.xaml
    /// </summary>
    public partial class WinReg : Window
    {
        public WinReg()
        {
            InitializeComponent();
        }

        private void btn_esc_Click(object sender, RoutedEventArgs e)
        {
            WinAuth winAuth = new WinAuth();
            winAuth.Show();
            this.Close();
        }

        private void btn_ent_Click(object sender, RoutedEventArgs e)
        {

        }
    }
}
