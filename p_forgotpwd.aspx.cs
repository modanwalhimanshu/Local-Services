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
        lblmsg1.Text = "";
        if (txtmobileno.Text == "")
        {
            lblmsg1.Text = "Enter your registered mobile no.";
            txtmobileno.Focus();
            return;
        }
        DataSet ds = new DataSet();
        ds = vs.fetch_data_ds("select status,name,city,service,mobile,email,pincode from PartnerInfo where mobile =" + txtmobileno.Text + "");
        if (ds.Tables[0].Rows.Count > 0)
        {
            string otp = vs.GeneratePassword();
            Session["s_otp"] = otp;
            Session["f_mobno"] = txtmobileno.Text;
            otp = "Your Veda Solution Account OTP is " + otp + " use this code to reset your account password";
            vs.send("vedasol", "123456", otp, txtmobileno.Text);
            Response.Redirect("p-reset-pwd.aspx");
        }
        else
        {
            lblmsg1.Text = "Invalid mobile no";
        }

    }
}