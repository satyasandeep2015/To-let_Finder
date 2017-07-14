using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Threading;

public partial class state : System.Web.UI.Page
{
    string str = ConfigurationManager.ConnectionStrings["tfinderConnectionString"].ConnectionString;
    SqlConnection con;

    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        con = new SqlConnection(str);
        con.Open();
        String ind = drpS.SelectedValue;
        
            SqlCommand cmd = new SqlCommand("update state set statename=@state where statename=@indi", con);
            cmd.Parameters.AddWithValue("@indi", ind);
            cmd.Parameters.AddWithValue("@state", txtS.Text);
            txtS1.Text = "";
            cmd.ExecuteNonQuery();
            Response.Redirect(Request.Url.AbsoluteUri);
           
            lblMsg.Text = "Editing is done";        
                        
    }


    protected void Button2_Click(object sender, EventArgs e)
    {

        con = new SqlConnection(str);
        con.Open();
    
        SqlCommand cmd = new SqlCommand("insert into state(statename) Values(@statename)", con);
        cmd.Parameters.AddWithValue("@statename", txtS1.Text);
        cmd.ExecuteNonQuery();
        txtS1.Text = "";
        Response.Redirect(Request.Url.AbsoluteUri);
        lblMsg.Text = "New state is added";
    }
    protected void Unnamed1_Click(object sender, EventArgs e)
    {
        con = new SqlConnection(str);
        con.Open();
        String ind = drpS.SelectedValue;
        SqlCommand cmd = new SqlCommand("delete from state  where statename=@state", con);
        cmd.Parameters.AddWithValue("@state", ind);
        cmd.ExecuteNonQuery();
        Response.Redirect(Request.Url.AbsoluteUri);
        lblMsg.Text = "selected state is deleted";
    }
}