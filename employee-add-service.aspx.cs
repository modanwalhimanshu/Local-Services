using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    static vedasolution oj = new vedasolution();
    
    
    protected void btnaddpromise_Click(object sender, EventArgs e)
    {
       
        
        lst_promise.Items.Add(our_promise.Text);
        our_promise.Text = "";
        

            
    }
    protected void btnaddprice_Click(object sender, EventArgs e)
    {
        lstnormal_pricing.Items.Add(normal_pricing1.Text + ";" + normal_pricing2.Text);
        normal_pricing1.Text = "";
        normal_pricing2.Text = "";
    }
    protected void btnadd_standard_price_Click(object sender, EventArgs e)
    {
        lststandard_pricing.Items.Add(standard_pricing1.Text + ";" + standard_pricing2.Text);
        standard_pricing1.Text = "";
        standard_pricing2.Text = "";
    }
    protected void btnpayment_option_Click(object sender, EventArgs e)
    {
        lstpayment_option.Items.Add(payment_option.Text);
        payment_option.Text = "";

        
    }
    protected void btnsubmit_Click(object sender, EventArgs e)
    {
        if (ddlservice_name.SelectedIndex == 0)
        {
           lblservice_name.Text = "Please Select Service";
            ddlservice_name.Focus();
            return;
        }
        if (ddlservice_name.SelectedIndex != 0)
        {
            lblservice_name.Text = "";
        }
      
        if (lst_promise.SelectedIndex == 0)
        {
            lblour_promise.Text = "Please Add Promise";
            our_promise.Focus();
            return;
        }
        if (lst_promise.SelectedIndex != 0)
        {
            lblour_promise.Text = "";
        }
        if (lstnormal_pricing.SelectedIndex==0)
        {
            lblnormal_pricing.Text = "Please Add Time and Normal Amount ";
            normal_pricing2.Focus();
            return;
        }
        if (lstnormal_pricing.SelectedIndex != 0)
        {
            lblnormal_pricing.Text = "";
        }
        if (lststandard_pricing.SelectedIndex == 0)
        {
            lblstandard_pricing.Text = "Please Add Work and Standard Amount";
            standard_pricing2.Focus();
            return;
     }
        if (lststandard_pricing.SelectedIndex != 0)
        {
            lblstandard_pricing.Text = "";
        }
        if (lstpayment_option.SelectedIndex == 0)
        {
            lblpayment_option.Text = "Please add Payment Option";
            payment_option.Focus();
            return;
        }

        if (lststandard_pricing.SelectedIndex != 0)
        {
            lblpayment_option.Text = "";
        }
        string promise = "";
        for (int i = 0; i < lst_promise.Items.Count; i++)
        {
            if (promise == "")
            {
                promise = lst_promise.Items[i].ToString();
            }
            else
            {
                promise = promise + ";" + lst_promise.Items[i].ToString();
            }
        }
                 string payment = "";
        for (int j = 0; j < lstpayment_option.Items.Count; j++)
        {
            if (payment == "")
            {
                payment = lstpayment_option.Items[j].ToString();
            }
            else
            {
                payment = payment + ";" + lstpayment_option.Items[j].ToString();
            }
        }
        int add_service = 0;
        add_service = oj.g_dml_query("insert into add_service(service_name,our_promise,payment_option,entry_date,active_status,entryperson)values('" + ddlservice_name.SelectedItem.ToString() + "','" + promise + "','" +payment + "','" + DateTime.Now.ToString() + "',1,'" + Session["emp_email_id"].ToString() + "')");
        if (add_service == 0)
        {
            lblmsg1.Text = "Not Saved";
        }
        else
        {
            lblmsg1.Text = "Successfully Saved.";
        }
        int service_id = 0;
        DataTable dt = oj.fetch_data_as("select max(id)as service_id from add_service");
        if (dt.Rows.Count > 0)
        {

            foreach (DataRow r in dt.Rows)
            {
                service_id = int.Parse(r["service_id"].ToString());
            }
        }
        for (int i = 0; i < lstnormal_pricing.Items.Count; i++)
        {
            string val = lstnormal_pricing.Items[i].ToString();
            string[] xval = val.Split(';');

            oj.g_dml_query("insert into service_normal_pricing(service_id,normal_pricing,amount,entry_date)values(" + service_id + ",'" + xval[0].ToString() + "'," + xval[1].ToString() + ",'" + DateTime.Now.ToString() + "')");
        }
        
       
       for (int j = 0; j < lststandard_pricing.Items.Count; j++)
        {
            string val1 = lststandard_pricing.Items[j].ToString();
            string[] xval1 = val1.Split(';');

            oj.g_dml_query("insert into service_standard_pricing(service_id,standard_pricing,amount,entry_date)values(" + service_id + ",'" + xval1[0].ToString() + "'," + xval1[1].ToString() + ",'" + DateTime.Now.ToString() + "')");
        }
       

    }
}