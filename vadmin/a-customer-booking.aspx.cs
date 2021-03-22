using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Text;


public partial class vadmin_a_customer_booking : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    vedasolution vs = new vedasolution();
    SqlConnection sqcn = new SqlConnection(@"Data Source=176.31.222.92;Initial Catalog=vikasnig_vedalko;Persist Security Info=True;User ID=vikasnig_vuser;Password=d9De2m?3");

   
    protected void btnc_search_Click(object sender, EventArgs e)
    {
        if (txtfromdate0.Text == "")
        {
            lblmsg.Text = "Select the From date";
            txtfromdate0.Focus();
            return;
        }
        if (txttodate.Text == "")
        {
            lblmsg.Text = "Select the To date";
            txttodate.Focus();
            return;
        }

        string sql = "select booking_no as Booking_No,email_id as Email_Id,service_name as Service_Name,house as House_No,landmark as Landmark,locality as Locality,pincode as Pincode,pick_a_date as Pick_a_Date,service_time as Service_Time,entrydate as Entry_Date,status as Status from bookinginfo where status='OPEN' and pick_a_date between '" + txtfromdate0.Text + "' and '" + txttodate.Text + "' order by booking_no desc";
        SqlDataAdapter da = new SqlDataAdapter(sql, sqcn);
        DataSet ds = new DataSet();
        da.Fill(ds, "a");
        if (ds.Tables["a"].Rows.Count > 0)
        {
            GridView1.DataSource = ds.Tables["a"];
            GridView1.DataBind();
        }
        else
        {
            lblmsg.Text = "No Data Found";
        }
    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
        GridViewRow r1 = GridView1.SelectedRow;
        Session["act_bookingno"] = r1.Cells[1].Text;
        lblpartnername.Text = r1.Cells[1].Text;
        pnldeactivated.Visible = true;
    }
    protected void btnclose1_Click(object sender, EventArgs e)
    {
        pnldeactivated.Visible = false;
    }
    protected void btncancel_Click(object sender, EventArgs e)
    {
        if (txtdelete_reason.Text == "")
        {
            lblmsgpopup.Text = "Enter your delete reason.";
            txtdelete_reason.Focus();
            return;
        }
        if (txtdelete_reason.Text != "")
        {
            lblmsgpopup.Text = "";
        }
        int a = 0;
        a = vs.g_dml_query("update bookinginfo set status='CANCEL',delete_person=" + Session["emp_email_id"].ToString() + ",delete_reason='" + txtdelete_reason.Text + "',delete_date='" + DateTime.Now.ToString() + "' where booking_no=" + Session["act_bookingno"].ToString() + "");
        if (a == 0)
        {
            lblmsgpopup.Text = "Not Cancelled";
        }
        else
        {
            lblmsgpopup.Text = "Booking Cancelled";

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

        string sql = "select booking_no as Booking_No,email_id as Email_Id,service_name as Service_Name,house as House_No,landmark as Landmark,locality as Locality,pincode as Pincode,pick_a_date as Pick_a_Date,service_time as Service_Time,entrydate as Entry_Date,status as Status,delete_date as Cancel_Date,delete_reason as Cancel_Reason from bookinginfo where status='CANCEL' and delete_date between '" + txtfromdate1.Text + "' and '" + txttodate1.Text + "' order by booking_no desc";
        SqlDataAdapter da = new SqlDataAdapter(sql, sqcn);
        DataSet ds = new DataSet();
        da.Fill(ds, "a");
        if (ds.Tables["a"].Rows.Count > 0)
        {
            GridView2.DataSource = ds.Tables["a"];
            GridView2.DataBind();
        }
        else
        {
            lblmsg1.Text = "No Data Found";
        }
    }
}