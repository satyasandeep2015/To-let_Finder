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

public partial class admin : System.Web.UI.Page
{
    SqlConnection con;
    string str = ConfigurationManager.ConnectionStrings["tfinderConnectionString"].ConnectionString;
    protected void Page_Load(object sender, EventArgs e)
    {
        con = new SqlConnection(str);
        con.Open();
        SqlCommand cmd = new SqlCommand("select name,profilepic from registration where email=@e");
        cmd.Parameters.AddWithValue("@e", Session["email"]);
        cmd.Connection = con;
        SqlDataReader dr = cmd.ExecuteReader();
        if (dr.HasRows)
        {

            if (dr.Read())
            {
                lblUN.Text = dr["name"].ToString();
                imgPp.ImageUrl = dr["profilepic"].ToString();

            }
        }
        dr.Close();

    }
    protected void btnSubmit_Click(object sender, EventArgs e)
    {

        con = new SqlConnection(str);
        con.Open();
        SqlCommand cmd = new SqlCommand("update registration set password=@pw where email=@email", con);
        cmd.Parameters.AddWithValue("@pw", txtN1.Text);
        cmd.Parameters.AddWithValue("@email", Session["email"]);
        cmd.ExecuteNonQuery();
        lblMsg.Text = "success";

        Response.Redirect(Request.Url.AbsoluteUri);

    }
    protected void btnPpc_Click(object sender, EventArgs e)
    {

        if (FileUpload1.HasFile)
        {
            FileUpload1.SaveAs(Server.MapPath("/profilepics/") + FileUpload1.FileName);            
            string p = "~/profilepics/" + FileUpload1.FileName;
            SqlCommand cmd = new SqlCommand("update registration set profilepic=@pp where email=@e", con);
            cmd.Parameters.AddWithValue("@e", Session["email"]);
            cmd.Parameters.AddWithValue("@pp", p);
            cmd.ExecuteNonQuery();
            Response.Redirect(Request.Url.AbsoluteUri);
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Session["email"] = "";
        Response.Redirect("http://localhost:59423/login.aspx?status=3");
    }
}
