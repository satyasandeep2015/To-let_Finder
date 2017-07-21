using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Employproject
{
    public class ControlsClass
    {
        public static void DisplayOptions()
        {
            while (true)
            {

                Console.WriteLine("1.Registration\n");

                Console.WriteLine("2.Login\n");

                Console.WriteLine("3.Exit\n");

                Console.WriteLine("Enter your choice:\n");
                int RegLogChoice = Convert.ToInt32(Console.ReadLine());

                Console.Clear();
                switch (RegLogChoice)
                {
                    case 1:
                        UserRegistration();
                        break;
                    case 2:
                        UserLogin();
                        break;
                    case 3:
                        return;

                    default:
                        Console.WriteLine("Wrong Choice\n");
                        break;

                }
            }
        }
        //Task 1. Registration Page : UserTable(UserId, FirstName, LastName, UserName, Password, ConfirmPassword,Email)
        public static void UserRegistration()
        {
            var ObjUser = new User();
            var ObjEmployUserDbEntities = new EmployUserDbEntities();

            Console.WriteLine("Welcome to Registration page\n");

            Console.WriteLine("Enter FirstName:");

            ObjUser.FirstName = Console.ReadLine();

            Console.WriteLine("\nEnter LastName:");

            ObjUser.LastName = Console.ReadLine();

            while (true)
            { 
                Console.WriteLine("\nEnter UserName");

                 ObjUser.UserName = Console.ReadLine();

                var ObjUserRecord =
                    ObjEmployUserDbEntities.Users.FirstOrDefault(x => x.UserName == ObjUser.UserName);
                if(ObjUserRecord != null)
                    Console.WriteLine("\nUserName Already Exists, Choose a different one\n");
                else
                {
                    break;
                }
                
            }

        while (true)
            {
                Console.WriteLine("\nEnter Password:");
                ObjUser.Password = Console.ReadLine();

                Console.WriteLine("\nConfirm Password:");
                var ConfirmPassword = Console.ReadLine();

                if (ObjUser.Password == ConfirmPassword)
                {
                    break;
                }
                
                    Console.WriteLine("Password doesn't Match, Enter Again");
                
            }


            Console.WriteLine("\nEnter Email:");

            ObjUser.Email = Console.ReadLine();

            ObjEmployUserDbEntities.Users.Add(ObjUser);
            ObjEmployUserDbEntities.SaveChanges();
            Console.Clear();
            Console.WriteLine("Registration Successful\n");


        }

        public static void UserLogin()
        {
            var ObjUser = new User();
            var ObjEmployUserDbEntities = new EmployUserDbEntities();

            Console.WriteLine("Enter the details to Login:\n");

            while (true)
            {
                Console.WriteLine("\nEnter UserName:");

                ObjUser.UserName = Console.ReadLine();

                Console.WriteLine("\nEnter Password:");

                ObjUser.Password = Console.ReadLine();

                var ObjUserRecord =
                    ObjEmployUserDbEntities.Users.FirstOrDefault(
                        x => (x.UserName == ObjUser.UserName) && (x.Password == ObjUser.Password));

                if (ObjUserRecord != null)
                {
                    Console.Clear();

                    Console.WriteLine($"\nWelcome {ObjUserRecord.FirstName} {ObjUserRecord.LastName},\n\n");
                    UserHomePageClass.HomePage();
                    break;
                }
                else
                {
                    Console.WriteLine("User Name and Password Doesn't Match, Please Try Again");
                }

            }



        }

    }


}
