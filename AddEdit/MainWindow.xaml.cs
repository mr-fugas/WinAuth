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
using System.Windows.Navigation;
using System.Windows.Shapes;

namespace AddEdit
{
    /// <summary>
    /// Логика взаимодействия для MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {
        public MainWindow()
        {
            InitializeComponent();
            DataGridProduct.ItemsSource = Connector.GetContext().Product.ToList();
        }

        private void btn_add_Click(object sender, RoutedEventArgs e)
        {
            winAddEdit winAddEdit = new winAddEdit(null);
            winAddEdit.Show();
            this.Hide();
        }

        private void DataGridProduct_MouseDoubleClick(object sender, MouseButtonEventArgs e)
        {
            var selectProduct = DataGridProduct.SelectedItem as Product;

            if (selectProduct != null)
            {
                winAddEdit winAddEdit = new winAddEdit(selectProduct);
                winAddEdit.Show();
                this.Hide();
            }
            else
            {
                MessageBox.Show("Привет");
            }
        }
    }
}
