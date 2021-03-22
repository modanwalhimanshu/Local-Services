using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;



public partial class p_forgotpwd : System.Web.UI.Page
{
    vedasolution vs = new vedasolution();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Page.IsPostBack == false)
        {
            try
            {
            //    P_partnerimage.ImageUrl = "http://vedasolution.com/P_partnerimage/" + Session["p_mobno"].ToString() + ".jpg";
                //if (Session["p_mobno"].ToString() != "")
                //{

                //}
            }
            catch
            {
                Response.Redirect("sessionexpired.aspx");
            }
        }
    }
    
    protected void Button1_Click(object sender, EventArgs e)
    {
        lblmsg.Text = "";
        if (txtotp.Text == "")
        {
            lblmsg1.Text = "Enter the OTP";
            txtotp.Focus();
            return;
        }
        else
        {
            if (Session["s_otp"].ToString() != txtotp.Text)
            {
                lblmsg1.Text = "Invalid OTP";
                txtotp.Focus();
                return;
            }
        }
        if (P_txtpswd2.Text == "")
        {
            lblmsg1.Text = "Enter the New Password";
            P_txtpswd2.Focus();
            return;
        }
        if (P_txtpswd3.Text == "")
        {
            lblmsg1.Text = "Enter the Confirm New Password";
            P_txtpswd3.Focus();
            return;
        }
        int a = 0;
        a = vs.g_dml_query("update PartnerInfo set password='" + P_txtpswd2.Text + "' where mobile=" + Session["f_mobno"].ToString() + "");
        if (a == 0)
        {
            lblmsg1.Text = "Password not updated";
        }
        else
        {
            lblmsg1.Text = "Password is Changed";
            Session["f_mobno"] = "";

        }


        //DataSet ds = new DataSet();
        //ds = vs.fetch_data_ds("select status,name,city,service,mobile,email,pincode from PartnerInfo where mobile =" + txtmobileno.Text + "");
        //if (ds.Tables[0].Rows.Count > 0)
        //{
        //    string otp = vs.GeneratePassword();
        //    Session["s_otp"] = otp;
        //    otp = "Your Veda Solution Account OTP is " + otp + " use this code to reset your account password";
        //    vs.send("vedasol", "123456", otp, txtmobileno.Text);
        //    Response.Redirect("p-reset-pwd.aspx");
        //}
        //else
        //{
        //    lblmsg.Text = "Invalid mobile no";
        //}

    }
    protected void lnkresend_Click(object sender, EventArgs e)
    {
        
        lblmsg1.Text = "";
        string otp = vs.GeneratePassword();
        Session["s_otp"] = otp;
        otp = "Your Veda Solution Account OTP is " + otp + " use this code to reset your account password";
        vs.send("vedasol", "123456", otp, Session["f_mobno"].ToString());
        lblmsg1.Text = "OTP Sent successfully.";
    }
}