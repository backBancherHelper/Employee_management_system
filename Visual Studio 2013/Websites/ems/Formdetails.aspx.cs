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
        if (IsPostBack)
        {


            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["FormdetailsConnectionString"].ConnectionString);
            conn.Open();
            conn.Close();
        }
    }
    protected void Submit_Click(object sender, EventArgs e)
    {
        if (IsPostBack)
        {
            try
            {
                Guid newguid = Guid.NewGuid();
                SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["FormdetailsConnectionString"].ConnectionString);
                conn.Open();
                string insertquery = "insert into Formdetails (empno,firstname,middlename,lastname,dob,contact,gender,marital,designation,department,salary,address,uniqueid) values (@empno,@fname,@mname,@lname,@dob,@contact,@gender,@marital,@designation,@department,@salary,@address,@uid)";
                SqlCommand comm = new SqlCommand(insertquery, conn);
                comm.Parameters.AddWithValue("@empno", Employeeno.Text);
                comm.Parameters.AddWithValue("@fname", firstname.Text);
                comm.Parameters.AddWithValue("@mname", middlename.Text);
                comm.Parameters.AddWithValue("@lname", lastname.Text);
                comm.Parameters.AddWithValue("@dob", DOB.Text);
                comm.Parameters.AddWithValue("@contact", Contact.Text);
                comm.Parameters.AddWithValue("@gender", Gender.SelectedItem.ToString());
                comm.Parameters.AddWithValue("@marital", Marital.SelectedItem.ToString());
                comm.Parameters.AddWithValue("@designation", Designation.Text);
                comm.Parameters.AddWithValue("@department", Department.Text);
                comm.Parameters.AddWithValue("@salary", Salary.Text);
                comm.Parameters.AddWithValue("@address",Address.Text);
                comm.Parameters.AddWithValue("@uid", newguid.ToString());

                comm.ExecuteNonQuery();
                Response.Redirect("detailsandreport.aspx");
                conn.Close();
            }
            catch(Exception ex)
            {
                Response.Write("Error occured");
                Response.Write("error" + ex.ToString());
            }
        }

    }
    protected void btnReset_Click(object sender, EventArgs e)
    {
        Response.Redirect("Formdetails.aspx");
    }
    protected void btnGoBack_Click(object sender, EventArgs e)
    {
        Response.Redirect("detailsandreport.aspx");
    }
}
