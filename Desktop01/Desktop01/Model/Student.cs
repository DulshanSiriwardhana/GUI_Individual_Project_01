using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Controls;
using System.Windows.Media.Imaging;

namespace Desktop01.Model
{
    public class Student
    {

        //Attributes
        public int Age { get; set; }
        public string FirstName { get; set; }
        public string LastName { get; set; }

        public BitmapImage Image { get; set; }

        public string DateOfBirth { get; set; }
        public Double GPA { get; set; }

        //Methods
        public String ImagePath
        {
            get { return $"/Model/Images/{Image}"; }
        }

        public Student()
        {
        }

        public Student(int age, string firstName, string lastName, string dateOfbirth, BitmapImage image)
        {
            Age = age;
            FirstName = firstName;
            LastName = lastName;
            DateOfBirth = (dateOfbirth+"              ").Substring(0,15);
            Image = image;
            GPA = 4.0;
        }
    }
}
