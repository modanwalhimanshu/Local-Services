using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class employee_signup : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    static vedasolution object1 = new vedasolution();
    protected void employee_sign_up_Click(object sender, EventArgs e)
    {
        if (employee_name.Text == "")
        {
            lblemployeename.Text = "Enter Your Name";
            employee_name.Focus();
            return;

        }
        if (employee_designation.SelectedIndex == 0)
        {
            lbldesignation.Text = "Enter Your Designation";
            employee_designation.Focus();
            return;
        }
        if (employee_address.Text == "")
        {
            lbladdress.Text = "Enter Your Address";
            employee_address.Focus();
            return;
        }
        if (pincode.Text == "")
        {
            lblpincode.Text = "Enter Pincode";
            pincode.Focus();
            return;
        }
        if (employee_mobileno.Text == "")
        {
            lblmobileno.Text = "Enter Your Mobile Number";
            employee_mobileno.Focus();
            return;
        }
        if (employee_email.Text == "")
        {
            lblemailid.Text = "Enter Your Email Id";
            employee_email.Focus();
            return;
        }
        if (employee_password.Text == "")
        {
            lbl_password.Text = "Enter Your Password";
            employee_password.Focus();
            return;
        }
        if (confirm_employee_password.Text == "")
        {
            lbl_cnf_pwd.Text = "Confirm Your Password";
            confirm_employee_password.Focus();
            return;
        }
        int employee_sign_up = 0;
        employee_sign_up = object1.g_dml_query("insert into employee_signup(fullname,designation,address,pincode,contect_no,mobile_no,remark,email_id,password,entrydate,active_status)values('" + employee_name.Text + "','" + employee_designation.SelectedItem.ToString() + "','" + employee_address.Text + "'," + pincode.Text + "," + employee_contectno.Text + "," + employee_mobileno.Text + ",'" + remark.Text + "','" + employee_email.Text + "','" + employee_password.Text + "','" + DateTime.Now.ToString() + "',0)");
        if (employee_sign_up == 0)
        {
            lblname.Text = "Not Saved";
        }
        else
        {
            lblname.Text = "Successfully Saved.";
        }
    }
    protected void lbn_signin_Click(object sender, EventArgs e)
    {
        Response.Redirect("employee-login.aspx");
    }
    protected void Chkterms_CheckedChanged(object sender, EventArgs e)
    {
      /*  if(!Chkterms.Checked)
        {
            lblname.Text = "Please agree with our terms and conditions";
        }
        else
        {

        }*/
    }
}