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

public partial class newpw : System.Web.UI.Page
{
    SqlConnection con;
    string str = ConfigurationManager.ConnectionStrings["tfinderConnectionString"].ConnectionString;
  
    protected void Page_Load(object sender, EventArgs e)
    {
   }
 protected void btnSubmit_Click(object sender, EventArgs e)
    {
        con = new SqlConnection(str);
        con.Open();
        SqlCommand cmd = new SqlCommand("update registration set password=@pw where email=@email", con);
        cmd.Parameters.AddWithValue("@pw", txtN1.Text);
        cmd.Parameters.AddWithValue("@email",Session["email"]);
        cmd.ExecuteNonQuery();
        lblMsg.Text = "success";

        Response.Redirect("http://localhost:59423/login.aspx?status=2");
    }
}