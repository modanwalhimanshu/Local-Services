using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
public partial class professional_login : System.Web.UI.Page
{
    SqlConnection cnn = new SqlConnection(@"Data Source=176.31.222.92;Initial Catalog=vikasnig_vedalko;Persist Security Info=True;User ID=vikasnig_vuser;Password=d9De2m?3");
   
    ClientScriptManager cs;
  
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Page.IsPostBack == false)
        {
            try
            {
                txtmobileno.Focus();
                string vsid = Request.Cookies["vseid"].Value;
              //  string vspwd = Request.Cookies["vspwd"].Value;
                Session["p_mobno"] = vsid;
               // chklogin(vsid,vspwd);
              

              //  Response.Redirect("new_leads.aspx",false);
            }
            catch(Exception ex)
            {
               // Response.Redirect("new_leads.aspx", false);
            }
        }

    }
    static vedasolution g_cnn = new vedasolution();
    public void chklogin(string mobno, string pwd)
    {


        HttpCookie vs = new HttpCookie("vseid", mobno);
        HttpCookie vs1 = new HttpCookie("vspwd", pwd);



        {
            string sql = "(select status,name,city,service,mobile,email,pincode from PartnerInfo where mobile =" + mobno + " and password ='" + pwd + "')";
            SqlDataAdapter da = new SqlDataAdapter(sql, cnn);
            DataSet ds = new DataSet();
            da.Fill(ds, "tb");
            DataTable dt = ds.Tables["tb"];

            if (ds.Tables["tb"].Rows.Count > 0)
            {
                if (dt.Rows.Count > 0)
                {
                    Response.Cookies.Add(vs);
                    Response.Cookies.Add(vs1);

                    vs.Expires = DateTime.Now.AddDays(500);
                    vs1.Expires = DateTime.Now.AddDays(500);


                    foreach (DataRow r in dt.Rows)
                    {
                        //if (r["status"].ToString() == "True")
                        //{
                            HttpCookie vsname = new HttpCookie("vsname", r["name"].ToString());
                            HttpCookie vscity = new HttpCookie("vscity", r["city"].ToString());
                            HttpCookie vsservice = new HttpCookie("vsservice", r["service"].ToString());
                            HttpCookie vsmobile = new HttpCookie("vsmobile", r["mobile"].ToString());
                            HttpCookie vsemail = new HttpCookie("vsemail", r["email"].ToString());
                            HttpCookie vspin = new HttpCookie("vspin", r["pincode"].ToString());
                            Session["p_mobno"] = txtmobileno.Text;
                            Response.Cookies.Add(vsname);
                            Response.Cookies.Add(vscity);
                            Response.Cookies.Add(vsservice);
                            Response.Cookies.Add(vsmobile);
                            Response.Cookies.Add(vsemail);
                            Response.Cookies.Add(vspin);

                            vsname.Expires = DateTime.Now.AddDays(500);

                            Response.Redirect("new_leads.aspx");

                        //}

                        //cs.RegisterStartupScript(this.GetType(), "AlertRestrict", "alert('account not activated.....!');", true);

                        //txtmobileno.Focus();
                        
                    }
                }
            }
            else
            {
                cs.RegisterStartupScript(this.GetType(), "AlertRestrict", "alert('invalid user name or password.....!');", true);
                txtmobileno.Focus();
                P_txtpswd.Focus();

            } return;
        }
    }
        
    
    protected void Button1_Click(object sender, EventArgs e)
    {
        cs = Page.ClientScript;
        if (txtmobileno.Text == "" || P_txtpswd.Text == "")
        {
           // cs.RegisterStartupScript(this.GetType(), "AlertRestrict", "alert('ALL Fields Are MANDATORY.....!');", true);
            lblmsg1.Text = "ALL Fields Are MANDATORY.....!";
            txtmobileno.Focus();
            P_txtpswd.Focus();
            return;
        }
        chklogin(txtmobileno.Text, P_txtpswd.Text);
    }
      
    protected void P_txtname_TextChanged(object sender, EventArgs e)
    {

    }
    protected void lnkforgot_Click(object sender, EventArgs e)
    {
        Response.Redirect("p_forgotpwd.aspx");
    }
}
