using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net.Mail;
using System.Net;
using System.IO;
using System.Data;
using System.Data.SqlClient;

public partial class Become_Professional : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button2_Click(object sender, EventArgs e)
    {
    }
    
  vedasolution vs = new vedasolution();
    protected void Button2_Click1(object sender, EventArgs e)
    {
        try
        {
            if (ddlservicetype.SelectedIndex == 0)
            {

                lblmsg.Text = "Select your service";
                ddlservicetype.Focus();
                return;
            }
            if (P_txtmob.Text == "")
            {
                lblmsg.Text = "Enter your Mobile No";
                P_txtmob.Focus();
                return;
            }

            DataSet ds = new DataSet();
            ds = vs.fetch_data_ds("select status from PartnerInfo where mobile =" + P_txtmob.Text + "");

            if (ds.Tables[0].Rows.Count > 0)
            {
                lblmsg.Text = "This mobile no. is already exists. please change!";
                P_txtmob.Focus();
                return;
            }
            else
            {
                Session["service"] = ddlservicetype.Text;
                Session["mobile"] = P_txtmob.Text;
                string otp = vs.GeneratePassword();
                Session["s_otp"] = otp;
                otp = "Your Veda Solution Account OTP is " + otp + " use this code to sign up your account";
                vs.send("vedasol", "123456", otp, P_txtmob.Text);

                Response.Redirect("professional_signup.aspx");
            }
        }
        catch
        {

        }

    }
}