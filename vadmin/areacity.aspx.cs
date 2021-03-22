using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class vadmin_areacity : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            string cs = ConfigurationManager.ConnectionStrings["myconn"].ConnectionString;
            SqlConnection cnn = new SqlConnection(cs);
            cnn.Open();
            SqlCommand com = new SqlCommand("select * from StateMaster", cnn);
            SqlDataAdapter da = new SqlDataAdapter(com);
            DataSet ds = new DataSet();
            da.Fill(ds);
            ddlstate.DataSource = ds.Tables[0];
            ddlstate.DataTextField = "StateUTName";
            ddlstate.DataValueField = "RecNo";


            ddlstate.DataBind();
            ds.Clear();
        }
        //SqlConnection sqcn = new SqlConnection(@"Data Source=HIMANSHU-PC\SQLEXPRESS;Initial Catalog=localservice;Integrated Security=True");
        
    }
    static vedasolution obj = new vedasolution();
    protected void btnsave_Click(object sender, EventArgs e)
    {
        string cs = ConfigurationManager.ConnectionStrings["myconn"].ConnectionString;
        SqlConnection cnn = new SqlConnection(cs);
        string sql = "insert into AreaCityMaster(CityArea,StateRecNo) values ('" + txtareacity.Text + "'," + ddlstate.SelectedValue +")";
            SqlCommand cm = new SqlCommand();
        cm.Connection = cnn;
        cm.CommandType = CommandType.Text; 
        cm.CommandText = sql;
        int a = 0;
        cnn.Open();
        a = cm.ExecuteNonQuery();
        cnn.Close();
        if (a == 0)
        {
            lblmsg.Text = "not saved";
        }
        else
            txtareacity.Text = "";
        txtareacity.Focus();
        lblmsg.Text = "Saved Your AreaCity";
    }
}