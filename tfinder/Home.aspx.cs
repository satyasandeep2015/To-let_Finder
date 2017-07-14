using System;
using System.Configuration;
using System.Data.SqlClient;
using System.Web.UI;
using System.Web.UI.WebControls;
using a = System.Web.UI.WebControls;


public partial class Home : System.Web.UI.Page
{
    SqlConnection con;

    string str = ConfigurationManager.ConnectionStrings["tfinderConnectionString"].ConnectionString;



    protected void Page_Load(object sender, EventArgs e)
    {

        if (!IsPostBack)
        {
            if (Request.QueryString["status"] == "1")
            {
                lblMsg.Text = "post added";
            }
            else if (Request.QueryString["status"] == "2")
            {
                lblMsg.Text = "specified post is deleted";
            }
        }
        con = new SqlConnection(str);
        //email = Request.QueryString["email"];
        // email = Request.QueryString["email"];
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
    protected void btnNP_Click(object sender, EventArgs e)
    {

        Response.Redirect("http://localhost:59423/post.aspx");
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Session["email"] = "";
        Response.Redirect("http://localhost:59423/login.aspx?status=3");
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
            //    //a.Image img1 = item.FindControl("image10img") as a.Image;
            //if (img1.ImageUrl == "")
            //{
            //    img1.Visible = false;
            //}
            //else
            //    img1.Visible = true;
        }
    }

    protected void btnPpc_Click(object sender, EventArgs e)
    {

        if (FileUpload1.HasFile)
        {
            FileUpload1.SaveAs(Server.MapPath("/profilepics/") + FileUpload1.FileName);


            //Response.Write(p);
            //imgPp.ImageUrl = "~/profilepics/" + FileUpload1.FileName;
            string p = "~/profilepics/" + FileUpload1.FileName;
            SqlCommand cmd = new SqlCommand("update registration set profilepic=@pp where email=@e", con);
            cmd.Parameters.AddWithValue("@e", Session["email"]);
            cmd.Parameters.AddWithValue("@pp", p);
            cmd.ExecuteNonQuery();
            Response.Redirect(Request.Url.AbsoluteUri);

        }
    }
    public void DeletePostbtn_Click(object sender, EventArgs e)
    {
        var link = sender as LinkButton;
        int postId = int.Parse(link.Attributes["myParam"].ToString());

        try
        {

            SqlCommand cmd = new SqlCommand("delete  from post where postid=@pid", con);

            cmd.Parameters.AddWithValue("@pid", postId);
            con = new SqlConnection(str);
            con.Open();
            cmd.ExecuteNonQuery();


            Response.Redirect("home.aspx?status=2");


        }
        catch (Exception exp)
        {
        }
    }

}