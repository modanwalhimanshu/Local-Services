using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.IO;
using System.Data.SqlClient;
public partial class P_Bank_Info : System.Web.UI.Page
{ SqlConnection cnn = new SqlConnection(@"Data Source=176.31.222.92;Initial Catalog=vikasnig_vedalko;Persist Security Info=True;User ID=vikasnig_vuser;Password=d9De2m?3");
    protected void Page_Load(object sender, EventArgs e)
    { if (Page.IsPostBack == false)
        try
        {
            P_partnerimage.ImageUrl = "http://vedasolution.com/P_partnerimage/" + Session["p_mobno"].ToString() + ".jpg";

            //P_partnerimage.ImageUrl = "~/P_partnerimage/" + Session["p_mobno"].ToString() + ".jpg";
            P_txtname2.Text = Request.Cookies["vsname"].Value;

            if (Session["p_mobno"].ToString() != "")
            {

            }
            string sql3 = "select BankName,ACType,Branch,City,AccountNo,IFSCCode,ACHolderName from P_BankInfo where mobileno = " + Session["p_mobno"].ToString() + " ";
            SqlDataAdapter da = new SqlDataAdapter(sql3, cnn);
            DataSet ds = new DataSet();
            da.Fill(ds, "tb");
            DataTable dt = ds.Tables["tb"];

            if (ds.Tables["tb"].Rows.Count > 0)
            foreach (DataRow r in dt.Rows)
            {
                P_txtabnkname.Text = r["BankName"].ToString();
                AcTypeList.Text = r["ACType"].ToString();
                P_BankBranch.Text = r["Branch"].ToString();
                bankcity.Text = r["City"].ToString();
                txtAcNo.Text = r["AccountNo"].ToString();
                txtifsccode.Text = r["IFSCCode"].ToString();
                AcHolderName.Text = r["ACHolderName"].ToString();

            }
           
        }
        catch
        {
            Response.Redirect("sessionexpired.aspx");
        }
   
    }
    protected void bankupdate_Click(object sender, EventArgs e)
    {
       try{
            if (P_txtabnkname.Text == "")
            {
                lblmsg1.Text = "Enter your  Bank name";
                P_txtabnkname.Focus();
                return;
            }

            if (AcTypeList.SelectedIndex == 0)
            {
                lblmsg1.Text = "Select Your Account Type";
                AcTypeList.Focus();
                return;
            }

            if (P_BankBranch.Text == "")
            {
                lblmsg1.Text = "  Enter your Branch";
                P_BankBranch.Focus();
                return;
            }
            if (bankcity.Text == "")
            {
                lblmsg1.Text = "Enter your City";
                bankcity.Focus();
                return;
            }
            if (txtAcNo.Text == "")
            {
                lblmsg1.Text = "Enter your Account No.....";
                txtAcNo.Focus();
                return;
            }
            if (txtifsccode.Text == "")
            {
                lblmsg1.Text = "Enter your IFSC Code";
                txtifsccode.Focus();
                return;
            }
            if (AcHolderName.Text == "")
            {
                lblmsg1.Text = "Enter your Account holder name";
                AcHolderName.Focus();
                return;
            }
            string sql1 = "select BankName,ACType,Branch,City,AccountNo,IFSCCode,ACHolderName from P_BankInfo where mobileno = "+Session["p_mobno"].ToString()+" ";
            SqlDataAdapter da = new SqlDataAdapter(sql1, cnn);
            DataSet ds = new DataSet();
            da.Fill(ds, "tb");
            DataTable dt = ds.Tables["tb"];
            
            if (ds.Tables["tb"].Rows.Count > 0)
               
            {
                string sql = "update P_BankInfo set BankName='" + P_txtabnkname.Text + "',ACType='" + AcTypeList.SelectedItem + "',Branch='" + P_BankBranch.Text + "',City='" + bankcity.Text + "',AccountNo=" + txtAcNo.Text + ",IFSCCode='" + txtifsccode.Text + "',ACHolderName='" + AcHolderName.Text + "' where mobileno=" + Session["p_mobno"].ToString() + "";
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
                    lblmsg1.Text = "Not Updated";
                }
                else
                {
                    lblmsg1.Text = "Your Bank Details Updated";
                    P_txtabnkname.Text = "";
                    AcTypeList.Text = "Select Your Account Type";
                    P_BankBranch.Text = "";
                    bankcity.Text = "";
                    txtAcNo.Text = "";
                    txtifsccode.Text = "";
                    AcHolderName.Text = "";

                }
            }
            else
            {


                string sql2 = ("Insert into P_BankInfo(mobileno,BankName,ACType,Branch,City,AccountNo,IFSCCode,ACHolderName,status,EntryDate)values(" + Session["p_mobno"].ToString() + ",'" + P_txtabnkname.Text + "','" + AcTypeList.SelectedItem + "','" + P_BankBranch.Text + "','" + bankcity.Text + "','" + txtAcNo.Text + "','" + txtifsccode.Text + "','" + AcHolderName.Text + "',0,'" + DateTime.Now.ToString() + "')");
                SqlCommand cmd = new SqlCommand();
                cmd.Connection = cnn;
                cmd.CommandType = CommandType.Text;
                cmd.CommandText = sql2;
                int a = 0;
                cnn.Open();
                a = cmd.ExecuteNonQuery();
                cnn.Close();
                if (a == 0)
                {
                    lblmsg1.Text = "not saved";
                }
                else
                {
                    lblmsg1.Text = "Your Bank Details Updated";
                    P_txtabnkname.Text = "";
                    AcTypeList.Text = "Select Your Account Type";
                    P_BankBranch.Text = "";
                    bankcity.Text = "";
                    txtAcNo.Text = "";
                    txtifsccode.Text = "";
                    AcHolderName.Text = "";
                    lblmsg1.Text = "Your Bank details Submited Susseccfully";
                }
            }
    }
       catch
       {
       }
       
    }
    }
