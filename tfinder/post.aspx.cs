using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;


public partial class post : System.Web.UI.Page
{
       string[] image = new string[15];
       int count=0;
    string str = ConfigurationManager.ConnectionStrings["tfinderConnectionString"].ConnectionString;
    SqlConnection con;
    //string email="qqq@gmail.com";
    

    protected void Page_Load(object sender, EventArgs e)
    {
        con = new SqlConnection(str);
        //email = Request.QueryString["email"];
        //drpS1.Items.Clear();
        BindContrydropdown();
    }

    private void BindContrydropdown()
    {
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
 
    protected void submit_Click(object sender, EventArgs e)
    {
        
        con = new SqlConnection(str);

        imageup();
        SqlCommand cmd = new SqlCommand("insert into post(email,name,phonenumber,city,state,address,type,price,image1,image2,image3,image4,image5,image6,image7,image8,image9,image10) values(@email,@name,@phonenumber,@city,@state,@address,@type,@price,@image1,@image2,@image3,@image4,@image5,@image6,@image7,@image8,@image9,@image10)", con);

        cmd.Parameters.AddWithValue("@email",Session["email"]);
        cmd.Parameters.AddWithValue("@name", txtN.Text);
        cmd.Parameters.AddWithValue("@phonenumber", txtPn.Text);
        cmd.Parameters.AddWithValue("@city", drpS1.SelectedValue);
        cmd.Parameters.AddWithValue("@state", drpS.SelectedValue);
        cmd.Parameters.AddWithValue("@address", txtAd.Text);
        cmd.Parameters.AddWithValue("@type", drpSt.SelectedValue);
        cmd.Parameters.AddWithValue("@price", txtPr.Text);
        cmd.Parameters.AddWithValue("@image1",image[1]);
        cmd.Parameters.AddWithValue("@image2", image[2]);
        cmd.Parameters.AddWithValue("@image3", image[3]);
        cmd.Parameters.AddWithValue("@image4", image[4]);
        cmd.Parameters.AddWithValue("@image5", image[5]);
        cmd.Parameters.AddWithValue("@image6", image[6]);
        cmd.Parameters.AddWithValue("@image7", image[7]);
        cmd.Parameters.AddWithValue("@image8", image[8]);
        cmd.Parameters.AddWithValue("@image9", image[9]);
        cmd.Parameters.AddWithValue("@image10", image[10]);
        con.Open();
        cmd.ExecuteNonQuery();
        Response.Redirect("Home.aspx?status=1");
     
      }

    void imageup()
    {
        if (FileUpload1.HasFile)
        {
            FileUpload1.SaveAs(Server.MapPath("/profilepics/") + FileUpload1.FileName);
            image[1] = "~/profilepics/" + FileUpload1.FileName;
            count++;
        }
        else
        {
            image[1] = "";
        }
        if (FileUpload2.HasFile)
        {
            FileUpload2.SaveAs(Server.MapPath("/profilepics/") + FileUpload2.FileName);
            image[2] = "~/profilepics/" + FileUpload2.FileName;
            count++;
        }
        else
        {
            image[2] = "";
        }
        if (FileUpload3.HasFile)
        {
            FileUpload3.SaveAs(Server.MapPath("/profilepics/") + FileUpload3.FileName);
            image[3] = "~/profilepics/" + FileUpload3.FileName;
            count++;
        }
        else
        {
            image[3] = "";
        }
        if (FileUpload4.HasFile)
        {
            FileUpload4.SaveAs(Server.MapPath("/profilepics/") + FileUpload4.FileName);
            image[4] = "~/profilepics/" + FileUpload4.FileName;
            count++;
        }
        else
        {
            image[4] = "";
        }
        if (FileUpload5.HasFile)
        {
            FileUpload5.SaveAs(Server.MapPath("/profilepics/") + FileUpload5.FileName);
            image[5] = "~/profilepics/" + FileUpload5.FileName;
            count++;
        }
        else
        {
            image[5] = "";
        }
        if (FileUpload6.HasFile)
        {
            FileUpload6.SaveAs(Server.MapPath("/profilepics/") + FileUpload6.FileName);
            image[6] = "~/profilepics/" + FileUpload6.FileName;
            count++;
        }
        else
        {
            image[6] = "";
        }
        if (FileUpload7.HasFile)
        {
            FileUpload7.SaveAs(Server.MapPath("/profilepics/") + FileUpload7.FileName);
            image[7] = "~/profilepics/" + FileUpload7.FileName;
            count++;
        }
        else
        {
            image[7] = "";
        }
        if (FileUpload8.HasFile)
        {
            FileUpload8.SaveAs(Server.MapPath("/profilepics/") + FileUpload8.FileName);
            image[8] = "~/profilepics/" + FileUpload8.FileName;
            count++;
        }
        else
        {
            image[8] = "";
        }
        if (FileUpload9.HasFile)
        {
            FileUpload9.SaveAs(Server.MapPath("/profilepics/") + FileUpload9.FileName);
            image[9] = "~/profilepics/" + FileUpload9.FileName;
            count++;
        }
        else
        {
            image[9] = "";
        }
        if (FileUpload10.HasFile)
        {
            FileUpload10.SaveAs(Server.MapPath("/profilepics/") + FileUpload10.FileName);
            image[10] = "~/profilepics/" + FileUpload10.FileName;
            count++;
        }
        else
        {
            image[10] = "";
        }
    }
}