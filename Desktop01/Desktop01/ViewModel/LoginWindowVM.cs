using CommunityToolkit.Mvvm.ComponentModel;
using CommunityToolkit.Mvvm.Input;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;

namespace Desktop01.ViewModel
{
    public partial class LoginWindowVM : ObservableObject
    {
        [ObservableProperty]
        public string userName;
        [ObservableProperty]
        public string password;

        [RelayCommand]
        private void Login()
        {
            if(UserName == "Admin" && Password == "1234")
            {
                var window = new MainWindow();
                window.Show();
                Application.Current.MainWindow.Close();
            }
            else
            {
                MessageBox.Show("No user found!", "Error");
            }
        }

    }
}
