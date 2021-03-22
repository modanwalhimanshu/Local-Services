using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Security;
using System.Data;
using System.Text;
using System.IO;

public partial class vadmin_Partner_info : System.Web.UI.Page
{
    vedasolution vs = new vedasolution();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Page.IsPostBack == false)
        {

            showalldata();
        }
    }
    public void showalldata()
    {
        GridView1.DataSource = null;
        GridView1.DataBind();
        DataSet ds = new DataSet();
        ds = vs.fetch_data_ds("select partner_Id,name as Name,city as City,service as Service,mobile as Mobile_No,email as Email_Id,password as Password,entrydate as Entry_Date from PartnerInfo");
        GridView1.DataSource = ds.Tables[0];
        GridView1.DataBind();
    }
    protected void btnp_search1_Click(object sender, EventArgs e)
    {

    }
    protected void btnp_search1_Click1(object sender, EventArgs e)
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
        dsn = vs.fetch_data_ds("select partner_Id,name as Name,city as Name,service as Service,mobile as Mobile_No,email as Email_Id,password as Password,entrydate as Entry_Date from PartnerInfo where status=0 and mobile = '" + txtmobileno.Text + "'");
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

        txtp_name.Text = r.Cells[2].Text;
        txtp_city.Text = r.Cells[3].Text;
        Session["p_mobile"] = r.Cells[5].Text;
        ddlp_service.Text = r.Cells[4].Text;
        txtp_emailid.Text = r.Cells[6].Text;
        txtp_pwd.Text = r.Cells[7].Text;
    }
    protected void btnclose2_Click(object sender, EventArgs e)
    {
        pnlupdate.Visible = false;
    }
    protected void btnupdate_Click(object sender, EventArgs e)
    {
        if (txtp_name.Text == "")
        {
            lblmsgpopup0.Text = "Please enter your Name";
            txtp_name.Focus();
            return;
        }
        if (txtp_city.Text == "")
        {
            lblmsgpopup0.Text = "Please enter your City";
            txtp_city.Focus();
            return;
        }
        if (ddlp_service.SelectedIndex.ToString() == "")
        {
            lblmsgpopup0.Text = "Please enter your Service";
            ddlp_service.Focus();
            return;
        }
        if (txtp_emailid.Text == "")
        {
            lblmsgpopup0.Text = "Please enter your Email_Id";
            txtp_emailid.Focus();
            return;
        }
        if (txtp_pwd.Text == "")
        {
            lblmsgpopup0.Text = "Please enter your Password";
            txtp_pwd.Focus();
            return;
        }
        if (txtp_newpwd.Text == "")
        {
            lblmsgpopup0.Text = "Please enter your New Password";
            txtp_newpwd.Focus();
            return;
        }
        if (txtp_cnfrmpwd.Text == "")
        {
            lblmsgpopup0.Text = "Please Re-enter your New Password";
            txtp_cnfrmpwd.Focus();
            return;
        }
        int a = 0;
        a = vs.g_dml_query("update PartnerInfo set name='" + txtp_name.Text + "', city='" + txtp_city.Text + "', service='" + ddlp_service.SelectedIndex.ToString() + "', email='"+txtp_emailid.Text+"', password='"+txtp_newpwd.Text+"'  where mobile=" + Session["p_mobile"].ToString() + "");
        if (a == 0)
        {
            lblmsgpopup0.Text = "Not Updated";
        }
        else
        {
            lblmsgpopup0.Text = "Updated";
        }
    }
    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
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