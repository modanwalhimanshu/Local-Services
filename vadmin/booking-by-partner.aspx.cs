using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Security;
using System.Data;
using System.Text;


public partial class vadmin_booking_by_partner : System.Web.UI.Page
{
    vedasolution vs = new vedasolution();
   
    protected void Page_Load(object sender, EventArgs e)
    {

        if (Page.IsPostBack == false)
        {
            showalldatatoday();
           
        }
    }

    public void showalldatatoday()
    {
        DataSet sds = new DataSet();
        sds = vs.fetch_data_ds(@"select bookinginfo.booking_no,Partner_Lead_Booking.Partner_MobileNo, Partner_Lead_Booking.Booked_Date, Partner_Lead_Booking.Status, 
                         customer_signup.name, customer_signup.mobile_no, bookinginfo.service_name, bookinginfo.service_time, bookinginfo.pick_a_date, 
                         bookinginfo.locality, bookinginfo.landmark, bookinginfo.house, bookinginfo.entrydate
FROM            bookinginfo INNER JOIN
                         Partner_Lead_Booking INNER JOIN
                         PartnerInfo ON Partner_Lead_Booking.Partner_MobileNo = PartnerInfo.mobile ON bookinginfo.booking_no = Partner_Lead_Booking.Booking_No INNER JOIN
                         customer_signup ON bookinginfo.email_id = customer_signup.email_id where partner_lead_booking.status='Booked' and bookinginfo.pick_a_Date=convert(date, getdate()) order by bookinginfo.Booking_Id desc ");
        if (sds.Tables[0].Rows.Count > 0)
        {
            GridView1.DataSource = sds.Tables[0];
            GridView1.DataBind();
        }
    }
        protected void btnc_search1_Click(object sender, EventArgs e)
        {
            if (txtfromdate1.Text == "")
            {
                lblmsg1.Text = "Select the From date";
                txtfromdate1.Focus();
                return;
            }
            if (txttodate1.Text == "")
            {
                lblmsg1.Text = "Select the To date";
                txttodate1.Focus();
                return;
            }

            DataSet sds = new DataSet();
            sds = vs.fetch_data_ds(@"select bookinginfo.booking_no,Partner_Lead_Booking.Partner_MobileNo, Partner_Lead_Booking.Booked_Date, Partner_Lead_Booking.Status, 
                         customer_signup.name, customer_signup.mobile_no, bookinginfo.service_name, bookinginfo.service_time, bookinginfo.pick_a_date, 
                         bookinginfo.locality, bookinginfo.landmark, bookinginfo.house, bookinginfo.entrydate
FROM            bookinginfo INNER JOIN
                         Partner_Lead_Booking INNER JOIN
                         PartnerInfo ON Partner_Lead_Booking.Partner_MobileNo = PartnerInfo.mobile ON bookinginfo.booking_no = Partner_Lead_Booking.Booking_No INNER JOIN
                         customer_signup ON bookinginfo.email_id = customer_signup.email_id where partner_lead_booking.status='Booked' and bookinginfo.pick_a_Date between '" + txtfromdate1.Text + "' and '" + txttodate1.Text + "' order by bookinginfo.Booking_Id desc ");
            if (sds.Tables[0].Rows.Count > 0)
            {
                GridView2.DataSource = sds.Tables[0];
                GridView2.DataBind();
            }
            else
            {
                lblmsg1.Text = "No Data Found";
            }
        }
}