using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.IO;
using System.Data.SqlClient;
public partial class P_EditProfil : System.Web.UI.Page
{
    SqlConnection cnn = new SqlConnection(@"Data Source=176.31.222.92;Initial Catalog=vikasnig_vedalko;Persist Security Info=True;User ID=vikasnig_vuser;Password=d9De2m?3");
    static vedasolution vs = new vedasolution();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Page.IsPostBack == false)
           
        {
            try
            {
                P_partnerimage.ImageUrl = "http://vedasolution.com/P_partnerimage/" + Session["p_mobno"].ToString() + ".jpg";
                //P_partnerimage.ImageUrl = "~/P_partnerimage/" + Session["p_mobno"].ToString() + ".jpg";
                DataTable dt = vs.fetch_data_as("select status,name,city,service,mobile,email,pincode,dateofbirth,address,alternaremobno,qualification,experience from PartnerInfo where mobile =" + Session["p_mobno"].ToString() + "");
                foreach (DataRow r in dt.Rows)
                {
                    P_txtname.Text = r["name"].ToString();
                    P_txtcity.Text = r["city"].ToString();
                    ddlservicetype.Text = r["service"].ToString();
                    P_txtmob.Text = r["mobile"].ToString();
                    P_txtmail.Text = r["email"].ToString();
                    P_txtname2.Text = r["name"].ToString();
                    txtpincode.Text = r["pincode"].ToString();
                    txtads.Text = r["address"].ToString();
                    P_dob.Text = r["dateofbirth"].ToString();
                    P_altrntmob.Text = r["alternaremobno"].ToString();
                    QualificationList.Text = r["qualification"].ToString();
                    experienceList.Text = r["experience"].ToString();
                }
                if (Session["p_mobno"].ToString() != "")
                {

                }
            }
            catch
            {
                Response.Redirect("sessionexpired.aspx");
            }
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        try
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
            if (P_dob.Text == "")
            {
                lblmsg1.Text = "Enter your date of Birth";
                P_dob.Focus();
                return;
            }
            if (QualificationList.SelectedIndex == 0)
            {

                lblmsg1.Text = "  Select your Qualification";
                QualificationList.Focus();
                return;
            }
            if (experienceList.SelectedIndex == 0)
            {

                lblmsg1.Text = "  Select your Experience";
                experienceList.Focus();
                return;
            }
            if (P_txtmail.Text == "")
            {
                lblmsg1.Text = "Enter your E-mail";
                P_txtmail.Focus();
                return;
            }
            if (txtpincode.Text == "")
            {
                lblmsg1.Text = "Enter your Pincode";
                txtpincode.Focus();
                return;
            }
            if (txtads.Text == "")
            {
                lblmsg1.Text = "Enter your Address";
                txtads.Focus();
                return;
            }
            long amobno = 0;
            if (P_altrntmob.Text == "")
            {
                amobno = 0;
            }
            else
            {
                amobno = Convert.ToInt64(P_altrntmob.Text);
            }

            string sql = "update PartnerInfo set pincode=" + txtpincode.Text + ",name='" + P_txtname.Text + "',city='" + P_txtcity.Text + "',service='" + ddlservicetype.SelectedItem + "',mobile=" + P_txtmob.Text + ",alternaremobno=" + amobno + ",dateofbirth='" + P_dob.Text + "',qualification='" + QualificationList.SelectedItem + "',experience='" + experienceList.SelectedItem + "',address='" + txtads.Text + "' where mobile=" + Session["p_mobno"].ToString() + "";

            SqlCommand cm = new SqlCommand();
            cm.Connection = cnn;
            cm.CommandType = CommandType.Text;
            cm.CommandText = sql;

            int a = 0;
            cnn.Open();
            a = cm.ExecuteNonQuery();
            cnn.Close();
            if (a == 0)
            {
                lblmsg1.Text = "Not Updated";
            }
            else
            {
                lblmsg1.Text = "Your Profile Updated";
                P_txtname.Text = "";
                P_txtcity.Text = "";
                txtads.Text = "";
                P_dob.Text = "";
                P_altrntmob.Text = "";
                QualificationList.SelectedIndex = 0;
                experienceList.SelectedIndex = 0;
                ddlservicetype.SelectedIndex = 0;
                P_txtmob.Text = "";
                

            }
        }
        catch
        {

        }
       
    }
    protected void P_txtmail_TextChanged(object sender, EventArgs e)
    {

    }
    protected void lnkbtnhome_Click(object sender, EventArgs e)
    {
        Response.Redirect("new_leads.aspx");
    }
}
