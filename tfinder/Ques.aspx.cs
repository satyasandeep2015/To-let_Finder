using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

public partial class ques : System.Web.UI.Page
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
        SqlCommand cmd = new SqlCommand("update question set questext=@que where questext=@ind", con);
        cmd.Parameters.AddWithValue("@ind", ind);
        cmd.Parameters.AddWithValue("@que", txtQ.Text);
        cmd.ExecuteNonQuery();
    }
    
    protected void btnAdd_Click(object sender, EventArgs e)
    {
        
        con = new SqlConnection(str);
        con.Open();
        SqlCommand cmd = new SqlCommand("insert into question(questext) values(@que)", con);
        cmd.Parameters.AddWithValue("@que", txtNq.Text);
        cmd.ExecuteNonQuery();
    }


    protected void delete_Click(object sender, EventArgs e)
    {
        con = new SqlConnection(str);
        con.Open();
        String ind = drpS.SelectedValue;
        SqlCommand cmd = new SqlCommand("delete from question where questext=@ind", con);
        cmd.Parameters.AddWithValue("@ind", ind);
        cmd.ExecuteNonQuery();
        lblMsg.Text = "question deleted";
        Response.Redirect(Request.Url.AbsoluteUri);
    }
}