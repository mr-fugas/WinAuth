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
    /// Логика взаимодействия для WinCustomer.xaml
    /// </summary>
    public partial class WinCustomer : Window
    {
        public WinCustomer()
        {
            InitializeComponent();
            if (Connector.currentUser != null)
            {
                userName.Text = Connector.currentUser.LastName + " " + Connector.currentUser.FirstName[0] + "." + Connector.currentUser.MiddleName[0];
            }
            else
            {
                userName.Text = "Гость";
            }
            tgbut.Background = new SolidColorBrush(Colors.Red);

        }

        private void btn_esc_Click(object sender, RoutedEventArgs e)
        {
            WinAuth auth = new WinAuth();
            auth.Show();
            this.Close();
        }

        private void tgbut_Click(object sender, RoutedEventArgs e)
        {
          
        }
    }
}
