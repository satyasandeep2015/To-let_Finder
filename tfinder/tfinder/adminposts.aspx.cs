using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class adminposts : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Menu1_MenuItemClick(object sender, MenuEventArgs e)
    {

    }
  
    protected void btnS_Click1(object sender, EventArgs e)
    {
        Session["userE"] = txtE.Text;
        // Session["id"] = int.Parse((dr["id"]).ToString()) ;
        Response.Redirect("http://localhost:59423/userposts.aspx");
    }
    protected void lbtnAp_Click(object sender, EventArgs e)
    {

    }
}