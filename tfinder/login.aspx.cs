using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
public partial class login : System.Web.UI.Page
{

    SqlConnection con;

    string str = ConfigurationManager.ConnectionStrings["tfinderConnectionString"].ConnectionString;
    protected void Page_Load(object sender, EventArgs e)
    {
        lblMsg.Text = "";
        if (!IsPostBack)
        {
            if (Request.QueryString["status"] == "1")
            {
                lblMsg.Text = "Registration Successful";
            }
            else if (Request.QueryString["status"] == "2")
            {
                lblMsg.Text = "Password reset successful";
            }
            else if (Request.QueryString["status"] == "3")
            {
                lblMsg.Text = "logged out successfully";
            }
            else if (Request.QueryString["status"] == "")
                lblMsg.Text = ""; 
        }

        con = new SqlConnection(str);
        //drpS1.Items.Clear();

        BindContrydropdown();

        //    if (Request.UrlReferrer != null)
        //    {
        //        //geting the name of the previous page in a variable sPrevPage
        //        string sPrevPage = Request.UrlReferrer.Segments[Request.UrlReferrer.Segments.Length - 1];
        //        ViewState["ReferrerUrl"] = sPrevPage;
        //    }
        //    else
        //    {
        //        ViewState["ReferrerUrl"] = String.Empty;
        //    }

        //    //lblTest.Text = ViewState["ReferrerUrl"].ToString();
        //    if (ViewState["ReferrerUrl"].ToString() != String.Empty)
        //    {
        //        if (Request.QueryString["Key"] == "ua")
        //        {
        //            lblMsg.Text = "Please Login First to access content";
        //        }
        //        else if (Request.QueryString["key"] == "lo")
        //        {
        //            lblMsg.Text = "Logout Sucess";
        //            lblMsg.ForeColor = Color.Green;
        //        }
        //        else if (Request.QueryString["key"] == "rs")
        //        {
        //            lblMsg.Text = "Registration Sucess.Please Login to continue.";
        //            lblMsg.ForeColor = Color.Green;
        //        }


    }
    protected void BindContrydropdown()
    {

        con = new SqlConnection(str);
        string query2 = string.Format(" select statename from state");
        SqlCommand cmd1 = new SqlCommand(query2, con);
        con.Open();
        SqlDataReader dr2 = cmd1.ExecuteReader();

        while (dr2.Read())
        {
            ListItem ls = new ListItem();
            ls.Text = dr2["statename"].ToString();
            drpS.Items.Add(ls);
        }
    }

    protected void drpS_SelectedIndexChanged1(object sender, EventArgs e)
    {
        try
        {
            drpS1.Items.Clear();
            drpSt.Items.Clear();
            con = new SqlConnection(str);
            string que = string.Format("select id from state where statename='{0}'", drpS.SelectedItem.Text);

            SqlDataAdapter dad = new SqlDataAdapter(que, con);
            DataSet ds = new DataSet();
            dad.Fill(ds);
            DataTable dt = ds.Tables[0];
            int hid = int.Parse(dt.Rows[0][0].ToString());
            string query2 = string.Format(" select cityname from city where stateid='{0}'", hid);
            SqlCommand cmd1 = new SqlCommand(query2, con);
            con.Open();
            SqlDataReader dr2 = cmd1.ExecuteReader();
            while (dr2.Read())
            {
                ListItem ls = new ListItem();
                ls.Text = dr2["cityname"].ToString();


                drpS1.Items.Add(ls);
            }
            dr2.Close();
        }
        catch (IndexOutOfRangeException)
        {

        }
        
        try
        {

            string query3 = string.Format(" select typename from type");
            SqlCommand cmd2 = new SqlCommand(query3, con);
           

            SqlDataReader dr3 = cmd2.ExecuteReader();
            while (dr3.Read())
            {
                ListItem ls1 = new ListItem();
                ls1.Text = dr3["typename"].ToString();


                drpSt.Items.Add(ls1);
            }
        }
        catch (IndexOutOfRangeException)
        {

        }

    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Response.Redirect("http://localhost:59423/recoverpw.aspx");
    }

    protected void btn_Click(object sender, EventArgs e)
    {

        if (txtE.Text == "admintf@gmail.com")
        {
            con = new SqlConnection(str);
            using (
                SqlCommand cmd = new SqlCommand("SELECT email, password FROM registration WHERE email=@e", con))
            {
                cmd.Parameters.AddWithValue("@e", txtE.Text);
                con.Open();
                SqlDataReader dr = cmd.ExecuteReader();
                if (dr.HasRows)
                {

                    while (dr.Read())
                    {
                        string dbEmail = (string)(dr["email"]);
                        string dbPassword = Convert.ToString(dr["password"]);
                        string EnteredPassword = txtPw.Text;
                        if (dbPassword == EnteredPassword)
                        {
                            Session["email"] = txtE.Text;
                            Response.Redirect("http://localhost:59423/admin.aspx");
                        }
                        else
                        {
                            lblMsg.Text = "Invalid password";
                        }
                    }
                }
            }
        }

        else
        {

            try
            {

                con = new SqlConnection(str);
                string resultNumber = string.Empty;
                using (
                    SqlCommand cmd = new SqlCommand("SELECT email, password FROM registration WHERE email=@e", con))
                {
                    cmd.Parameters.AddWithValue("@e", txtE.Text);
                    con.Open();
                    SqlDataReader dr = cmd.ExecuteReader();
                    if (dr.HasRows)
                    {

                        while (dr.Read())
                        {
                            string dbEmail = (string)(dr["email"]);
                            string dbPassword = Convert.ToString(dr["password"]);
                            string EnteredPassword = txtPw.Text;
                            if (dbPassword == EnteredPassword)
                            {
                                // The password is correct
                                Session["email"] = (string)(dr["email"]);
                                // Session["id"] = int.Parse((dr["id"]).ToString()) ;
                                lblMsg.Text = "hello ";
                                Response.Redirect("http://localhost:59423/home.aspx");
                            }
                            else
                            {
                                lblMsg.Text = "Login Failed";
                                lblMsg.ForeColor = Color.Red;
                            }


                        }
                    }
                    else
                    {
                        lblMsg.Text = "email is not yet registered";
                    }
                    dr.Close();
                }
                con.Close();

            }
            catch (Exception ex)
            {

                lblMsg.Text = ex.Message;
            }
        }
    }


    protected void LinkButton2_Click(object sender, EventArgs e)
    {
        Response.Redirect("http://localhost:59423/registration.aspx");

    }
    protected void btnSea_Click(object sender, EventArgs e)
    {

        Session["state"] = drpS.SelectedValue;
        Session["city"] = drpS1.SelectedValue;
        Session["type"] = drpSt.SelectedValue;
        Response.Redirect("http://localhost:59423/search.aspx");
    }


       

    
}


