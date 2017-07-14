using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;


public partial class city : System.Web.UI.Page
{
    string str = ConfigurationManager.ConnectionStrings["tfinderConnectionString"].ConnectionString;
    SqlConnection con;

    protected void Page_Load(object sender, EventArgs e)
    {
        con = new SqlConnection(str);
        //drpS1.Items.Clear();
       
            BindContrydropdown();
       
    }
        protected void BindContrydropdown()
{
   
   
            //conenction path for database
    con = new SqlConnection(str);
    
    
//con.Open();
//SqlCommand cmd = new SqlCommand("select * from state", con);
//SqlDataAdapter da = new SqlDataAdapter(cmd);
//DataSet ds = new DataSet();
//da.Fill(ds);
//con.Close();
//drpS.DataSource = ds;
//drpS.DataTextField = "statename";
//drpS.DataValueField = "id";
//drpS.DataBind();
    //drpS.Items.Insert(0, new ListItem("--Select--", "0"));
    //drpS1.Items.Insert(0, new ListItem("--Select--", "0"));
   
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
    protected void Button1_Click(object sender, EventArgs e)
    {
        con = new SqlConnection(str);
        con.Open();
        String ind = drpS1.SelectedValue;

        SqlCommand cmd = new SqlCommand("update city set cityname=@city where cityname=@indi", con);
        cmd.Parameters.AddWithValue("@indi", ind);
        cmd.Parameters.AddWithValue("@city", txtC1.Text);
        txtC1.Text = "";
        cmd.ExecuteNonQuery();
        Response.Redirect(Request.Url.AbsoluteUri);

        lblMsg.Text = "Editing is done";        
                        
    }

    protected void Unnamed1_Click(object sender, EventArgs e)
    {
        con = new SqlConnection(str);
        con.Open();
        String ind = drpS1.SelectedValue;
        SqlCommand cmd = new SqlCommand("delete from city where cityname=@city", con);
        cmd.Parameters.AddWithValue("@city", ind);
        cmd.ExecuteNonQuery();
        Response.Redirect(Request.Url.AbsoluteUri);
        lblMsg.Text = "selected city is deleted";
   
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        con = new SqlConnection(str);
        con.Open();
        string que3 = string.Format("select id from state where statename='{0}'", drpS.SelectedItem.Text);
        SqlCommand cmd1 = new SqlCommand(que3, con);
        SqlDataReader dr2 = cmd1.ExecuteReader();      
            
        if(dr2.Read()){
            int ls;
            ls = int.Parse(dr2["id"].ToString());
            SqlCommand cmd = new SqlCommand("insert into city(stateid,cityname) Values(@sid,@cityname)", con);
            cmd.Parameters.AddWithValue("@cityname", txtC.Text);
            cmd.Parameters.AddWithValue("@sid",ls);
            dr2.Close();
            cmd.ExecuteNonQuery();
            txtC.Text = "";
            Response.Redirect(Request.Url.AbsoluteUri);
            lblMsg.Text = "New city is added";
            }
    }

protected void drpS_SelectedIndexChanged1(object sender, EventArgs e)
{
    try
    {
        drpS1.Items.Clear();
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
    }
    catch (IndexOutOfRangeException)
    {
    }
}
}

