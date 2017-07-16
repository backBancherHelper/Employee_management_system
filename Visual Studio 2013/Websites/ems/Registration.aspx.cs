using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;


public partial class Registration : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (IsPostBack)
        {
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["FormdetailsConnectionString"].ConnectionString);
            conn.Open();
            string checkuser="SELECT count(*) from Logintable where Username='"+usn1.Text+"'";
            SqlCommand comm = new SqlCommand(checkuser, conn);
            int temp = Convert.ToInt32(comm.ExecuteScalar().ToString());
            if(temp==1)
            {
                Response.Write("user already exist");
            }

            conn.Close();
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        if (IsPostBack)
        {

            try
            {


                SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["FormdetailsConnectionString"].ConnectionString);
                conn.Open();
                string insertquery = "insert into Logintable (Username,Password,Contact) values (@user,@pass,@contact)";
                SqlCommand comm = new SqlCommand(insertquery, conn);
                comm.Parameters.AddWithValue("@user", usn1.Text);
                comm.Parameters.AddWithValue("@pass", pwd1.Text);
                comm.Parameters.AddWithValue("@contact", contact.Text);

                comm.ExecuteNonQuery();
                Response.Redirect("Login.aspx");
                conn.Close();
            }
            catch(Exception ex)
            {
                Response.Write("Error occured");
            }
        }
    }
}
