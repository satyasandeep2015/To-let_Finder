using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using a = System.Web.UI.WebControls;

public partial class search : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

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