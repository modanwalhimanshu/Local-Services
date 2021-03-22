using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.IO;
using System.Data.SqlClient;
public partial class P_ChangePassword : System.Web.UI.Page
{
    SqlConnection cnn = new SqlConnection(@"Data Source=176.31.222.92;Initial Catalog=vikasnig_vedalko;Persist Security Info=True;User ID=vikasnig_vuser;Password=d9De2m?3");
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Page.IsPostBack == false)
        {
            try
            {
                P_partnerimage.ImageUrl = "http://vedasolution.com/P_partnerimage/" + Session["p_mobno"].ToString() + ".jpg";
                P_txtname2.Text = Request.Cookies["vsname"].Value;
                lblmsg2.Text = "Welcome " + Request.Cookies["vsname"].Value;
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
    protected void Button2_Click(object sender, EventArgs e)
    {
        try
        {
            if (P_txtpswd1.Text == "")
            {
                lblmsg1.Text = "Enter your old Password";
                P_txtpswd1.Focus();
                return;
            }
            if (P_txtpswd2.Text == "")
            {
                lblmsg1.Text = "Enter your new Password";
                P_txtpswd2.Focus();
                return;
            }
            if (P_txtpswd3.Text == "")
            {
                lblmsg1.Text = "confirm your new Password";
                P_txtpswd3.Focus();
                return;
            }
            if (P_txtpswd3.Text != P_txtpswd2.Text)
            {
                lblmsg1.Text = "Password not matched";
                P_txtpswd3.Focus();
                return;
            }
            SqlConnection cnn = new SqlConnection(@"Data Source=176.31.222.92;Initial Catalog=vikasnig_vedalko;Persist Security Info=True;User ID=vikasnig_vuser;Password=d9De2m?3");
            string sql = "(select password from PartnerInfo   where mobile= " + Session["p_mobno"].ToString() + " and password='" + P_txtpswd1.Text + "')";
            SqlDataAdapter da = new SqlDataAdapter(sql, cnn);
            DataSet ds = new DataSet();
            da.Fill(ds, "hg");
            if (ds.Tables["hg"].Rows.Count > 0)
            {
                string sql1 = "update PartnerInfo set password='" + P_txtpswd2.Text + "' where mobile=" + Session["p_mobno"].ToString() + "";

                SqlCommand cm = new SqlCommand();
                cm.Connection = cnn;
                cm.CommandType = CommandType.Text;
                cm.CommandText = sql1;

                int hg = 0;
                cnn.Open();
                hg = cm.ExecuteNonQuery();
                cnn.Close();
                if (hg == 0)
                {
                    lblmsg1.Text = "Password not changed";
                }
                else
                {
                    lblmsg1.Text = "Password is changed";
                    P_txtpswd1.Text = "";
                    P_txtpswd2.Text = "";
                    P_txtpswd3.Text = "";

                }
            }
            else
            {
                lblmsg1.Text = "your old password is incorrect";
                P_txtpswd1.Focus();
                return;
            }
        }
        catch
        {

        }

    }
}
      
       

       

    