using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Security;
using System.Text;
using System.Data.SqlClient;
using System.IO;


public partial class vadmin_Customer_info : System.Web.UI.Page
{
    
    vedasolution vs = new vedasolution();
        
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Page.IsPostBack == false)
        {

            showdata();
            
        }
    }

    private void showdata()
    {
        GridView1.DataSource = null;
        GridView1.DataBind();
        DataSet ds = new DataSet();
        ds = vs.fetch_data_ds("select Id,name as Name,mobile_no as Mobile_No,email_id as Email_Id,password as Password,entry_date as Entry_Date from customer_signup");
        GridView1.DataSource = ds.Tables[0];
        GridView1.DataBind();
    }
    protected void btnp_search1_Click(object sender, EventArgs e)
    {
        GridView1.DataSource = null;
        GridView1.DataBind();
        if (txtmobileno.Text == "")
        {
            lblmsg1.Text = "Search Mobile No";
            txtmobileno.Focus();
            return;
        }
        DataSet dsn = new DataSet();
        dsn = vs.fetch_data_ds("select Id,name as Name,mobile_no as Mobile_No,email_id as Email_Id,password as Password,entry_date as Entry_Date from customer_signup where active_status=1 and mobile_no ='" + txtmobileno.Text + "'");
        if (dsn.Tables[0].Rows.Count > 0)
        {
            GridView1.DataSource = dsn.Tables[0];
            GridView1.DataBind();
        }
        else
        {
            lblmsg1.Text = "No Data Found";
        }
    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
        GridViewRow r = GridView1.SelectedRow;
        pnlupdate.Visible = true;

        txtc_name.Text = r.Cells[2].Text;
        txtc_mob.Text = r.Cells[3].Text;
       Session["c_email"] = r.Cells[4].Text;
       txtc_pwd.Text = r.Cells[5].Text;
       
       
    }
    protected void btnclose2_Click(object sender, EventArgs e)
    {
        pnlupdate.Visible = false;
    }
    protected void btnupdate_Click(object sender, EventArgs e)
        {
            if (txtc_name.Text == "")
            {
                lblmsgpopup0.Text = "Please enter your Name";
                txtc_name.Focus();
                return;
            }
            if (txtc_mob.Text == "")
            {
                lblmsgpopup0.Text = "Please enter your Mobile";
                txtc_mob.Focus();
                return;
            }
            if (txtc_pwd.Text == "")
            {
                lblmsgpopup0.Text = "Please enter your Password";
                txtc_pwd.Focus();
                return;
            }
        if (txtc_newpwd.Text == "")
        {
            lblmsgpopup0.Text = "Please enter your new password";
            txtc_newpwd.Focus();
            return;
        }
        if (txtc_cnfrmpwd.Text == "")
        {
            lblmsgpopup0.Text = "Please re-enter your new password";
            txtc_cnfrmpwd.Focus();
            return;
        }
        int a = 0;
        a = vs.g_dml_query("update customer_signup set name='" + txtc_name.Text + "', mobile_no=" + txtc_mob.Text + ", password='" + txtc_newpwd.Text + "' where email_id='" + Session["c_email"].ToString() + "'");
        if (a == 0)
        {
            lblmsgpopup0.Text = "Not Updated";
        }
        else
        {
            lblmsgpopup0.Text = "Updated";
        }
 
    }
    protected void imgbtn_Click(object sender, ImageClickEventArgs e)
    {
        Response.ClearContent();
        Response.AppendHeader("content-disposition", "attachment; filename=employee.xls");
        Response.ContentType = "application/ms-excel";
        StringWriter sw = new StringWriter();
        HtmlTextWriter htw = new HtmlTextWriter(sw);
        GridView1.RenderControl(htw);
        Response.Write(sw.ToString());
        Response.End();
    }
    public override void VerifyRenderingInServerForm(Control control)
    {
       // base.VerifyRenderingInServerForm(control);
    }
}