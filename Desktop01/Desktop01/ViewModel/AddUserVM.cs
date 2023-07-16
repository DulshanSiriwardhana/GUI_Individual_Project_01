using CommunityToolkit.Mvvm.ComponentModel;
using CommunityToolkit.Mvvm.Input;
using Desktop01.Model;
using Microsoft.Win32;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Media.Imaging;
using static System.Net.Mime.MediaTypeNames;
using Application = System.Windows.Application;

namespace Desktop01
{
    public partial class AddUserVM : ObservableObject

    {
        //Observable objects
        [ObservableProperty]
        public string firstname;

        [ObservableProperty]
        public string lastname;

        [ObservableProperty]
        public int age;

        [ObservableProperty]
        public string dateofbirth;

        [ObservableProperty]
        public double gpa;

        [ObservableProperty]
        public string title;

        [ObservableProperty]
        public BitmapImage selectedImage;


        public AddUserVM(Student student)
        {

            firstname = student.FirstName;
            lastname = student.LastName;
            age = student.Age;
            gpa = student.GPA;
            dateofbirth = student.DateOfBirth;
            selectedImage = student.Image;

        }
        public AddUserVM()
        {
            selectedImage = new BitmapImage(new Uri("..\\Model\\Images\\NoPic.png", UriKind.Relative));
        }

        [RelayCommand]
        public void UploadPhoto()
        {
            OpenFileDialog dialog = new OpenFileDialog();
            dialog.Filter = "Image files | *.bmp; *.png; *.jpg";
            dialog.FilterIndex = 1;
            if (dialog.ShowDialog() == true)
            {
                selectedImage = new BitmapImage(new Uri(dialog.FileName));
                MessageBox.Show("Image is successfuly uploded!", "successfull");
            }
        }






        public Student Student { get; private set; }
        public Action CloseAction { get; internal set; }

        [RelayCommand]
        public void Save()
        {
            if (gpa < 0 || gpa > 4)
            {
                MessageBox.Show("0.0 <= GPA <= 4.0", "Error");
                return;
            }
            if (Student == null)
            {
                Student = new Student()
                {
                    FirstName = firstname,
                    LastName = lastname,
                    Age = age,
                    DateOfBirth = dateofbirth,
                    Image = selectedImage,
                    GPA = gpa
                };
            }
            else
            {
                Student.FirstName = firstname;
                Student.LastName = lastname;
                Student.Age = age;
                Student.GPA = gpa;
                Student.Image = selectedImage;
                Student.DateOfBirth = dateofbirth;
            }

            if (Student.FirstName != null)
            {
                CloseAction();
            }
            Application.Current.MainWindow.Show();
        }

        [RelayCommand]
        public void Back()
        {
            var window = Application.Current.MainWindow;
            window.Show();
            Application.Current.MainWindow.Close();
        }
    }
}
