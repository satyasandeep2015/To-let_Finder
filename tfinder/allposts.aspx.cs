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
using a = System.Web.UI.WebControls;
public partial class allposts : System.Web.UI.Page

{
    SqlConnection con;

    string str = ConfigurationManager.ConnectionStrings["tfinderConnectionString"].ConnectionString;

    protected void Page_Load(object sender, EventArgs e)
    {

    }
    public void DeletePostbtn_Click(object sender, EventArgs e)
    {
        var link = sender as LinkButton;
        int postId = int.Parse(link.Attributes["myParam"].ToString());

        try
        {  
            con = new SqlConnection(str);

            SqlCommand cmd = new SqlCommand("delete  from post where postid=@pid", con);

            cmd.Parameters.AddWithValue("@pid", postId);
          
            con.Open();
            cmd.ExecuteNonQuery();
            Response.Redirect(Request.RawUrl);


        }
        catch (Exception exp)
        {
        }
        con.Close();
    }
    protected void DataList1_ItemDataBound(object sender, DataListItemEventArgs e)
    {
        foreach (DataListItem item in DataList1.Items)
        {
            foreach (Control c in item.Controls)
            {
                if (c is a.Image)
                {
                    a.Image img = c as a.Image;
                    if (img.ImageUrl == "")
                    {
                        img.Visible = false;
                    }
                    else
                    {
                        img.Visible = true;
                    }
                }

            }
        }
    }
}