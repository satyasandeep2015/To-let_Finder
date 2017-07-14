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

public partial class recoverpw : System.Web.UI.Page
{
    SqlConnection con;

    string str = ConfigurationManager.ConnectionStrings["tfinderConnectionString"].ConnectionString;
    protected void Page_Load(object sender, EventArgs e)
    {
        lblMsg.Text = "";
    }
    protected void Go_Click(object sender, EventArgs e)
    {
        con = new SqlConnection(str);
        string query1 = string.Format(" select email from registration where email='{0}'", txtE.Text);
        SqlCommand cmd = new SqlCommand(query1, con);
        con.Open();
        SqlDataReader dr1 = cmd.ExecuteReader();
        if (dr1.Read())
        {
            string query2 = string.Format(" select securityQ from registration where email='{0}'", txtE.Text);
            dr1.Close();

            SqlCommand cmd1 = new SqlCommand(query2, con);
            SqlDataReader dr2 = cmd1.ExecuteReader();
            if (dr2.Read())
            {
                txtQ.Text = dr2["securityQ"].ToString();
              
            }
        }
                

            else
            {
                lblMsg.Text = "email is not yet registered";
            }
            con.Close();
        }

       
 
    
       
    protected void Submit_Click(object sender, EventArgs e)
    {
        con = new SqlConnection(str);
        string query1 = string.Format(" select answer from registration where email='{0}'", txtE.Text);
        SqlCommand cmd = new SqlCommand(query1, con);
        
        con.Open();
        Session["email"] = txtE.Text;
        
        SqlDataReader dr1 = cmd.ExecuteReader();
        if (dr1.Read())
        {
            if (txtA.Text == dr1["answer"].ToString())
            {
                string url;
                url = "http://localhost:59423/newpw.aspx?phn=";

                Response.Redirect(url);
            }
            else
            {
                lblMsg.Text = "wrong answer, tryagain";
            }

        }
        con.Close();
     
        
    }
   
}