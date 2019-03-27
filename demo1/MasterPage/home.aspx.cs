using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace demo1.MasterPage
{
    public partial class container : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void DataList1_ItemCommand(object source, DataListCommandEventArgs e)
        {
            if (e.CommandName == "ViewDetail")
            {
                Response.Redirect("DetailBooks.aspx?ID=" + e.CommandArgument.ToString());
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {

        }
    }
}