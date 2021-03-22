using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class customer_signup : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    static vedasolution obj = new vedasolution();
    protected void employee_signup_Click(object sender, EventArgs e)
    {
        if (employee_name.Text == "")
        {
            lblemployee_name.Text = "Enter your name";
            employee_name.Focus();
            return;

        }
        if (employee_name.Text != "")
        {
            lblemployee_name.Text = "";
        }
        if (employee_mobileno.Text == "")
        {
            lblemployee_mobileno.Text = "Enter your mobile No";
            employee_mobileno.Focus();
            return;
        }
        if (employee_mobileno.Text != "")
        {
            lblemployee_mobileno.Text = "";

        }
        if (employee_email.Text == "")
        {
            lblemployee_email.Text = "Enter your Email Address";
            employee_email.Focus();
            return;
        } if (employee_email.Text != "")
        {
            lblemployee_email.Text = "";

        }
        if (employee_password.Text == "")
        {
            lblemployee_password.Text = "Enter your password";
            employee_password.Focus();
            return;
        }
        if (employee_password.Text != "")
        {
            lblemployee_password.Text = "";

        }
        if (confirm_employee_password.Text == "")
        {
            lblconfirm_employee_password.Text = "Enter confirm password";
            confirm_employee_password.Focus();
            return;
        }
        if (confirm_employee_password.Text != "")
        {
            lblconfirm_employee_password.Text = "";


        }

        DataTable dt = obj.fetch_data_as("select email_id from customer_signup where email_id='" + employee_email.Text + "'");
        if (dt.Rows.Count > 0)
        {
            lblname.Text = "Email Id already exist....";
        }



        else
        {

            int customer_signup = 0;
            /* employee_signup = obj.g_dml_query("insert into customer_table(name,mobile_no,email_id,password,confirm_password,entry_date,active_status)values('" + employee_name + "'," + employee_mobileno + ",'" + employee_email + "','" + employee_password + "','" + confirm_employee_password + "','" + DateTime.Now.ToString() + "',1)"); */

            customer_signup = obj.g_dml_query("insert into customer_signup(name,mobile_no,email_id,password,entry_date,active_status)values('" + employee_name.Text + "'," + employee_mobileno.Text + ",'" + employee_email.Text.ToString() + "','" + employee_password.Text + "','" + DateTime.Now.ToString() + "',1)");
            if (customer_signup == 0)
            {
                lblname.Text = "Not Saved";
            }
            else
            {
                lblname.Text = "Successfully Saved.";
            }
        }

    }
    protected void lbn_signin_Click(object sender, EventArgs e)
    {
        Response.Redirect("customer-login.aspx");
    }
}