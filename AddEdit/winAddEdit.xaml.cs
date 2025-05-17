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
    /// Логика взаимодействия для winAddEdit.xaml
    /// </summary>
    public partial class winAddEdit : Window
    {
        bool isAdd;
        private object NameProduct;

        public winAddEdit(Product product)
        {
            InitializeComponent();

            ComboBoxType.ItemsSource = Connector.GetContext().Type.ToList();

            isAdd = true;

            if (product != null)
            {
                DataContext = product;
                ComboBoxType.Text = product.Type.NameType;
                isAdd = false;
            }
            else
            {
                DataContext = new Product();
                StackPanelId.Visibility = Visibility.Hidden;
            }
        }

        private void btn_back_Click(object sender, RoutedEventArgs e)
        {
            MainWindow mainWindow = new MainWindow();
            mainWindow.Show();
            this.Close();
        }

        private void btn_save_Click(object sender, RoutedEventArgs e)
        {
            var currentProduct = DataContext as Product; 

            if (ComboBoxType.SelectedIndex > 0)
            {
                MessageBox.Show("Тип пройден!");
                int numPlant = int.Parse(NumberPlant.Text);
                if (numPlant > 0)
                {
                    MessageBox.Show("Цех пройден!");
                    if (!string.IsNullOrEmpty(TextBoxProduct.Text))
                    {
                        MessageBox.Show("Название пройдено!");
                        TextBoxCost.Text = TextBoxCost.Text.Replace(".", ",");
                        double numCost = double.Parse(TextBoxCost.Text);
                        if (numCost > 0.00)
                        {
                            MessageBox.Show("Цена пройдено!");
                            currentProduct.TypeProductId = (ComboBoxType.SelectedItem as Type).IdType;
                            if (isAdd)
                            {
                                Connector.GetContext().Product.Add(currentProduct);
                                ;
                            }

                            MessageBox.Show("Изменения сохранены успешно");
                        }
                        else
                        {
                            MessageBox.Show("Неккоректная цена!");
                        }

                    }
                    else
                    {
                        MessageBox.Show("Неккоректное название!");
                    }
                }
                else
                {
                    MessageBox.Show("Неккоректный номер цеха!");
                }
            }
            else
            {
                MessageBox.Show("Неккоректный тип продукта!");
            }


            Connector.GetContext().SaveChanges();
            MainWindow mainWindow = new MainWindow();
            mainWindow.Show();
            this.Close();

        }
    }
}
