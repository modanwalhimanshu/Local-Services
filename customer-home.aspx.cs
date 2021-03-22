using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class customerhome : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            getdata();
        }
    }
    static vedasolution obj = new vedasolution();
    private void getdata()
    {
        lblsearchtype.Text = Session["searchtype"].ToString();

        DataTable dt = obj.fetch_data_as("select our_promise,id from add_service where service_name='" + Session["searchtype"].ToString() + "'");
        string pro = "";
        int service_id = 0;
        lblpromise_val.Text = "";
        foreach (DataRow r in dt.Rows)
        {
            service_id = int.Parse(r["id"].ToString());    
            lblpromise.Text = "*Our Promise";
            pro =r["our_promise"].ToString(); //Where ColumnName is the Field from the DB that you want to display
            string[] pro_arr = pro.Split(';');
            for (int i = 0; i < pro_arr.Length; i++)
            {

                lblpromise_val.Text = lblpromise_val.Text + "<ul>*&nbsp;" + pro_arr[i].ToString() + "<br /> </ul>"; 
            }
           
        }

        

        dt = obj.fetch_data_as("select normal_pricing,amount from service_normal_pricing where service_id=" + service_id + "");

        lblnormal_pricing_val.Text = "";
        string n_amount = "";
        string n_prise = "";
        foreach (DataRow r in dt.Rows)
        {
        
            lblnormal_pricing.Text = "*Normal Pricing";
            n_prise = r["normal_pricing"].ToString();
            n_amount = r["amount"].ToString();

            string output = double.Parse(n_amount).ToString();
            lblnormal_pricing_val.Text = lblnormal_pricing_val.Text + "<ul>*&nbsp;" + n_prise + " : Rs. " + output + " /- <br /></ul>";
            
            //Label2.Text =dt.Rows[0]["our_promise"].ToString(); //Where ColumnName is the Field from the DB that you want to display
            /* Label2.Text = dt.Rows[0]["ColumnName2"].ToString();
             Label1.Text = dt.Rows[0]["ColumnName3"].ToString();
             Label2.Text = dt.Rows[0]["ColumnName4"].ToString();*/
        }



        dt = obj.fetch_data_as("select standard_pricing,amount from service_standard_pricing where service_id=" + service_id + "");
        lblstandard_pricing_val.Text = "";
        string s_amount = "";
        string s_prise = "";
        foreach (DataRow r in dt.Rows)
        {
        
            lblstandard_pricing.Text = "*Standard Pricing";
            s_prise = r["standard_pricing"].ToString();
            s_amount = r["amount"].ToString();
            string output = double.Parse(s_amount).ToString();

            lblstandard_pricing_val.Text = lblstandard_pricing_val.Text + "<ul>*&nbsp;" + s_prise + " : Rs. " + output + " /- <br /></ul>";
            
            //Label2.Text =dt.Rows[0]["our_promise"].ToString(); //Where ColumnName is the Field from the DB that you want to display
            /* Label2.Text = dt.Rows[0]["ColumnName2"].ToString();
             Label1.Text = dt.Rows[0]["ColumnName3"].ToString();
             Label2.Text = dt.Rows[0]["ColumnName4"].ToString();*/
        }

        dt = obj.fetch_data_as("select payment_option from add_service where service_name='" + Session["searchtype"].ToString() + "'");
        string payment = "";
        lblpayment_val.Text = "";
        foreach (DataRow r in dt.Rows)
        {
            lblpayment.Text = "*Payment Option";
            payment = r["payment_option"].ToString(); //Where ColumnName is the Field from the DB that you want to display
            string[] payment_arr = payment.Split(';');
            for (int i = 0; i < payment_arr.Length; i++)
            {
                lblpayment_val.Text = lblpayment_val.Text + "<ul>*&nbsp;" + payment_arr[i].ToString() + "<br /></ul>";
            }

        }
    }
    protected void btnnext_Click(object sender, EventArgs e)
    {

        if (txthouse.Text == "")
        {
            lblhouse.Text = "Enter your house/flat no";
            txthouse.Focus();
            return;

        }
        if (txthouse.Text != "")
        {
            lblhouse.Text = "";
        }
       
        if (txtlandmark.Text == "")
        {
            lbllandmark.Text = "Enter Your Landmark";
            txtlandmark.Focus();
            return;
        } if (txtlandmark.Text != "")
        {
            lbllandmark.Text = "";

        }
        if (txtlocality.Text == "")
        {
            lbllocality.Text = "Enter Your Locality";
            txtlocality.Focus();
            return;
        }
        if (txtlocality.Text != "")
        {
            lbllocality.Text = "";

        }
        if (txtpincode.Text == "")
        {
            lblpincode.Text = "Enter Your Pincode";
            txtpincode.Focus();
            return;
        }
        if (txtpincode.Text != "")
        {
            lblpincode.Text = "";

        }
        if (txtdate.Text == "")
        {
            lbldate.Text = "Please Pick a Date";
            txtdate.Focus();
            return;
        }
        if (txtdate.Text != "")
        {
            lbldate.Text = "";

        }

        if (ddlservice_time.SelectedIndex == 0)
        {
            lblservice.Text = "Select your Service Time";
            ddlservice_time.Focus();
            return;
        }
        if (ddlservice_time.SelectedIndex !=0)
        {
            lblservice.Text = "";

        }

        /*  int customer_add = 0;
           employee_signup = obj.g_dml_query("insert into customer_table(name,mobile_no,email_id,password,confirm_password,entry_date,active_status)values('" + employee_name + "'," + employee_mobileno + ",'" + employee_email + "','" + employee_password + "','" + confirm_employee_password + "','" + DateTime.Now.ToString() + "',1)"); 

        customer_add = obj.g_dml_query("insert into customer_address(house_no,landmark,locality,pick_date,service_time,entry_date,entry_person)values('" + txthouse.Text + "','" + txtlandmark.Text + "','" + txtlocality.Text + "','" + txtdate.Text + "','" + ddlservice_time.SelectedItem.ToString() + "','" + DateTime.Now.ToString() + "','" + Session["cus_email_id"] + "')");
        if (customer_add == 0)
        {
            lbladd.Text = "Not Saved";
        }*/
        
            Session["house"] = txthouse.Text;
            Session["landmark"] = txtlandmark.Text;
            Session["locality"] = txtlocality.Text;
            Session["pincode"] = txtpincode.Text;
            Session["pick_a_date"] = txtdate.Text;
            Session["service_time"] = ddlservice_time.Text;
            Response.Redirect("customer-login.aspx");
        
    }
}