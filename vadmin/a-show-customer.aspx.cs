using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.Security;
using System.Web.UI.WebControls;
using System.Data;
using System.Text;
public partial class a_show_customer : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    vedasolution vs = new vedasolution();
    protected void btnc_search_Click(object sender, EventArgs e)
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
        dsn = vs.fetch_data_ds("select id as Customer_Id,name as Customer_Name,mobile_no as Mobile_No,email_id as Email_Id,password as Password,entry_date as Entry_Date,active_status as Active_Status from customer_signup where active_status=1 and delete_date is null and entry_date between '" + txtfromdate0.Text + "' and '" + txttodate.Text + "' order by id desc");
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
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
        GridViewRow r = GridView1.SelectedRow;

        Session["c_partnerid"] = r.Cells[1].Text;
        lblpartnername0.Text = r.Cells[2].Text;
        pnldeactivated0.Visible = true;
    }
    protected void btnclose2_Click(object sender, EventArgs e)
    {
        pnldeactivated0.Visible = false;
    }
    protected void btnactivate_Click1(object sender, EventArgs e)
    {
        if (txtdeactive_reason.Text == "")
        {
            lblmsgpopup0.Text = "Please Expalain De-Activate Reason";
            txtdeactive_reason.Focus();
            return;
        }
        int a = 0;
        a = vs.g_dml_query("update customer_signup set active_status=0,delete_date='" + DateTime.Now.ToString() + "',delete_reason='" + txtdeactive_reason.Text + "',delete_person='" + Session["emp_email_id"].ToString() + "' where id=" + Session["c_partnerid"].ToString() + "");
        if (a == 0)
        {
            lblmsgpopup0.Text = "Not Deactivated";
        }
        else
        {
            lblmsgpopup0.Text = "Deactivated";

        }
    }
    protected void btnp_search0_Click(object sender, EventArgs e)
    {
        GridView2.DataSource = null;
        GridView2.DataBind();
        if (txtfromdate1.Text == "")
        {
            lblmsg0.Text = "Select the From date";
            txtfromdate1.Focus();
            return;
        }
        if (txttodate0.Text == "")
        {
            lblmsg0.Text = "Select the To date";
            txttodate0.Focus();
            return;
        }
        DataSet dsn = new DataSet();
        dsn = vs.fetch_data_ds("select id as Customer_Id,name as Customer_Name,mobile_no as Mobile_No,email_id as Email_Id,password as Password,entry_date as Entry_Date,active_status as Active_Status from customer_signup where active_status=0 and active_date is null and entry_date between '" + txtfromdate1.Text + "' and '" + txttodate0.Text + "' order by id desc");
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
    protected void GridView2_SelectedIndexChanged(object sender, EventArgs e)
    {
        GridViewRow r1 = GridView2.SelectedRow;
        Session["act_customerid"] = r1.Cells[1].Text;
        lblpartnername.Text = r1.Cells[2].Text;
        pnldeactivated.Visible = true;
    }
    protected void btnclose1_Click(object sender, EventArgs e)
    {
        pnldeactivated.Visible = false;
    }
    protected void btndeactivate_Click(object sender, EventArgs e)
    {
        if (txtactive.Text == "")
        {
            lblmsgpopup.Text = "Please Expalain Activate Reason";
            txtactive.Focus();
            return;
        }
        int a = 0;
        a = vs.g_dml_query("update customer_signup set active_status=1,active_date='" + DateTime.Now.ToString() + "',active_reason='" + txtactive.Text + "',active_person='" + Session["emp_email_id"].ToString() + "' where id=" + Session["act_customerid"].ToString() + "");
        if (a == 0)
        {
            lblmsgpopup.Text = "Not Activated";
        }
        else
        {
            lblmsgpopup.Text = "Activated";

        }
    }
}