using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;


public partial class customer_payment : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            getdata();
        }
    }
    static vedasolution obj = new vedasolution();
    private void getdata()
    {
       lblsearchtype.Text = Session["searchtype"].ToString();
       DataTable dt = obj.fetch_data_as("select id from add_service where service_name='" + Session["searchtype"].ToString() + "'");
        int service_id = 0;

        foreach (DataRow r in dt.Rows)
        {
            service_id = int.Parse(r["id"].ToString());
        }

         dt = obj.fetch_data_as("select normal_pricing,amount from service_normal_pricing where service_id=" + service_id + "");

         lblnormal_pricing_val.Text = "";
        string n_amount = "";
        string n_prise = "";
        foreach (DataRow r in dt.Rows)
        {
            
            lblrate.Text = "Rate Card";
            n_prise = r["normal_pricing"].ToString();
            n_amount = r["amount"].ToString();

            string output = double.Parse(n_amount).ToString();
            lblnormal_pricing_val.Text = lblnormal_pricing_val.Text + "<ul>*&nbsp;" + n_prise + " : Rs. " + output + " /- <br /></ul>";
        }
    }
    
    protected void btnpayment_Click(object sender, EventArgs e)
    {
        if (rbtnonline.Checked == false || rbtncash.Checked == false)
        {
            lblmsg.Text = "Select an payment method";
        }
        /*   if(rbtnonline.Checked==true)
       {
             lblmsg.Text = "<center>Thank You.<venter/><br/>You have successfully registered";
         }
         else if(rbtncash.Checked==true)
         {
             lblmsg.Text = "<center>Thank You.<venter/><br/>You have successfully registered";
         } */

        if (rbtnonline.Checked == true || rbtncash.Checked == true)
        {
            SqlConnection sqcn = new SqlConnection(@"Data Source=176.31.222.92;Initial Catalog=vikasnig_vedalko;Persist Security Info=True;User ID=vikasnig_vuser;Password=d9De2m?3");
            SqlCommand cm = new SqlCommand();
            cm.Connection = sqcn;
            cm.CommandType = CommandType.StoredProcedure;
            cm.CommandText = "insert_booking_info";

            cm.Parameters.Add("email_id", SqlDbType.VarChar, 50);
            cm.Parameters["email_id"].Value = Session["cus_email_id"].ToString();

            cm.Parameters.Add("service_name", SqlDbType.VarChar, 50);
            cm.Parameters["service_name"].Value = Session["searchtype"].ToString();

            cm.Parameters.Add("house", SqlDbType.VarChar, 100);
            cm.Parameters["house"].Value = Session["house"].ToString();

            cm.Parameters.Add("landmark", SqlDbType.VarChar, 100);
            cm.Parameters["landmark"].Value = Session["landmark"].ToString();

            cm.Parameters.Add("locality", SqlDbType.VarChar, 100);
            cm.Parameters["locality"].Value = Session["locality"].ToString();

            int pincode;
            pincode = int.Parse(Session["pincode"].ToString());

            cm.Parameters.Add("pincode", SqlDbType.Int,6);
            cm.Parameters["pincode"].Value = pincode;

            cm.Parameters.Add("pick_a_date", SqlDbType.VarChar,50);
            cm.Parameters["pick_a_date"].Value= Session["pick_a_date"].ToString();

            cm.Parameters.Add("service_time", SqlDbType.VarChar, 50);
            cm.Parameters["service_time"].Value = Session["service_time"].ToString();

            

            int a = 0;
            sqcn.Open();
            a = cm.ExecuteNonQuery();
            sqcn.Close();
            if (a == 0)
            {
                lblmsg.Text = "Not Saved";
            }
            else
            {
                Response.Redirect("booking-confirmation.aspx");
            }
        }
    }
    
}