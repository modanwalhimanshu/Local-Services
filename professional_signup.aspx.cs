using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;


public partial class professional_signup : System.Web.UI.Page
{
    //MyConnection cc = new MyConnection();
    //ClientScriptManager cs;
  
    protected void Page_Load(object sender, EventArgs e)
    {

        if (Page.IsPostBack == false)
        {
            ddlservicetype.Text = Session["service"].ToString();
            P_txtmail.Text = "";
            P_txtmob.Text = Session["mobile"].ToString();
        }  
       
       
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        lblmsg1.Text = "";
        if (P_txtname.Text == "")
        {
            lblmsg1.Text = "Enter your name";
            P_txtname.Focus();
            return;
        }

        if (P_txtcity.Text == "")
        {
            lblmsg1.Text = "Enter your city";
            P_txtcity.Focus();
            return;
        }
        if (ddlservicetype.SelectedIndex == 0)
        {

            lblmsg1.Text = "  Select your service";
            ddlservicetype.Focus();
            return;
        }
        if (P_txtmob.Text == "")
        {
            lblmsg1.Text = "  Enter your Mobile";
            P_txtmob.Focus();
            return;
        }
        if (P_txtmail.Text == "")
        {
            lblmsg1.Text = "Enter your E-mail";
            P_txtmail.Focus();
            return;
        }
        if (P_txtpswd.Text == "")
        {
            lblmsg1.Text = "Enter your Password";
            P_txtpswd.Focus();
            return;
        }
        if (txtotp.Text == "")
        {
            lblmsg1.Text = "Enter your OTP";
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
        if (txtpincode.Text == "")
        {
            lblmsg1.Text = "Enter your pincode";
            txtpincode.Focus();
            return;
        }
        {

            SqlConnection cnn = new SqlConnection(@"Data Source=176.31.222.92;Initial Catalog=vikasnig_vedalko;Persist Security Info=True;User ID=vikasnig_vuser;Password=d9De2m?3");
            string sql1 = "select email from PartnerInfo where email='" +P_txtmail.Text+ "' ";
            SqlDataAdapter da = new SqlDataAdapter(sql1, cnn);
            DataSet ds = new DataSet();
            da.Fill(ds, "hg");
            if (ds.Tables["hg"].Rows.Count > 0)
            {
                lblmsg1.Text = "That E-mail is taken. Try another.";
                P_txtmail.Focus();
                return;
            }
            else
            {
                //string sql = "";

                //SqlCommand cm = new SqlCommand();
                //cm.CommandType = CommandType.Text;
                //cm.Connection = cnn;
                //cm.CommandText = sql;
                
                
                //cnn.Open();
                
                //cnn.Close();
                int hg = 0;

                hg = vs.g_dml_query("Insert into PartnerInfo(name,city,service,mobile,email,password,entrydate,status,otp,pincode,available)values('" + P_txtname.Text + "','" + P_txtcity.Text + "','" + ddlservicetype.Text + "'," + P_txtmob.Text + ",'" + P_txtmail.Text + "','" + P_txtpswd.Text + "','" + DateTime.Now.ToString() + "',0,'" + Session["s_otp"].ToString() + "'," + txtpincode.Text + ",'Available')");
                if (hg == 0)
                {
                    lblmsg1.Text = "Data NOT Saved..!..Please Retry'";
                }
                else
                {
              
                    P_txtname.Text = "";
                    P_txtcity.Text = "";
                    ddlservicetype.Text = "Select your service";
                    P_txtmob.Text = "";
                    P_txtmail.Text = "";
                    P_txtpswd.Text = "";
                    Response.Redirect("professional_login.aspx");
                }
            }
        }

    }
    static vedasolution vs = new vedasolution();
    protected void lnkresend_Click(object sender, EventArgs e)
    {
        lblmsg1.Text = "";
        string otp = vs.GeneratePassword();
        Session["s_otp"] = otp;
        otp = "Your Veda Solution Account OTP is " + otp + " use this code to reset your account password";
        vs.send("vedasol", "123456", otp, P_txtmob.Text);
        lblmsg1.Text = "OTP Sent successfully.";
    }
}
        //cs = Page.ClientScript;
        //if (P_txtname.Text == "" || P_txtcity.Text == "" || ddlservicetype.SelectedIndex == 0 || P_txtmob.Text == "" || P_txtmail.Text == "" || P_txtpswd.Text == "")
        //{
        //    cs.RegisterStartupScript(this.GetType(), "AlertRestrict", "alert('ALL Fields Are MANDATORY.....!');", true);
        //    return;
        //}
        
        //{
        //    string sql = "Insert into PartnerInfo(name,city,service,mobile,email,password,entrydate,status)values('" + P_txtname.Text + "','" + P_txtcity.Text + "','" + ddlservicetype.Text + "'," + P_txtmob.Text + ",'" + P_txtmail.Text + "','" + P_txtpswd.Text + "','" + DateTime.Now.ToString() + "',0)";
        //    int a = 0;
        //    a = cc.store_data_as(sql);
        //    if (a> 0)
        //    {
        //        cs.RegisterClientScriptBlock(this.GetType(), "AlertSuccess", "alert('Nice..! You are registered Successfully..! Please contact admin to activate your account.');window.location='Professional_login.aspx';", true);
                
               
        //    }
        //    else
        //    {

        //        cs.RegisterStartupScript(this.GetType(), "AlertFail", "alert('Data NOT Saved..!..Please Retry')", true);
        //    }
        //}

//    }


//}
