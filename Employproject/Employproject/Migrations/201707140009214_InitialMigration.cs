namespace Employproject.Migrations
{
    using System;
    using System.Data.Entity.Migrations;
    
    public partial class InitialMigration : DbMigration
    {
        public override void Up()
        {
            CreateTable(
                "dbo.Employs",
                c => new
                    {
                        EmpId = c.Int(nullable: false, identity: true),
                        FirstName = c.String(),
                        Lastname = c.String(),
                        Doj = c.DateTime(nullable: false),
                        Salary = c.Int(nullable: false),
                        Dept = c.String(),
                    })
                .PrimaryKey(t => t.EmpId);
            
            CreateTable(
                "dbo.Users",
                c => new
                    {
                        USerId = c.Int(nullable: false, identity: true),
                        FirstName = c.String(),
                        LastName = c.String(),
                        UserName = c.String(),
                        Password = c.String(),
                        Email = c.String(),
                    })
                .PrimaryKey(t => t.USerId);
            
        }
        
        public override void Down()
        {
            DropTable("dbo.Users");
            DropTable("dbo.Employs");
        }
    }
}
