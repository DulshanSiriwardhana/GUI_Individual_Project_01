using CommunityToolkit.Mvvm.ComponentModel;
using CommunityToolkit.Mvvm.Input;
using Desktop01.Model;
using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Media.Imaging;

namespace Desktop01.ViewModel
{
    public partial class MainWindowVM : ObservableObject
    {
        [ObservableProperty]
        public ObservableCollection<Student> users;
        [ObservableProperty]
        public Student selectedUser;



        public void CloseMainWindow()
        {
            Application.Current.MainWindow.Close();
        }


        [RelayCommand]
        public void message()
        {

            MessageBox.Show($"{selectedUser.FirstName}'s GPA value must be inbetween 0 and 4.", "Error");
        }

        [RelayCommand]
        public void AddStudent()
        {
            var tempstudent = new AddUserVM();
            tempstudent.title = "Add User";
            AddUserWindow window = new AddUserWindow(tempstudent);
            window.ShowDialog();

            try
            {
                if (tempstudent.Student != null)
                {
                    if (tempstudent.Student.FirstName != null)
                    {
                        users.Add(tempstudent.Student);
                    }
                }
            }
            catch
            {
                MessageBox.Show("Add student window is closed unexpectedly!");
            }

        }

        [RelayCommand]
        public void Delete()
        {
            if (selectedUser != null)
            {
                string name = selectedUser.FirstName;
                users.Remove(selectedUser);
                MessageBox.Show($"{name} is Deleted successfuly.", "DELETED \a ");

            }
            else
            {
                MessageBox.Show("Select a Student.", "Error");
            }
        }
        [RelayCommand]
        public void EditStudent()
        {
            if (selectedUser != null)
            {
                var tempstudent = new AddUserVM(selectedUser);
                tempstudent.title = "Edit User";
                var window = new AddUserWindow(tempstudent);

                window.ShowDialog();

                try
                {
                    int index = users.IndexOf(selectedUser);
                    if (tempstudent.Student != null)
                    {
                        users.RemoveAt(index);
                        users.Insert(index, tempstudent.Student);
                    }
                }
                catch
                {
                    MessageBox.Show("Edit window is closed");
                }



            }
            else
            {
                MessageBox.Show("Select a student to edit", "Warning!");
            }
        }
        [RelayCommand]
        public void Exit()
        {
            Application.Current.Shutdown();
        }

        public MainWindowVM()
        {
            users = new ObservableCollection<Student>();
            //BitmapImage image1 = new BitmapImage(new Uri("Model\\Images\\4.png", UriKind.Relative));
            //users.Add(new Student(23, "Tharuka", "Sandarenu", "15/07/1999", image1));
            BitmapImage image2 = new BitmapImage(new Uri("..\\Model\\Images\\2.png", UriKind.Relative));
            users.Add(new Student(22, "Fname_1", "Lname_1  ", "18/08/2000", image2));
            BitmapImage image3 = new BitmapImage(new Uri("..\\Model\\Images\\3.png", UriKind.Relative));
            users.Add(new Student(22, "Fname_2", "Lname_2  ", "01/01/2000", image3));
            BitmapImage image4 = new BitmapImage(new Uri("..\\Model\\Images\\1.png", UriKind.Relative));
            users.Add(new Student(22, "Fname_3", "Lname_3  ", "01/01/2000", image4));

        }
    }
}
