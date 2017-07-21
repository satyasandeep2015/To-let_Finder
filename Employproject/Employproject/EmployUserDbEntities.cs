using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Data.Entity;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Employproject
{
    public class User
    {

        public int USerId { get; set; }
        public string FirstName { get; set; }
        public string LastName { get; set; }
        public string UserName { get; set; }
        public string Password { get; set; }
        public string Email { get; set; }
    }

   public class Employ
    {

        [Key]
        [Column(Order = 1)]
        public int EmpId { get; set; }

        public string FirstName { get; set; }
        public string Lastname { get; set; }
        public DateTime Doj { get; set; }
        public int Salary { get; set; }
        public string Dept { get; set; }

    }

    class EmployUserDbEntities:DbContext
    {
        public EmployUserDbEntities():base("EmployUSerDbConfig")
        {
            
        }

        public DbSet<Employ> Employs { set; get; }
        public DbSet<User> Users { get; set; }
    }
}
