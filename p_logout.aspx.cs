using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class p_logout : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Timer1_Tick(object sender, EventArgs e)
    {
        try
        {
            Session["p_mobno"] = "";
            Session["p_mobno"] = null;
            HttpCookie vsname = new HttpCookie("vsname");
            HttpCookie vscity = new HttpCookie("vscity");
            HttpCookie vsservice = new HttpCookie("vsservice");
            HttpCookie vsmobile = new HttpCookie("vsmobile");
            HttpCookie vsemail = new HttpCookie("vsemail");
            HttpCookie vs = new HttpCookie("vseid");
            HttpCookie vs1 = new HttpCookie("vspwd");

            Response.Cookies.Add(vsname);
            Response.Cookies.Add(vscity);
            Response.Cookies.Add(vsservice);
            Response.Cookies.Add(vsmobile);
            Response.Cookies.Add(vsemail);
            Response.Cookies.Add(vs);
            Response.Cookies.Add(vs1);

            vsname.Expires = DateTime.Now.AddDays(-1);
            vscity.Expires = DateTime.Now.AddDays(-1);
            vsservice.Expires = DateTime.Now.AddDays(-1);
            vsmobile.Expires = DateTime.Now.AddDays(-1);
            vsemail.Expires = DateTime.Now.AddDays(-1);
            vs.Expires = DateTime.Now.AddDays(-1);
            vs1.Expires = DateTime.Now.AddDays(-1);

            Response.Redirect("index.aspx");
        }
        catch
        {

        }
    }
}