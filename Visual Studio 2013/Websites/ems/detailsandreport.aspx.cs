using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class detailsandreport : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if(Session["New"]!=null)
        {
            Label1.Text +=" "+Session["New"].ToString();
        }
    }
    protected void details_Click(object sender, EventArgs e)
    {
        Response.Redirect("Formdetails.aspx");
    }
    protected void report_Click(object sender, EventArgs e)
    {
        Response.Redirect("reportmultiple.aspx");
    }
    protected void logout_Click(object sender, EventArgs e)
    {
        Session["New"] = null;
        Response.Redirect("Login.aspx");
    }
}
