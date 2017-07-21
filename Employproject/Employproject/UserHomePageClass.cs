using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Employproject
{
    class UserHomePageClass
    {
        public static void HomePage()
        {
            DisplayListOfEmploys();


            while (true)
            {
                Console.WriteLine("\n*************** Operations ****************\n");

                Console.WriteLine("1.Add New Employ\n");

                Console.WriteLine("2.Edit Employ\n");

                Console.WriteLine("3.Delete Employ\n");

                Console.WriteLine("4.Search Employ\n");

                Console.WriteLine("5.Exit\n");


                Console.WriteLine("Enter your choice:\n");

                int OpeationChoice = Convert.ToInt32(Console.ReadLine());
                Console.Clear();
                
                switch (OpeationChoice)
                {
                    case 1:
                        AddEmploy();
                        break;
                    case 2:
                        EditEmploy();
                        break;

                    case 3:
                        DeleteEmploy();
                        break;
                    case 4:
                        SearchEmploy();
                        break;
                    case 5:
                        return;
                    default:
                        Console.WriteLine("Invalid Choice, Try Again\n");
                        break;
                }
            }
        }

        public static void EditEmploy()
        {
            var objEmploy = new Employ();


            Console.WriteLine("Enter Employ id to edit the details:");

            int id = Convert.ToInt32(Console.ReadLine());

            var ObjEmployUserDbEntities = new EmployUserDbEntities();

            objEmploy = ObjEmployUserDbEntities.Employs.FirstOrDefault(x => x.EmpId == id);

            Console.WriteLine("________________________________________________");


            if (objEmploy != null)
            {

                Console.WriteLine(
                    $"EmpId: {objEmploy.EmpId}\n FirstName:{objEmploy.FirstName}\n Lastname:{objEmploy.Lastname}\n Doj: {objEmploy.Doj.Date.ToString("d")}\n Dept:{objEmploy.Dept}\n Salary:{objEmploy.Salary}\n ");
                Console.WriteLine("________________________________________________");

                Console.WriteLine("Enter the name of the column you want to edit:\n ");
                string EditChoice = Console.ReadLine();

                Console.Write($"enter the new value of {EditChoice} for {objEmploy.EmpId}: ");
                string UserInput = Console.ReadLine();

                switch (EditChoice)
                {
                    case "FirstName":
                        objEmploy.FirstName = UserInput;
                        break;
                    case "Lastname":
                        objEmploy.Lastname = UserInput;
                        break;
                    case "Doj":
                        objEmploy.Doj = Convert.ToDateTime(UserInput);
                        break;
                    case "Dept":
                        objEmploy.Dept = UserInput;
                        break;
                    case "Salary":
                        objEmploy.Salary = Convert.ToInt32(UserInput);
                        break;
                    default:
                        Console.WriteLine("No such Column Available, Try Again");
                        return;


                }

                ObjEmployUserDbEntities.SaveChanges();
                Console.Clear();
                Console.WriteLine("Record Updated\n");
                DisplayListOfEmploys();

            }



        }

        public static void AddEmploy()
        {
            var objEmploy = new Employ();
            var ObjEmployUserDbEntities = new EmployUserDbEntities();

            Console.WriteLine("\nEnter FirstName:");

            objEmploy.FirstName = Console.ReadLine();

            Console.WriteLine("\nEnter LastName:");

            objEmploy.Lastname = Console.ReadLine();

            Console.WriteLine("\nEnter Doj");

            objEmploy.Doj = Convert.ToDateTime(Console.ReadLine());

            Console.WriteLine("\nEnter Department");

            objEmploy.Dept = Console.ReadLine();

            Console.WriteLine("\nEnter Salary:");

            objEmploy.Salary = Convert.ToInt32(Console.ReadLine());

            ObjEmployUserDbEntities.Employs.Add(objEmploy);
            ObjEmployUserDbEntities.SaveChanges();

            Console.WriteLine("\nEmploy Added Successfully\n");
            
            DisplayListOfEmploys();
        }

        public static void DisplayListOfEmploys()

        {
            
            Console.WriteLine("List of Employs are:\n");
            var ObjEmployUserDbEntities = new EmployUserDbEntities();

            var EmpList = ObjEmployUserDbEntities.Employs.ToList();

            Console.WriteLine("________________________________________________");

            foreach (Employ objEmploy in EmpList)
            {

                Console.WriteLine(
                    $"Employ id: {objEmploy.EmpId}\n First Name:{objEmploy.FirstName}\n Last Name:{objEmploy.Lastname}\n Doj: {objEmploy.Doj.Date.ToString("d")}\n Department:{objEmploy.Dept}\n Salary:{objEmploy.Salary}\n ");
                Console.WriteLine("________________________________________________");
            }
        }

        public static void DeleteEmploy()
        {
            var objEmploy = new Employ();
            var ObjEmployUserDbEntities = new EmployUserDbEntities();

            Console.WriteLine("Enter Employ id to Get the details:");

            int id = Convert.ToInt32(Console.ReadLine());

            objEmploy = ObjEmployUserDbEntities.Employs.FirstOrDefault(x => x.EmpId == id);

            Console.Clear();
            if (objEmploy != null)
            {

                Console.WriteLine(
                    $"EmpId: {objEmploy.EmpId}\n FirstName:{objEmploy.FirstName}\n Lastname:{objEmploy.Lastname}\n Doj: {objEmploy.Doj.Date.ToString("d")}\n Dept:{objEmploy.Dept}\n Salary:{objEmploy.Salary}\n ");

                Console.WriteLine("________________________________________________");

                Console.WriteLine("Are You Sure to delete this record? type 'y' or 'n'");

                switch (Console.ReadLine())
                {
                    case "y":
                        ObjEmployUserDbEntities.Employs.Remove(objEmploy);
                        Console.Clear();
                        Console.WriteLine("Record Removed\n");
                        ObjEmployUserDbEntities.SaveChanges();
                        DisplayListOfEmploys();
                        break;
                    case "n":
                        Console.Clear();
                        Console.WriteLine("Alright\n");
                        break;
                    default:
                        Console.WriteLine("\nInvalid Choice\n");
                        break;
                }


            }
            else
            {
                Console.WriteLine("\nNo Such Id Exists\n");
            }

        }

        public static void SearchEmploy()
        {
            var objEmploy = new Employ();
            var ObjEmployUserDbEntities = new EmployUserDbEntities();

            Console.Clear();
            Console.WriteLine("Enter Employ id to Get the details:");

            int id = Convert.ToInt32(Console.ReadLine());

            objEmploy = ObjEmployUserDbEntities.Employs.FirstOrDefault(x => x.EmpId == id);

            Console.WriteLine("________________________________________________");


            if (objEmploy != null)
            {

                Console.WriteLine(
                    $"EmpId: {objEmploy.EmpId}\n FirstName:{objEmploy.FirstName}\n Lastname:{objEmploy.Lastname}\n Doj: {objEmploy.Doj.Date.ToString("d")}\n Dept:{objEmploy.Dept}\n Salary:{objEmploy.Salary}\n ");

                Console.WriteLine("________________________________________________");

            }
        }
    }
}
