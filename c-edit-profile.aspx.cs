using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class c_edit_profile : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Page.IsPostBack == false)
        {
            c_txtname.Text = Session["name"].ToString();
            c_txtmobileno.Text = Session["mobileno"].ToString();
            c_txtemail.Text = Session["cus_email_id"].ToString();
            
        }
    }
    vedasolution vs = new vedasolution();
    protected void btn_update_Click(object sender, EventArgs e)
    {
        if (c_txtname.Text == "")
        {
            lblemployee_name.Text = "Enter your name";
            c_txtname.Focus();
            return;

        }
        if (c_txtname.Text != "")
        {
            lblemployee_name.Text = "";
        }
        if (c_txtmobileno.Text == "")
        {
            lblemployee_mobileno.Text = "Enter your mobile No";
            c_txtmobileno.Focus();
            return;
        }
        if (c_txtmobileno.Text != "")
        {
            lblemployee_mobileno.Text = "";

        }
        if (c_txtemail.Text == "")
        {
            lblemployee_email.Text = "Enter your Email Address";
            c_txtemail.Focus();
            return;
        } if (c_txtemail.Text != "")
        {
            lblemployee_email.Text = "";

        }
        

        {
            int edit_pro = 0;
            edit_pro = vs.g_dml_query("update customer_signup set name='" + c_txtname.Text + "',mobile_no=" + c_txtmobileno.Text + ",email_id='" + c_txtemail.Text + "' where email_id='" + Session["cus_email_id"].ToString() + "'");

            if (edit_pro == 0)
            {
                lblmsg.Text = "Not Updated....";
            }
            else
            {
                lblmsg.Text = "Your profile is successfully updated....";
            }
        }
    }
}