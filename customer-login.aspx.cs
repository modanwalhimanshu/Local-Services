using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
public partial class customer_login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    static vedasolution obj = new vedasolution();
    protected void btn_c_login2_Click(object sender, EventArgs e)
    {
        if (employee_email1.Text == "")
        {
            lbl_employee_email.Text = "Enter your Email Id";
            employee_email1.Focus();
            return;

        }
        if (employee_email1.Text != "")
        {
            lbl_employee_email.Text = "";
        }
        if (employee_password2.Text == "")
        {
            lbl_employee_password.Text = "Enter your Password";
            lbl_employee_password.Focus();
            return;

        }
        if (employee_password2.Text != "")
        {
            lbl_employee_password.Text = "";
        }
        DataTable dt = obj.fetch_data_as("select active_status,name,mobile_no,password from customer_signup where email_id='" + employee_email1.Text + "' and password='" + employee_password2.Text + "'");
        if (dt.Rows.Count > 0)
        {

            foreach (DataRow r in dt.Rows)
            {
                if (r["active_status"].ToString() == "True")
                {
                    
                    
                    Session["name"] = r["name"].ToString();
                    Session["mobileno"] = r["mobile_no"].ToString();
                    Session["cus_email_id"] = employee_email1.Text;
                    Session["password"] = r["password"].ToString();
                    Response.Redirect("customer-payment.aspx");
                    
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


    protected void lbn_c_signup_Click(object sender, EventArgs e)
    {
        Response.Redirect("customer-signup.aspx");
    }
    
}