using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Text;
using System.Data.SqlClient;

public partial class index : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        SqlConnection sqcn = new SqlConnection(@"Data Source=HIMANSHU-PC\SQLEXPRESS;Initial Catalog=localservice;Integrated Security=True");
        sqcn.Open();
        SqlCommand com = new SqlCommand("select *from ServiceMaster", sqcn);
        SqlDataAdapter da = new SqlDataAdapter(com);
        DataSet ds = new DataSet();
        da.Fill(ds);
        ddlservicetype.DataTextField = ds.Tables[0].Columns["ServiceName"].ToString();
        ddlservicetype.DataValueField = ds.Tables[0].Columns["ServiceCode"].ToString();

        ddlservicetype.DataSource = ds.Tables[0];
        ddlservicetype.DataBind();
        ds.Clear();

       // SqlConnection sqcn1 = new SqlConnection(@"Data Source=HIMANSHU-PC\SQLEXPRESS;Initial Catalog=localservice;Integrated Security=True");
        
        com.Parameters.Clear();
        com = new SqlCommand("select * from AreaCityMaster", sqcn);
        da = new SqlDataAdapter(com);
        //DataSet ds = new DataSet();
        da.Fill(ds);
        ddlcity.DataTextField = ds.Tables[0].Columns["CityArea"].ToString();
        ddlcity.DataValueField = ds.Tables[0].Columns["CityArea"].ToString();

        ddlcity.DataSource = ds.Tables[0];
        ddlcity.DataBind();
        sqcn.Close(); 


    }
    vedasolution vs = new vedasolution();
    protected void btnsearch_Click(object sender, EventArgs e)
    {
        try
        {
            Session["searchtype"] = ddlservicetype.SelectedItem.ToString();
            Response.Redirect("customer-home.aspx");
        }
        catch
        {

        }
    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Session["searchtype"] = "AC Service";
        Response.Redirect("searchresult.aspx");
    }
    protected void LinkButton2_Click(object sender, EventArgs e)
    {
        Session["searchtype"] = "Deep Cleaning";
        Response.Redirect("searchresult.aspx");
    }
    protected void LinkButton3_Click(object sender, EventArgs e)
    {
        Session["searchtype"] = "Packers and Movers";
        Response.Redirect("searchresult.aspx");
    }
    protected void LinkButton4_Click(object sender, EventArgs e)
    {
        Session["searchtype"] = "Car Mechanic";
        Response.Redirect("searchresult.aspx");
    }
    protected void LinkButton5_Click(object sender, EventArgs e)
    {
        Session["searchtype"] = "Electrician";
        Response.Redirect("searchresult.aspx");
    }
    protected void LinkButton6_Click(object sender, EventArgs e)
    {
        Session["searchtype"] = "Plumber";
        Response.Redirect("searchresult.aspx");
    }
    protected void txtname_TextChanged(object sender, EventArgs e)
    {

    }
    protected void ddlservicetype_SelectedIndexChanged(object sender, EventArgs e)
    {
      
    }
}