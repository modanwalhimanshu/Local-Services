using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;


public partial class converted_leads : System.Web.UI.Page
{
    vedasolution vs = new vedasolution();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Page.IsPostBack == false)
        {
            try
            {
                //flag = 0;
                //showalldataalldays();
                // showalldatatoday();
                // showalldatatommarow();
                // showalldatanextTenDays();

                P_partnerimage.ImageUrl = "http://vedasolution.com/P_partnerimage/" + Session["p_mobno"].ToString() + ".jpg";

                P_txtname2.Text = Request.Cookies["vsname"].Value;
                if (Session["p_mobno"].ToString() != "")
                {

                }


            }
            catch
            {
                // Response.Redirect("sessionexpired.aspx");

            }
        }
    }
    public void showalldataalldays()
    {
        g1.DataSource = null;
        g1.DataBind();
        DataSet sds = new DataSet();
        sds = vs.fetch_data_ds(@"SELECT Master_Bill_Info.Bill_No, Master_Bill_Info.Booking_No, Master_Bill_Info.Grand_Total, Master_Bill_Info.Service_Type, Master_Bill_Info.Reason, 
                         Master_Bill_Info.Entry_Date, bookinginfo.Service_Name, bookinginfo.Pick_a_Date, bookinginfo.Service_Time, bookinginfo.Email_Id as Cust_Email_Id, customer_signup.Name as Cust_Name, 
                         customer_signup.Mobile_No as Cust_Mobile_No
FROM            Master_Bill_Info INNER JOIN
                         Partner_Lead_Booking ON Master_Bill_Info.Booking_No = Partner_Lead_Booking.Booking_No INNER JOIN
                         bookinginfo ON Master_Bill_Info.Booking_No = bookinginfo.booking_no INNER JOIN
                         customer_signup ON bookinginfo.email_id = customer_signup.email_id where Partner_Lead_Booking.status='Closed' and Partner_Lead_Booking.Partner_MobileNo=" + Session["p_mobno"].ToString() + " and Partner_Lead_Booking.Close_Only_Date between '" + txtfromdate2.Text + "' and '" + txttodate1.Text + "' order by bookinginfo.Booking_Id desc");

        if (sds.Tables[0].Rows.Count > 0)
        {
            g1.DataSource = sds.Tables[0];
            g1.DataBind();
        }
        else
        {
            g1.DataSource = null;
            g1.DataBind();
            lblmsg1.Text = "No Data Found!";
        }
    }
    protected void btnp_search1_Click(object sender, EventArgs e)
    {
        if (txtfromdate2.Text == "")
        {
            lblmsg1.Text = "Select the from date";
            txtfromdate2.Focus();
            return;
        }
        if (txttodate1.Text == "")
        {
            lblmsg1.Text = "Select the to date";
            txttodate1.Focus();
            return;
        }
        showalldataalldays();
    }
    protected void g1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
}