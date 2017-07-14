using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

public partial class type : System.Web.UI.Page
{
    string str = ConfigurationManager.ConnectionStrings["tfinderConnectionString"].ConnectionString;
    SqlConnection con;
    protected void Page_Load(object sender, EventArgs e)
    {
        lblMsg.Text = "";
    }
    protected void update_Click(object sender, EventArgs e)
    {
        con = new SqlConnection(str);
        con.Open();
        String ind = drpT.SelectedValue;
        SqlCommand cmd = new SqlCommand("update type set typename=@ty where typename=@ind", con);
        cmd.Parameters.AddWithValue("@ind", ind);
        cmd.Parameters.AddWithValue("@ty", txtNt.Text);
        cmd.ExecuteNonQuery();
        
        lblMsg.Text = "Type updated";
        Response.Redirect(Request.Url.AbsoluteUri);
    }
    protected void btnAdd_Click(object sender, EventArgs e)
    {
        con = new SqlConnection(str);
        con.Open();
        SqlCommand cmd = new SqlCommand("insert into type(typename) values(@ty)", con);
        cmd.Parameters.AddWithValue("@ty", txtA.Text);
        cmd.ExecuteNonQuery();
        lblMsg.Text = "New Type added";
    }
    protected void delete_Click(object sender, EventArgs e)
    {
        con = new SqlConnection(str);
        con.Open();
        String ind = drpT.SelectedValue;
        SqlCommand cmd = new SqlCommand("delete from type where typename=@ind", con);
        cmd.Parameters.AddWithValue("@ind", ind);
        cmd.ExecuteNonQuery();
        lblMsg.Text = "Type deleted";
        Response.Redirect(Request.Url.AbsoluteUri);
    }
}