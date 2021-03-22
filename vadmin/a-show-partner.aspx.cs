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

            showalldata();
            showallactivateddata();
            showalldeactdata();
        }
        
    }
    public void showalldata()
    {
        GridView1.DataSource = null;
        GridView1.DataBind();
        DataSet ds = new DataSet();
        ds = vs.fetch_data_ds("select Partner_Id,Name,City,Service,Mobile as Mobile_No,Email as Email_Id,Password,EntryDate as Entry_Date from PartnerInfo where status=0 and activate_date is null order by partner_id desc");
        GridView1.DataSource = ds.Tables[0];
        GridView1.DataBind();
    }
    public void showalldeactdata()
    {
        GridView3.DataSource =null;
        GridView3.DataBind();
        DataSet ds = new DataSet();
        ds = vs.fetch_data_ds("select Partner_Id,Name,City,Service,Mobile as Mobile_No,Email as Email_Id,Password,DeActivate_Date,EntryDate as Entry_Date from PartnerInfo where status=0 and activate_date is not null order by partner_id desc");
        GridView3.DataSource = ds.Tables[0];
        GridView3.DataBind();
    }
    public void showallactivateddata()
    {
        GridView2.DataSource = null;
        GridView2.DataBind();
        DataSet ds = new DataSet();
        ds = vs.fetch_data_ds("select Partner_Id,Name,City,Service,Mobile as Mobile_No,Email as Email_Id,Password,Activate_Date,EntryDate as Entry_Date from PartnerInfo where status=1 order by partner_id desc");
        GridView2.DataSource = ds.Tables[0];
        GridView2.DataBind();
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

   
    }
       
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
       
        GridViewRow r = GridView1.SelectedRow;

        Session["p_partnerid"] = r.Cells[1].Text;
        Session["getmobileno"] = r.Cells[5].Text;

//        Response.Write("<script> window.open('a-show-partner-details.aspx'); </script>");
//Response.End();


        //string url = "a-show-partner-details.aspx";
        //StringBuilder sb = new StringBuilder();
        //sb.Append("<script type = 'text/javascript'>");
        //sb.Append("window.open('");
        //sb.Append(url);
        //sb.Append("');");
        //sb.Append("</script>");
        //ClientScript.RegisterStartupScript(this.GetType(),
        //        "script", sb.ToString());

        //Response.Write("<script type='text/javascript'>window.open ('a-show-partner-details.aspx','_blank');</script>");

        Response.Redirect("a-show-partner-details.aspx");
    }
    protected void btnclose_Click(object sender, EventArgs e)
    {
       // Panel21.Visible = false;
    }
    protected void btnactivate_Click(object sender, EventArgs e)
    {
        int a = 0;
        a = vs.g_dml_query("update PartnerInfo set status=1,Activate_Date='" + DateTime.Now.ToString() + "' where partner_id=" + Session["deact_partnerid"].ToString() + "");
        if (a == 0)
        {
            lblmsgpopup0.Text = "Not Activated";
        }
        else
        {
            lblmsgpopup0.Text = "Activated";
            showalldeactdata();
            showallactivateddata();
        }
    }
    protected void btnp_search_Click(object sender, EventArgs e)
    {
        GridView1.DataSource = null;
        GridView1.DataBind();
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
        DataSet dsn = new DataSet();
        dsn = vs.fetch_data_ds("select Partner_Id,Name,City,Service,Mobile as Mobile_No,Email as Email_Id,Password,EntryDate as Entry_Date from PartnerInfo where status=0 and activate_date is null and entrydate between '" + txtfromdate0.Text + "' and '" + txttodate.Text + "' order by partner_id desc");
        if (dsn.Tables[0].Rows.Count > 0)
        {
            GridView1.DataSource = dsn.Tables[0];
            GridView1.DataBind();
        }
        else
        {
            lblmsg.Text = "No Data Found";
        }
    }
    protected void chkByDate_CheckedChanged(object sender, EventArgs e)
    {
        if (chkByDate.Checked == true)
        {
            btnp_search.Enabled = true;
        }
        else
        {
            btnp_search.Enabled = false;
            txtfromdate0.Text = "";
            txttodate.Text = "";
            showalldata();
        }
    }
    protected void Button1_Click1(object sender, EventArgs e)
    {
      //  Panel23.Visible = true;
    }
    protected void btnp_search0_Click(object sender, EventArgs e)
    {
        GridView2.DataSource =null;
        GridView2.DataBind();
        if (txtfromdate1.Text == "")
        {
            lblmsg.Text = "Select the From date";
            txtfromdate1.Focus();
            return;
        }
        if (txttodate0.Text == "")
        {
            lblmsg.Text = "Select the To date";
            txttodate0.Focus();
            return;
        }
        DataSet dsn = new DataSet();
        dsn = vs.fetch_data_ds("select Partner_Id,Name,City,Service,Mobile as Mobile_No,Email as Email_Id,Password,Activate_Date,EntryDate as Entry_Date from PartnerInfo where status=1 and activate_date between '" + txtfromdate1.Text + "' and '" + txttodate0.Text + "' order by partner_id desc");
        if (dsn.Tables[0].Rows.Count > 0)
        {
            GridView2.DataSource = dsn.Tables[0];
            GridView2.DataBind();
        }
        else
        {
            lblmsg0.Text = "No Data Found";
        }
    }
    protected void chkByDate1_CheckedChanged(object sender, EventArgs e)
    {
        if (chkByDate0.Checked == true)
        {
            btnp_search0.Enabled = true;
        }
        else
        {
            btnp_search0.Enabled = false;
            txtfromdate1.Text = "";
            txttodate0.Text = "";
            showallactivateddata();
        }
    }
    protected void GridView2_SelectedIndexChanged(object sender, EventArgs e)
    {
        GridViewRow r1 = GridView2.SelectedRow;
        Session["act_partnerid"] = r1.Cells[1].Text;
        lblpartnername.Text = r1.Cells[2].Text;
        pnldeactivated.Visible = true;

    }
    protected void btnclose1_Click(object sender, EventArgs e)
    {
        pnldeactivated.Visible = false;
    }
    protected void btndeactivate_Click(object sender, EventArgs e)
    {
        int a = 0;
        a = vs.g_dml_query("update PartnerInfo set status=0,DeActivate_Date='" + DateTime.Now.ToString() + "' where partner_id=" + Session["act_partnerid"].ToString() + "");
        if (a == 0)
        {
            lblmsgpopup.Text = "Not De-Activated";
        }
        else
        {
            lblmsgpopup.Text = "De-Activated";
            showallactivateddata();
            showalldeactdata();
        }
    }
    protected void chkByDate2_CheckedChanged(object sender, EventArgs e)
    {
        if (chkByDate1.Checked == true)
        {
            btnp_search1.Enabled = true;
        }
        else
        {
            btnp_search1.Enabled = false;
            txtfromdate2.Text = "";
            txttodate1.Text = "";
            showalldeactdata();
        }
    }
    protected void btnp_search1_Click(object sender, EventArgs e)
    {
        GridView3.DataSource = null;
        GridView3.DataBind();
        if (txtfromdate2.Text == "")
        {
            lblmsg1.Text = "Select the From date";
            txtfromdate2.Focus();
            return;
        }
        if (txttodate1.Text == "")
        {
            lblmsg1.Text = "Select the To date";
            txttodate1.Focus();
            return;
        }
        DataSet dsn = new DataSet();
        dsn = vs.fetch_data_ds("select Partner_Id,Name,City,Service,Mobile as Mobile_No,Email as Email_Id,Password,DeActivate_Date,EntryDate as Entry_Date from PartnerInfo where status=0 and DeActivate_Date between '" + txtfromdate1.Text + "' and '" + txttodate0.Text + "' order by partner_id desc");
        if (dsn.Tables[0].Rows.Count > 0)
        {
            GridView3.DataSource = dsn.Tables[0];
            GridView3.DataBind();
        }
        else
        {
            lblmsg1.Text = "No Data Found";
        }
    }
    protected void btnclose2_Click(object sender, EventArgs e)
    {
        pnldeactivated0.Visible = false;
    }
    protected void GridView3_SelectedIndexChanged(object sender, EventArgs e)
    {
        GridViewRow r1 = GridView3.SelectedRow;
        Session["deact_partnerid"] = r1.Cells[1].Text;
        lblpartnername0.Text = r1.Cells[2].Text;
        pnldeactivated0.Visible = true;
    }
}