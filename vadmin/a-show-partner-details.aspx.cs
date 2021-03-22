using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;


public partial class employee_home : System.Web.UI.Page
{
    vedasolution vs = new vedasolution();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Page.IsPostBack == false)
        {
            lblmsgnew.Text = "";

            imgaadhar.ImageUrl = "http://vedasolution.com/P_aadharimage/" + Session["getmobileno"].ToString() + ".jpg";
            imgbigaadhar.ImageUrl = "http://vedasolution.com/P_aadharimage/" + Session["getmobileno"].ToString() + ".jpg";
           
            imgprofilepic.ImageUrl = "http://vedasolution.com/P_idProofimage/" + Session["getmobileno"].ToString() + ".jpg";
            imgbigprofilepic.ImageUrl = "http://vedasolution.com/P_idProofimage/" + Session["getmobileno"].ToString() + ".jpg";
           

            imgidproof.ImageUrl = "http://vedasolution.com/P_partnerimage/" + Session["getmobileno"].ToString() + ".jpg";
            imgbigidproof.ImageUrl = "http://vedasolution.com/P_partnerimage/" + Session["getmobileno"].ToString() + ".jpg";

            Panel21.Visible = true;
            string sql = "select * from PartnerInfo where partner_id=" + Session["p_partnerid"].ToString() + "";
            DataSet ds1 = new DataSet();
            ds1 = vs.fetch_data_ds(sql);
            DetailsView1.DataSource = ds1.Tables[0];
            DetailsView1.DataBind();
        }
    }
    protected void btn_add_service_Click(object sender, EventArgs e)
    {
        Response.Redirect("employee-add.aspx");
    }
    protected void btnactivate_Click(object sender, EventArgs e)
    {
        lblmsgnew.Text = "";
        int a = 0;
        a = vs.g_dml_query("update PartnerInfo set status=1,activate_date='" + DateTime.Now.ToString() + "' where mobile=" + Session["getmobileno"].ToString() + "");
        if (a == 0)
        {
            lblmsgnew.Text = "Not Activated";
        }
        else
        {
            lblmsgnew.Text = "Activated";
            
        }
    }
}