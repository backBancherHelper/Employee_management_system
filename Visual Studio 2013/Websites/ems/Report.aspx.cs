using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

public partial class Report : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (IsPostBack)
        {
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["FormdetailsConnectionString"].ConnectionString);
            conn.Open();
            conn.Close();
        }

    }
    protected void find_Click(object sender, EventArgs e)
    {
        
        
    }
}

    
