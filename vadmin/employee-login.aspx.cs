using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;


public partial class employee_login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    static vedasolution obj = new vedasolution();
    protected void btnlogin_Click(object sender, EventArgs e)
    {
        if (employee_email.Text == "vadmin@gmail.com" && employee_password.Text == "#vedasollko99")
        {
            Session["emp_email_id"] = employee_email.Text;
            Response.Redirect("employee-home.aspx");
            return;
        }

        DataTable dt = obj.fetch_data_as("select active_status from employee_signup where email_id='" + employee_email.Text + "' and password='" + employee_password.Text + "'");
        if (dt.Rows.Count > 0)
        {

            foreach (DataRow r in dt.Rows)
            {
                if (r["active_status"].ToString() == "True")
                {
                    Session["emp_email_id"] = employee_email.Text;
                    Response.Redirect("employee-home.aspx");
                }
                else
                {
                    lblsignin.Text = "Access Denied....";
                }
            }
        }
        else
        {
            lblsignin.Text = "Invalid email-id or password";
        }
     
    }
    protected void lbn_signup_Click(object sender, EventArgs e)
    {
       // Response.Redirect("employee-signup.aspx");
    }
}