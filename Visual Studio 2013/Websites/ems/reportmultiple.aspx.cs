using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void uniqueid_Click(object sender, EventArgs e)
    {
        Response.Redirect("Report.aspx");
    }
    protected void empno_Click(object sender, EventArgs e)
    {
        Response.Redirect("reportusingempno.aspx");
    }
    protected void gender_Click(object sender, EventArgs e)
    {
        Response.Redirect("reportusinggender.aspx");
    }
}