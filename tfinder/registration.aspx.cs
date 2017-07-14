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
        try
        {

            string query3 = string.Format(" select questext from question");
            con = new SqlConnection(str);
            con.Open();
            SqlCommand cmd2 = new SqlCommand(query3, con);


            SqlDataReader dr3 = cmd2.ExecuteReader();
            while (dr3.Read())
            {
                ListItem ls1 = new ListItem();
                ls1.Text = dr3["questext"].ToString();


                drpSt.Items.Add(ls1);
            }
            con.Close();
        }
        catch (IndexOutOfRangeException)
        {

        }
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
            cmd.Parameters.AddWithValue("@securityQ", drpSt.SelectedValue);
            cmd.Parameters.AddWithValue("@answer", txtA.Text);
           

            int res = cmd.ExecuteNonQuery();

            if (res > 0)
            {
                lblMsg.Text = "success";
                SendMail();
                Response.Redirect("login.aspx?status=1");
            }
            else
            {
                lblMsg.Text = "failed";

                con.Close();

            }
        }
        
    }

    public void SendMail()
    {
        MailMessage mail = new MailMessage();
        mail.To.Add(txtE.Text);

        mail.From = new MailAddress("satyasandeepkollipara@gmail.com");
        mail.Subject = "Registration successful";
        string Body = "You've successfully registered in our website, for more info visit our site";
        mail.Body = Body;
        SmtpClient smtp = new SmtpClient();
        smtp.Host = "smtp.gmail.com"; //Or Your SMTP Server Address
        smtp.Port = 587;
        smtp.UseDefaultCredentials = false;
        smtp.Credentials = new System.Net.NetworkCredential
        ("satyasandeepkollipara@gmail.com", "ksskssksskss");

        //Or your Smtp Email ID and Password
        smtp.EnableSsl = true;
        smtp.Send(mail);
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

    protected void delete_Click(object sender, EventArgs e)
    {
        imgPp.ImageUrl = null;
  
    }
    
}