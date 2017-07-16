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
    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["FormdetailsConnectionString"].ConnectionString);
        conn.Open();
        string checkuser = "SELECT count(*) from Logintable where Username='"+usn.Text+"'";
        SqlCommand comm = new SqlCommand(checkuser, conn);
        int temp = Convert.ToInt32(comm.ExecuteScalar().ToString());
        conn.Close();

        if(temp==1)
        {
            conn.Open();
            string passwordquery = "select Password from Logintable where Username='" + usn.Text + "'";
            SqlCommand passcomm = new SqlCommand(passwordquery, conn);
            string password = passcomm.ExecuteScalar().ToString();
            if(password==pwd.Text)
            {
                Session["New"]=usn.Text;
                Response.Redirect("detailsandreport.aspx");
            }
            else
            {
                Response.Write("password is not right");
            }
        }
        else
        {
            Response.Write("username not correct");
        }
    }
    protected void pwd_TextChanged(object sender, EventArgs e)
    {

    }
}