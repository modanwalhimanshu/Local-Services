using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Security;
using System.Data;
using System.Text;

public partial class ongoing_leads : System.Web.UI.Page
{vedasolution vs = new vedasolution();
    protected void Page_Load(object sender, EventArgs e)
    {
                
        if (Page.IsPostBack == false)
        {
            try
            {
                flag = 0;
                showalldataalldays();
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
        sds = vs.fetch_data_ds(@"SELECT Partner_Lead_Booking.id, Partner_Lead_Booking.Booking_No, Partner_Lead_Booking.Booked_Date as Booking_Date, 
                         Partner_Lead_Booking.Status, customer_signup.name as Name, customer_signup.mobile_no as Mobile, bookinginfo.house as House, bookinginfo.landmark as Landmark , bookinginfo.locality as Locality, 
                         bookinginfo.pick_a_date as Pick_Date  , bookinginfo.service_time as Service_Time
                   FROM  Partner_Lead_Booking INNER JOIN
                         bookinginfo ON Partner_Lead_Booking.Booking_No = bookinginfo.booking_No INNER JOIN
                         customer_signup ON bookinginfo.email_id = customer_signup.email_id where Partner_Lead_Booking.Partner_MobileNo=" + Session["p_mobno"].ToString() + " and Partner_Lead_Booking.Status='Booked' and bookinginfo.status='BOOKED' order by bookinginfo.Booking_Id desc");
        if (sds.Tables[0].Rows.Count > 0)
        {
            g1.DataSource = sds.Tables[0];
            g1.DataBind();
        }
        else
        {
            g1.DataSource = null;
            g1.DataBind();
        }
    }
//    public void showalldatatoday()
//    {
//        GridView1.DataSource = null;
//        GridView1.DataBind();
//        DataSet sds = new DataSet();
//        sds = vs.fetch_data_ds(@"SELECT Partner_Lead_Booking.id, Partner_Lead_Booking.Booking_No, Partner_Lead_Booking.Booked_Date as Booking_Date, 
//                         Partner_Lead_Booking.Status, customer_signup.name as Name, customer_signup.mobile_no as Mobile, bookinginfo.house as House, bookinginfo.landmark as Landmark , bookinginfo.locality as Locality, 
//                         bookinginfo.pick_a_date as Pick_Date  , bookinginfo.service_time as Service_Time
//                   FROM  Partner_Lead_Booking INNER JOIN
//                         bookinginfo ON Partner_Lead_Booking.Booking_No = bookinginfo.booking_No INNER JOIN
//                         customer_signup ON bookinginfo.email_id = customer_signup.email_id where Partner_Lead_Booking.Partner_MobileNo=" + Session["p_mobno"].ToString() + " and Partner_Lead_Booking.Status='Booked' and bookinginfo.pick_a_Date=convert(date, getdate()) and bookinginfo.status='BOOKED' order by bookinginfo.Booking_Id desc ");
//        if (sds.Tables[0].Rows.Count > 0)
//        {
//            GridView1.DataSource = sds.Tables[0];
//            GridView1.DataBind();
//        }
//    }
//    public void showalldatatommarow()
//    {
//        DataSet sds = new DataSet();
//        sds = vs.fetch_data_ds(@"SELECT Partner_Lead_Booking.id, Partner_Lead_Booking.Booking_No, Partner_Lead_Booking.Booked_Date as Booking_Date, 
//                         Partner_Lead_Booking.Status, customer_signup.name as Name, customer_signup.mobile_no as Mobile, bookinginfo.house as House, bookinginfo.landmark as Landmark , bookinginfo.locality as Locality, 
//                         bookinginfo.pick_a_date as Pick_Date  , bookinginfo.service_time as Service_Time
//                   FROM  Partner_Lead_Booking INNER JOIN
//                         bookinginfo ON Partner_Lead_Booking.Booking_No = bookinginfo.booking_No INNER JOIN
//                         customer_signup ON bookinginfo.email_id = customer_signup.email_id where Partner_Lead_Booking.Partner_MobileNo=" + Session["p_mobno"].ToString() + " and Partner_Lead_Booking.Status='Booked'and bookinginfo.pick_a_Date=convert(date,DATEADD(day,1,getdate())) and bookinginfo.status='BOOKED' order by bookinginfo.Booking_Id desc");
//        if (sds.Tables[0].Rows.Count > 0)
//        {
//            GridView2.DataSource = sds.Tables[0];
//            GridView2.DataBind();
//        }
//    }
//    public void showalldatanextTenDays()
//    {
//        DataSet sds = new DataSet();
//        sds = vs.fetch_data_ds(@"SELECT Partner_Lead_Booking.id, Partner_Lead_Booking.Booking_No, Partner_Lead_Booking.Booked_Date as Booking_Date, 
//                         Partner_Lead_Booking.Status, customer_signup.name as Name, customer_signup.mobile_no as Mobile, bookinginfo.house as House, bookinginfo.landmark as Landmark , bookinginfo.locality as Locality, 
//                         bookinginfo.pick_a_date as Pick_Date  , bookinginfo.service_time as Service_Time
//                   FROM  Partner_Lead_Booking INNER JOIN
//                         bookinginfo ON Partner_Lead_Booking.Booking_No = bookinginfo.booking_No INNER JOIN
//                         customer_signup ON bookinginfo.email_id = customer_signup.email_id where Partner_Lead_Booking.Partner_MobileNo=" + Session["p_mobno"].ToString() + " and Partner_Lead_Booking.Status='Booked'and bookinginfo.pick_a_Date between convert(date, getdate()) and convert(date,DATEADD(day,10,getdate())) and bookinginfo.status='BOOKED' order by bookinginfo.Booking_Id desc");
//        if (sds.Tables[0].Rows.Count > 0)
//        {
//            GridView3.DataSource = sds.Tables[0];
//            GridView3.DataBind();
//        }
//    }
    
    protected void  lnkbtnlogout_Click(object sender, EventArgs e)
{
          Response.Redirect("p_logout.aspx");
}
protected void  g1_SelectedIndexChanged(object sender, EventArgs e)
{
        GridViewRow r = g1.SelectedRow;
        pnlcontent.Visible = true;
        Session["c_bookingId"] = r.Cells[1].Text;
        Session["c_bookingNo"] = r.Cells[2].Text;
        Session["c_bookingDate"] = r.Cells[3].Text;
        lblcustname0.Text = r.Cells[5].Text + " : " + r.Cells[2].Text;

}
//protected void  GridView1_SelectedIndexChanged(object sender, EventArgs e)
//{
//        GridViewRow r = GridView1.SelectedRow;
//        pnldeactivated1.Visible = true;
//        Session["c_bookingNo"] = r.Cells[2].Text;
//        lblcustname1.Text = r.Cells[5].Text;
//}
//protected void  GridView2_SelectedIndexChanged(object sender, EventArgs e)
//{
//        GridViewRow r = GridView2.SelectedRow;
//        pnldeactivated2.Visible = true;
//        Session["c_bookingNo"] = r.Cells[2].Text;
//        lblcustname2.Text = r.Cells[5].Text;

//}
//protected void  GridView3_SelectedIndexChanged(object sender, EventArgs e)
//{
//        GridViewRow r = GridView3.SelectedRow;
//        pnldeactivated3.Visible = true;
//        Session["c_bookingNo"] = r.Cells[2].Text;
//        lblcustname3.Text = r.Cells[5].Text;

//}
//protected void  btnclose5_Click(object sender, EventArgs e)
//{
//    pnldeactivated3.Visible = false;
//}
//protected void  btnclose4_Click(object sender, EventArgs e)
//{
//    pnldeactivated2.Visible = false;
//}
//protected void  btnclose3_Click(object sender, EventArgs e)
//{
//    pnldeactivated1.Visible = false;
//}
protected void  btnclose2_Click(object sender, EventArgs e)
{
    pnlcontent.Visible = false;
}
//protected void btnactivate_Click(object sender, EventArgs e)
//{

//    int a = 0;
//    a = vs.g_dml_query("update Partner_Lead_Booking set Status='Closed',close_only_date='" + DateTime.Now.Date + "',Closed_Date='" + DateTime.Now.ToString() + "' where Booking_No=" + Session["c_bookingNo"].ToString() + "");
//    if (a == 0)
//    {
//        lblmsgpopup1.Text = "Not Closed";
//    }
//    else
//    {
//        lblmsgpopup1.Text = "Closed";
//        showalldatatoday();
//        showalldataalldays();
//        showalldatanextTenDays();
//        showalldatatommarow();
//    }
  

//}
//protected void btnactivate1_Click(object sender, EventArgs e)
//{
//    int a = 0;
//    a = vs.g_dml_query("update Partner_Lead_Booking set Status='Closed',close_only_date='" + DateTime.Now.Date + "',Closed_Date='" + DateTime.Now.ToString() + "' where Booking_No=" + Session["c_bookingNo"].ToString() + "");
//    if (a == 0)
//    {
//        lblmsgpopup1.Text = "Not Closed";
//    }
//    else
//    {
//        lblmsgpopup1.Text = "Closed";
//        showalldatatoday();
//        showalldataalldays();
//        showalldatanextTenDays();
//        showalldatatommarow();
//    }
 
//}
//protected void btnactivate2_Click(object sender, EventArgs e)
//{
//    int a = 0;
//    a = vs.g_dml_query("update Partner_Lead_Booking set Status='Closed',close_only_date='" + DateTime.Now.Date + "',Closed_Date='" + DateTime.Now.ToString() + "' where Booking_No=" + Session["c_bookingNo"].ToString() + "");
//    if (a == 0)
//    {
//        lblmsgpopup2.Text = "Not Closed";
//    }
//    else
//    {
//        lblmsgpopup2.Text = "Closed";
//        showalldatatoday();
//        showalldataalldays();
//        showalldatanextTenDays();
//        showalldatatommarow();
//    }
  
//}
//protected void btnactivate3_Click(object sender, EventArgs e)
//{
// int a = 0;
// a = vs.g_dml_query("update Partner_Lead_Booking set Status='Closed',close_only_date='" + DateTime.Now.Date + "',Closed_Date='" + DateTime.Now.ToString() + "' where Booking_No=" + Session["c_bookingNo"].ToString() + "");
//        if (a == 0)
//        {
//            lblmsgpopup3.Text = "Not Closed";
//        }
//        else
//        {
//            lblmsgpopup3.Text = "Closed";
//            showalldatatoday();
//            showalldataalldays();
//            showalldatanextTenDays();
//            showalldatatommarow();
//        }
 
//}
static int flag;
protected void btnadd_Click(object sender, EventArgs e)
{
    if (txtlabour.Text == "")
    {
        lblmsgadd.Text = "Enter your Labour Details";
        txtlabour.Focus();
        return;
    }
    if (txtlabourcharge.Text == "")
    {
        lblmsgadd.Text = "Enter your Labour charge";
        txtlabourcharge.Focus();
        return;
    }
    if (txtmaterial.Text == "")
    {
        lblmsgadd.Text = "Enter your material";
        txtmaterial.Focus();
        return;
    }
    if (txtmaterialamount.Text == "")
    {
        lblmsgadd.Text = "Enter your material charge";
        txtmaterialamount.Focus();
        return;
    }
    if (txtmaterialtax.Text == "")
    {
        lblmsgadd.Text = "Enter your material tax";
        txtmaterialtax.Focus();
        return;
    }
    lstmaterial.Items.Add(txtmaterial.Text);

    lstamount.Items.Add(txtmaterialamount.Text);
  
    lsttax.Items.Add(txtmaterialtax.Text);
  

    double amt, totamt, tax;
    amt = Convert.ToDouble(txttotal.Text);
    tax = Convert.ToDouble(txtttltax.Text);
   // totamt = Convert.ToDouble(txtgrndttl.Text);
    if (flag == 0)
    {
        amt = amt +Convert.ToDouble(txtlabourcharge.Text) + Convert.ToDouble(txtmaterialamount.Text);
        flag = 1;
    }
    else
    {
        amt = amt + Convert.ToDouble(txtmaterialamount.Text);
    }
    txttotal.Text = Convert.ToString(amt);
    tax = tax + Convert.ToDouble(txtmaterialtax.Text);
    txtttltax.Text = Convert.ToString(tax);
    totamt = amt + tax;
    totamt = totamt - Convert.ToDouble(txtdscnt.Text);
    txtgrndttl.Text = Convert.ToString(totamt);
    txtmaterialtax.Text = "0.0";
    txtmaterialamount.Text = "0.0";
    txtmaterial.Text = "";

}
protected void btnactivate_Click1(object sender, EventArgs e)
{
//closed without bill
    int b = 0;
    if (txtdiscription.Text == "")
    {
        lblmsgpopup4.Text = "Enter the Reason";
        txtdiscription.Focus();
        return;
    }
    b = vs.g_dml_query("insert into master_bill_info(Booking_no,Service_type,Reason,Entry_date,Curr_Date)values(" + Session["c_bookingNo"].ToString() + ",'Closed Without Bill','" + txtdiscription.Text + "','" + DateTime.Now.ToString() + "','" + DateTime.Now.Date + "')");
    if (b == 0)
    {
        lblmsggenbill.Text = "Bill not generated!";
    }
    else
    {
       
            vs.g_dml_query("update Partner_Lead_Booking set status='Closed',closed_date='" + DateTime.Now.ToString() + "',close_only_date='" + DateTime.Now.Date + "' where Booking_no=" + Session["c_bookingNo"].ToString() + "");
            lblmsgpopup4.Text = "Bill generated successfully.";
            showalldataalldays();
     
    }

}
protected void rdbtnservice_CheckedChanged(object sender, EventArgs e)
{
    
}
protected void rdbtnservice1_CheckedChanged(object sender, EventArgs e)
{
   

}
protected void rdbtnsrvce_SelectedIndexChanged(object sender, EventArgs e)
{
    //if (rdbtnsrvce.SelectedIndex > 0)
    //{
    //    lblmsgpopup0.Text = "Service Complited are Not ?";
    //    rdbtnsrvce.Focus();
    //    return;
    //}
    //if (rdbtnsrvce.SelectedIndex == 0)
    //{
    //    txtlabour.Enabled = true;
    //    txtlabourcharge.Enabled = true;
    //    txtmaterial.Enabled = true;
    //    txtmaterialamount.Enabled = true;
    //    txtmaterialtax.Enabled = true;
    //    txtdiscription.Enabled = false;
    //    int a = 0;
    //    a = vs.g_dml_query("insert into Master_Bill_Info(Id,Booking_No,Description_labour,Labour_Charges,Total_Amount,Tax,Discount,Grand_Total,Service_Type,Entry_date,Curr_Date)values(" + Session["c_bookingId"].ToString() + "," + Session["c_bookingNo"].ToString() + ",'" + txtlabour.Text + "'," + txtlabourcharge.Text + ",'" + txtmaterial.Text + "'," + txtmaterialamount.Text + "," + txtmaterialtax.Text + "," + txttotal.Text + "," + txtttltax.Text + "," + txtdscnt.Text + "," + txtgrndttl.Text + ",'" + txtmaterial.Text + "'," + Session["c_bookingDate"].ToString() + ",'" + DateTime.Now.ToString() + "')");
    //    if (a == 0)
    //    {
    //        lblmsgpopup0.Text = "Saved";
    //    }
    //    else
    //    {
    //        lblmsgpopup0.Text = "Not Saved";

            
    //    }
    //}
    //else
    //{
    //    txtlabour.Enabled = false;
    //    txtlabourcharge.Enabled = false;
    //    txtmaterial.Enabled = false;
    //    txtmaterialamount.Enabled = false;
    //    txtmaterialtax.Enabled = false;
    //    txtdiscription.Enabled = true;
    //    int a = 0;
    //    a = vs.g_dml_query("insert into Master_Bill_Info(Id,Booking_No,Reason,Entry_date,Curr_Date)values(" + Session["c_bookingId"].ToString() + "," + Session["c_bookingNo"].ToString() + "'" + txtdiscription.Text + "'," + Session["c_bookingDate"].ToString() + ",'" + DateTime.Now.ToString() + "')");
    //    if (a == 0)
    //    {
    //        lblmsgpopup0.Text = "Saved";
    //    }
    //    else
    //    {
    //        lblmsgpopup0.Text = "Not Saved";


    //    }
    //}
}
protected void btnclose2_Click1(object sender, EventArgs e)
{
    pnlcontent.Visible = false;
}
protected void btnstartservice_Click(object sender, EventArgs e)
{
    int b = 0;
    if (rbt1.Checked == false)
    {
        lblstartservice0.Text = "Select the Service Status";
        rbt1.Focus();
        return;
    }
    b = vs.g_dml_query("update Partner_Lead_Booking set start_service='" + DateTime.Now.ToString() + "' where booking_no=" + Session["c_bookingNo"].ToString() + "");
    if (b == 0)
    {
        lblstartservice0.Text = "Not Updated";
    }
    else
    {
        lblstartservice0.Text = "Updated";
    }
}
protected void btnremovefrmlist_Click(object sender, EventArgs e)
{
    if (lstmaterial.SelectedIndex == -1)
    {
        lblmsgadd.Text = "Select the material from the list.";
        lstmaterial.Focus();
        return;
    }
    int si = lstmaterial.SelectedIndex;
    lstmaterial.Items.RemoveAt(si);
    lstamount.Items.RemoveAt(si);
    lsttax.Items.RemoveAt(si);
}
protected void btngeneratebill_Click(object sender, EventArgs e)
{
    double chkval = Convert.ToDouble(txtgrndttl.Text);
    if (chkval < 1)
    {
        lblmsggenbill.Text = "Enter the Labour or Material Details, Bill not generated!";
        txtlabour.Focus();
        return;
    }
    int b = 0;
    b = vs.g_dml_query("insert into master_bill_info(Booking_no,Description_Labour,Labour_Charges,Total_Amount,Tax,Discount,Grand_Total,Service_type,Entry_date,Curr_Date)values(" + Session["c_bookingNo"].ToString() + ",'" + txtlabour.Text + "'," + txtlabourcharge.Text + "," + txttotal.Text + "," + txtttltax.Text + "," + txtdscnt.Text + "," + txtgrndttl.Text + ",'Closed With Bill','" + DateTime.Now.ToString() + "','" + DateTime.Now.Date + "')");
    if (b == 0)
    {
        lblmsggenbill.Text = "Bill not generated!";
    }
    else
    {
        long Bill_no=0;
        DataTable dt = vs.fetch_data_as("select Bill_No from master_bill_info where id=(select max(id) from master_bill_info)");
        foreach (DataRow r in dt.Rows)
        {
            Bill_no = Convert.ToInt64(r["Bill_No"].ToString());
        }
        for (int i = 0; i < lstmaterial.Items.Count; i++)
        {
            b = vs.g_dml_query("insert into Bill_Material_Details(Bill_No,Material_Name,Amount,Tax)values(" + Bill_no + ",'" + lstmaterial.Items[i].ToString() + "'," + lstamount.Items[i].ToString() + "," + lsttax.Items[i].ToString() + ")");

        }
        if (b == 0)
        {
            lblmsggenbill.Text = "Bill not generated!";
        }
        else
        {
            vs.g_dml_query("update Partner_Lead_Booking set status='Closed',closed_date='" + DateTime.Now.ToString() + "',close_only_date='" + DateTime.Now.Date + "' where Booking_no=" + Session["c_bookingNo"].ToString() + "");
            lblmsggenbill.Text = "Bill generated successfully.";
            showalldataalldays();
        }
    }
}
}
