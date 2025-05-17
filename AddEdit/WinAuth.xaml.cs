using System;
using System.Collections.Generic;
using System.Diagnostics.Eventing.Reader;
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
    /// Логика взаимодействия для WinAuth.xaml
    /// </summary>
    public partial class WinAuth : Window
    {
        public WinAuth()
        {
            InitializeComponent();
            btn_enter.Focus();
        }

        private void btn_enter_Click(object sender, RoutedEventArgs e)
        {
            string login = txtBox_login.Text;
            string pass = passwordBox.Password;

            var user = Connector.GetContext().User.Where(x => x.Login == login && x.Password == pass).FirstOrDefault();
            if (user != null)
            {
                Connector.currentUser = user;
                //здесь будет авторизация
                switch(user.RoleId)
                {
                    case 1: //переход на окно заказчика
                        WinCustomer customer = new WinCustomer();
                        customer.Show();
                        this.Close();
                        break;

                    case 2: //переход на окно кладовщика
                        WinStoreKeeper storeKeeper = new WinStoreKeeper();
                        storeKeeper.Show();
                        this.Close();
                        break;

                    case 3: //переход на окно менеджера
                        WinManager manager = new WinManager();
                        manager.Show();
                        this.Close();
                        break;

                    case 4: //переход на окно директора
                        WinBoss boss = new WinBoss();
                        boss.Show();
                        this.Close();
                        break;
                }


            }
            else
            {
                MessageBoxResult result = MessageBox.Show("Данного пользователя нет в БД. \nВход будет осуществлён в качестве Гостя. \nВы согласы?", "Авторизация",MessageBoxButton.YesNo, MessageBoxImage.Information);
                if (result == MessageBoxResult.Yes)
                {
                    WinCustomer customer = new WinCustomer();
                    customer.Show();
                    this.Close();

                }
                else
                {
                    txtBox_login.Text = string.Empty;
                    passwordBox.Password = string.Empty;
                }
                //предложить войти как гость
            }
        }

        private void TextBlock_MouseLeftButtonUp(object sender, MouseButtonEventArgs e)
        {
            MessageBoxResult result = MessageBox.Show("Регистрация возможна только для заказчика. \nПродолжить?","Регитсрация",MessageBoxButton.YesNo,MessageBoxImage.Question);
            if (result == MessageBoxResult.Yes) 
            {

            }
            else 
            {
            
            }
            
        }
    }
}
