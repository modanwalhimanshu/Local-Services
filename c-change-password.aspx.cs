using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class c_change_password : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    vedasolution oj = new vedasolution();
    protected void btn_c_change_pwd_Click(object sender, EventArgs e)
    {
        if (old_pwd.Text == "")
        {
            lbl_old_pwd.Text = "Enter your old Password";
            old_pwd.Focus();
            return;
        }
        if (old_pwd.Text != "")
        {
            lbl_old_pwd.Text = "";
        }
        if (c_new_pwd.Text == "")
        {
            lbl_c_new_pwd.Text = "Enter your new Password";
            c_new_pwd.Focus();
            return;
        }

        if (old_pwd.Text == c_new_pwd.Text)
        {
            lbl_c_new_pwd.Text = "Old and new password can't be same.";
            c_new_pwd.Focus();
            return;
        }
        if (c_new_pwd.Text != "")
        {
            lbl_c_new_pwd.Text = "";
        }
        if (confirm_pwd.Text == "")
        {
            lbl_confirm_pwd.Text = "Confirm your new Password";
            confirm_pwd.Focus();
            return;
        }
        if (confirm_pwd.Text != "")
        {
            lbl_confirm_pwd.Text = "";
        }
        if (c_new_pwd.Text != confirm_pwd.Text)
        {
            lbl_confirm_pwd.Text = "Password not matched";
            confirm_pwd.Focus();
            return;
        }


        DataTable dt = oj.fetch_data_as("select password from customer_signup where email_id='" + Session["cus_email_id"].ToString() + "'");

        foreach (DataRow r in dt.Rows)
        {
            if (r["password"].ToString() != old_pwd.Text)
            {
                lbl_old_pwd.Text = "Wrong old password";
                old_pwd.Focus();
               
            }
            else if (r["password"].ToString() == old_pwd.Text)

            {
                lbl_old_pwd.Text = "";
                
            }


            int change_pwd = 0;


            change_pwd = oj.g_dml_query("update customer_signup set  password='" + c_new_pwd.Text + "' where email_id='" + Session["cus_email_id"].ToString() + "'");

            if (change_pwd == 0)
            {
                lbl_change_msg.Text = "Wrong Old Password";
            }
            else
            {
                lbl_change_msg.Text = "Updated";
            }
            old_pwd.Text = "";

            c_new_pwd.Text = "";

            confirm_pwd.Text = "";
        }
    }
}