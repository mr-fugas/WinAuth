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
            DataContext = new User();
        }

        private void btn_esc_Click(object sender, RoutedEventArgs e)
        {
            WinAuth winAuth = new WinAuth();
            winAuth.Show();
            this.Close();
        }

        private void btn_ent_Click(object sender, RoutedEventArgs e)
        {
            if (PassworBox.Password == PassworBoxRepeat.Password)
            {
                if (!string.IsNullOrEmpty(textBoxFamily.Text) && !string.IsNullOrEmpty(textBoxName.Text) && !string.IsNullOrEmpty(textBoxSecondName.Text) &&
                    !string.IsNullOrEmpty(textBoxLogin.Text) && !string.IsNullOrEmpty(PassworBox.Password) & !string.IsNullOrEmpty(PassworBoxRepeat.Password))
                {
                    var user = Connector.GetContext().User.Where(x => x.Login == textBoxLogin.Text).FirstOrDefault();
                    if (user == null)
                    {
                        var newUser = DataContext as User;
                        newUser.Password = PassworBoxRepeat.Password;
                        newUser.RoleId = 1;
                        Connector.GetContext().User.Add(newUser);
                        Connector.GetContext().SaveChanges();
                        MessageBox.Show("ВЫ успешно зарегистрированны в качетсве заказчка");
                        WinAuth winAuth = new WinAuth();
                        winAuth.Show();
                        this.Close();

                    }

                }
                else
                {
                    MessageBox.Show("Все поля должны быть заполнены");
                }

            }
            else
            {
                MessageBox.Show("Пароли не совпадают");
            }


        }
    }
}
