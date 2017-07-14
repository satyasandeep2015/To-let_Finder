using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Drawing;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net.Mail;
public partial class registration : System.Web.UI.Page
{
    SqlConnection con;

    string str = ConfigurationManager.ConnectionStrings["tfinderConnectionString"].ConnectionString;
   public static  string p;
    protected void Page_Load(object sender, EventArgs e)
    {
        
    }
    
    protected void btnRegister_Click(object sender, EventArgs e)
    {
        con = new SqlConnection(str);
        string query1 = string.Format(" select email from registration where email='{0}'", txtE.Text);
        SqlCommand cmd1 = new SqlCommand(query1, con);
        con.Open();
        SqlDataReader dr1 = cmd1.ExecuteReader();
       
        if (dr1.Read())
        {
            lblEE.Text = "email already registered";
        }
        else
        {
            dr1.Close();
            SqlCommand cmd = new SqlCommand("insert into registration(name,phonenumber,password,email,profilepic,securityQ,answer) values(@name,@phonenumber,@password,@email,@profilepic,@securityQ,@answer)", con);
            cmd.Parameters.AddWithValue("@name", txtN.Text);
            cmd.Parameters.AddWithValue("@phonenumber", txtP.Text);
            cmd.Parameters.AddWithValue("@password", txtPw.Text);
            cmd.Parameters.AddWithValue("@email", txtE.Text);
            cmd.Parameters.AddWithValue("@profilepic", p);
            cmd.Parameters.AddWithValue("@securityQ", DropDownList1.SelectedValue);
            cmd.Parameters.AddWithValue("@answer", txtA.Text);
           

            int res = cmd.ExecuteNonQuery();
            
            if (res > 0)
            {
                lblMsg.Text = "success";
                Sendmail();
                Response.Redirect("login.aspx?staus=1");
               
            }
            else
            {
                lblMsg.Text = "failed";
                
                con.Close();

            }
        }
        
    }
    protected void btnUpload_Click(object sender, EventArgs e)
    {
        if (FileUpload1.HasFile)
        {
            FileUpload1.SaveAs(Server.MapPath("/profilepics/") + FileUpload1.FileName);

            
            //Response.Write(p);
            imgPp.ImageUrl = "~/profilepics/" + FileUpload1.FileName;
            p = imgPp.ImageUrl;
        }

    }
    public void Sendmail()
    {
        MailMessage mail = new MailMessage();
        SmtpClient SmtpServer = new SmtpClient("smtp.gmail.com");

        mail.From = new MailAddress("cse2011nec@gmail.com");
        mail.To.Add(txtE.Text);
        mail.Subject = "Test Mail";
        mail.Body = "This is for testing SMTP mail from GMAIL";

        SmtpServer.Port = 587;
        SmtpServer.Credentials = new System.Net.NetworkCredential("cse2011nec@gmail.com", "11471a05cse1");
        SmtpServer.EnableSsl = true;

        SmtpServer.Send(mail);
    }


    protected void delete_Click(object sender, EventArgs e)
    {
        imgPp.ImageUrl = null;
        //string path = Server.MapPath("/profilepics/") + FileUpload1.FileName;
        //if (File.Exists(path))
        //{
        //    File.Delete(path);
            
        //}

    }
    
}