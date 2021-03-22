using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Security;
using System.Data;
using System.Text;

public partial class new_leads : System.Web.UI.Page
{
    vedasolution vs = new vedasolution();
    protected void Page_Load(object sender, EventArgs e)
    {

       
        if (Page.IsPostBack == false)
        {
            try
            {
                showalldataalldays();
                showalldatatoday();
                showalldatatommarow();
                showalldatanextTenDays();

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
        sds = vs.fetch_data_ds(@"Select bookinginfo.Booking_No, bookinginfo.pick_a_Date as Booking_Date, bookinginfo.Service_Time as Time, 
                         bookinginfo.House,bookinginfo.Landmark,bookinginfo.Locality,bookinginfo.pincode as Pincode, bookinginfo.Email_Id as Email, customer_signup.name as Name, customer_signup.mobile_no as Mobile

FROM            PartnerInfo INNER JOIN
                         add_service ON PartnerInfo.service = add_service.service_name INNER JOIN
                         bookinginfo ON PartnerInfo.pincode = bookinginfo.pincode INNER JOIN
                         customer_signup ON bookinginfo.Email_Id = customer_signup.email_id where partnerinfo.mobile=" + Session["p_mobno"].ToString() + " and available='Available' and bookinginfo.status='OPEN' order by bookinginfo.Booking_Id desc");
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
    public void showalldatatoday()
    {
        DataSet sds = new DataSet();
        sds = vs.fetch_data_ds(@"Select bookinginfo.Booking_No, bookinginfo.pick_a_Date as Booking_Date, bookinginfo.Service_Time as Time, 
                         bookinginfo.House,bookinginfo.Landmark,bookinginfo.Locality,bookinginfo.pincode as Pincode, bookinginfo.Email_Id as Email, customer_signup.name as Name, customer_signup.mobile_no as Mobile

FROM            PartnerInfo INNER JOIN
                         add_service ON PartnerInfo.service = add_service.service_name INNER JOIN
                         bookinginfo ON PartnerInfo.pincode = bookinginfo.pincode INNER JOIN
                         customer_signup ON bookinginfo.Email_Id = customer_signup.email_id where partnerinfo.mobile=" + Session["p_mobno"].ToString() + " and available='Available' and bookinginfo.pick_a_Date=convert(date, getdate()) and bookinginfo.status='OPEN' order by bookinginfo.Booking_Id desc ");
        if (sds.Tables[0].Rows.Count > 0)
        {
            GridView1.DataSource = sds.Tables[0];
            GridView1.DataBind();
        }
    }
    public void showalldatatommarow()
    {
        DataSet sds = new DataSet();
        sds = vs.fetch_data_ds(@"Select bookinginfo.Booking_No, bookinginfo.pick_a_Date as Booking_Date, bookinginfo.Service_Time as Time, 
                         bookinginfo.House,bookinginfo.Landmark,bookinginfo.Locality,bookinginfo.pincode as Pincode, bookinginfo.Email_Id as Email, customer_signup.name as Name, customer_signup.mobile_no as Mobile

FROM            PartnerInfo INNER JOIN
                         add_service ON PartnerInfo.service = add_service.service_name INNER JOIN
                         bookinginfo ON PartnerInfo.pincode = bookinginfo.pincode INNER JOIN
                         customer_signup ON bookinginfo.Email_Id = customer_signup.email_id where partnerinfo.mobile=" + Session["p_mobno"].ToString() + " and available='Available' and bookinginfo.pick_a_Date=convert(date,DATEADD(day,1,getdate())) and bookinginfo.status='OPEN' order by bookinginfo.Booking_Id desc");
        if (sds.Tables[0].Rows.Count > 0)
        {
            GridView2.DataSource = sds.Tables[0];
            GridView2.DataBind();
        }
    }
    public void showalldatanextTenDays()
    {
        DataSet sds = new DataSet();
        sds = vs.fetch_data_ds(@"Select bookinginfo.Booking_No, bookinginfo.pick_a_Date as Booking_Date, bookinginfo.Service_Time as Time, 
                         bookinginfo.House,bookinginfo.Landmark,bookinginfo.Locality,bookinginfo.pincode as Pincode, bookinginfo.Email_Id as Email, customer_signup.name as Name, customer_signup.mobile_no as Mobile

FROM            PartnerInfo INNER JOIN
                         add_service ON PartnerInfo.service = add_service.service_name INNER JOIN
                         bookinginfo ON PartnerInfo.pincode = bookinginfo.pincode INNER JOIN
                         customer_signup ON bookinginfo.Email_Id = customer_signup.email_id where partnerinfo.mobile=" + Session["p_mobno"].ToString() + " and available='Available' and bookinginfo.pick_a_Date between convert(date, getdate()) and convert(date,DATEADD(day,10,getdate())) and bookinginfo.status='OPEN' order by bookinginfo.Booking_Id desc");
        if (sds.Tables[0].Rows.Count > 0)
        {
            GridView3.DataSource = sds.Tables[0];
            GridView3.DataBind();
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {

    }
    protected void LinkButton4_Click(object sender, EventArgs e)
    {
       
          
        
    }
    protected void LinkButton4_Click1(object sender, EventArgs e)
    {



        Response.Redirect("p_logout.aspx");

    //    try
    //    {
    //        Session.Abandon();
    //        FormsAuthentication.SignOut();
    //        Response.Cache.SetCacheability(HttpCacheability.NoCache);
    //        Response.Buffer = true;
    //        Response.ExpiresAbsolute = DateTime.Now.AddDays(-1d);
    //        Response.Expires = -1000;
    //        Response.CacheControl = "no-cache";
    //        Response.Redirect("Professional_login.aspx", true);
    //    }
    //    catch (Exception ex)
    //    {
    //        Response.Write(ex.Message);
    //    }
    }
        //protected void Page_Init(object Sender, EventArgs e)

        //{
        // Response.Cache.SetCacheability(HttpCacheability.NoCache);
        //   Response.Cache.SetExpires(DateTime.Now.AddSeconds(-1));
        //     Response.Cache.SetNoStore();
        //         }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
        GridViewRow r = GridView1.SelectedRow;
        pnldeactivated1.Visible = true;
        Session["c_bookingNo"] = r.Cells[1].Text;
        lblcustname1.Text = r.Cells[9].Text;
    }
    protected void GridView3_SelectedIndexChanged(object sender, EventArgs e)
    {
        GridViewRow r = GridView3.SelectedRow;
        pnldeactivated3.Visible = true;
        Session["c_bookingNo"] = r.Cells[1].Text;
        lblcustname3.Text = r.Cells[9].Text;
    }
    protected void g1_SelectedIndexChanged(object sender, EventArgs e)
    {
        GridViewRow r = g1.SelectedRow;
        pnldeactivated0.Visible = true;
        Session["c_bookingNo"] = r.Cells[2].Text;
        lblcustname0.Text = r.Cells[10].Text;
    }
    protected void btnactivate_Click(object sender, EventArgs e)
    {
        lblmsgpopup0.Text = "";
        int a = 0;
        a = vs.g_dml_query("insert into Partner_Lead_Booking(Booking_No,Partner_MobileNo,Booked_Date,Status)values(" + Session["c_bookingNo"].ToString() + "," + Session["p_mobno"].ToString() + ",'" + DateTime.Now.ToString() + "','Booked')");
        if (a == 0)
        {
            lblmsgpopup0.Text = "Not Booked";
        }
        else
        {
            lblmsgpopup0.Text = "Booked";

            a = vs.g_dml_query("update bookinginfo set Status='BOOKED' where Booking_No=" + Session["c_bookingNo"].ToString() + "");
            showalldatatoday();
            showalldataalldays();
            showalldatanextTenDays();
            showalldatatommarow();
        }
    }
    protected void btnclose2_Click(object sender, EventArgs e)
    {
        pnldeactivated0.Visible = false;
    }
    protected void GridView2_SelectedIndexChanged(object sender, EventArgs e)
    {
        GridViewRow r = GridView2.SelectedRow;
        pnldeactivated2.Visible = true;
        Session["c_bookingNo"] = r.Cells[1].Text;
        lblcustname2.Text = r.Cells[9].Text;
    }
    protected void btnactivate1_Click(object sender, EventArgs e)
    {
        lblmsgpopup1.Text = "";
        int a = 0;
        a = vs.g_dml_query("insert into Partner_Lead_Booking(Booking_No,Partner_MobileNo,Booked_Date,Status)values(" + Session["c_bookingNo"].ToString() + "," + Session["p_mobno"].ToString() + ",'" + DateTime.Now.ToString() + "','Booked')");
        if (a == 0)
        {
            lblmsgpopup1.Text = "Not Booked";
        }
        else
        {
            lblmsgpopup1.Text = "Booked";

            a = vs.g_dml_query("update bookinginfo set Status='CLOSED' where Booking_No=" + Session["c_bookingNo"].ToString() + "");
            showalldatatoday();
            showalldataalldays();
            showalldatanextTenDays();
            showalldatatommarow();
        }
    }
    protected void btnactivate2_Click(object sender, EventArgs e)
    {
        lblmsgpopup2.Text = "";
        int a = 0;
        a = vs.g_dml_query("insert into Partner_Lead_Booking(Booking_No,Partner_MobileNo,Booked_Date,Status)values(" + Session["c_bookingNo"].ToString() + "," + Session["p_mobno"].ToString() + ",'" + DateTime.Now.ToString() + "','Booked')");
        if (a == 0)
        {
            lblmsgpopup2.Text = "Not Booked";
        }
        else
        {
            lblmsgpopup2.Text = "Booked";

            a = vs.g_dml_query("update bookinginfo set Status='CLOSED' where Booking_No=" + Session["c_bookingNo"].ToString() + "");
            showalldatatoday();
            showalldataalldays();
            showalldatanextTenDays();
            showalldatatommarow();
        }
    }
    protected void btnactivate3_Click(object sender, EventArgs e)
    {
        lblmsgpopup3.Text = "";
        int a = 0;
        a = vs.g_dml_query("insert into Partner_Lead_Booking(Booking_No,Partner_MobileNo,Booked_Date,Status)values(" + Session["c_bookingNo"].ToString() + "," + Session["p_mobno"].ToString() + ",'" + DateTime.Now.ToString() + "','Booked')");
        if (a == 0)
        {
            lblmsgpopup3.Text = "Not Booked";
        }
        else
        {
            lblmsgpopup3.Text = "Booked";

            a = vs.g_dml_query("update bookinginfo set Status='CLOSED' where Booking_No=" + Session["c_bookingNo"].ToString() + "");
            showalldatatoday();
            showalldataalldays();
            showalldatanextTenDays();
            showalldatatommarow();
        }
    }
    protected void btnclose3_Click(object sender, EventArgs e)
    {
        pnldeactivated1.Visible = false;
    }
    protected void btnclose4_Click(object sender, EventArgs e)
    {
        pnldeactivated2.Visible = false;
    }
    protected void btnclose5_Click(object sender, EventArgs e)
    {
        pnldeactivated3.Visible = false;
    }
}