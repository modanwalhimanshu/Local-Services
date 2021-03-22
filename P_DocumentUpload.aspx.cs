using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;

public partial class P_DocumentUpload : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Page.IsPostBack == false)
        {
            try
            {
                P_partnerimage.ImageUrl = "http://vedasolution.com/P_partnerimage/" + Session["p_mobno"].ToString() + ".jpg";
                P_txtname2.Text = Request.Cookies["vsname"].Value;
                if (Session["p_mobno"].ToString() != "")
                {

                }
            }
            catch
            {
                Response.Redirect("sessionexpired.aspx");
            }
        }
    }
    static vedasolution vs = new vedasolution();
    protected void Button2_Click(object sender, EventArgs e)
    {
        lblmsg.Text = "";
        lblmsg1.Text = "";
        lblmsg2.Text = "";
        if (txtaadharno.Text == "")
        {
            lblmsg.Text = "Enter the Aadhar No.";
            txtaadharno.Focus();
            return;
        }
        if (aadharuplod.HasFile)
        {
            try
            {
                string[] validFileTypes = { "png", "jpg", "jpeg" };
                string ext = System.IO.Path.GetExtension(aadharuplod.PostedFile.FileName);
                bool isValidFile = false;
                for (int i = 0; i < validFileTypes.Length; i++)
                {
                    if (ext == "." + validFileTypes[i])
                    {
                        isValidFile = true;
                        break;
                    }
                }
                if (!isValidFile)
                {
                    lblmsg1.ForeColor = System.Drawing.Color.Red;
                    lblmsg1.Text = "Invalid File. Please upload a File with extension " +
                                   string.Join(",", validFileTypes);
                    return;
                }
                HttpPostedFile file = aadharuplod.PostedFile;
                int iFileSize = file.ContentLength;

                if (iFileSize > 314573)  // 1MB
                {
                    lblmsg1.Text = "File size not exceed max. 300 KB";
                    return;
                }

                string fileName = aadharuplod.FileName.ToString();
                fileName = fileName.Replace(fileName, Session["p_mobno"].ToString() + ".jpg");
                string subPath = "P_aadharimage"; // your code goes here

                string uploadFolderPath = subPath + "/";
                string filePath = HttpContext.Current.Server.MapPath(uploadFolderPath);
                uploadFolderPath = "http://www.vedasolution.com/" + uploadFolderPath + fileName;


                aadharuplod.SaveAs(filePath + "\\" + fileName);
                lblmsg1.Text = "File uploaded Successfully";
                try
                {
                    int a = 0;
                    a = vs.g_dml_query("update PartnerInfo set aadharno=" + txtaadharno.Text + " where mobile=" + Session["p_mobno"].ToString() + "");
                }
                catch(Exception ex)
                {
                    lblmsg2.Text = ex.ToString();
                }
            }
            catch (Exception ex)
            {
                lblmsg1.Text = "Some error found while uploding the file";
            }
        }
        else
        {
            lblmsg1.Text = "Select the aadhar image file.";
        }
        if (anyiduplod.HasFile)
        {
            try
            {
                string[] validFileTypes = { "png", "jpg","jpeg" };
                string ext = System.IO.Path.GetExtension(anyiduplod.PostedFile.FileName);
                bool isValidFile = false;
                for (int i = 0; i < validFileTypes.Length; i++)
                {
                    if (ext == "." + validFileTypes[i])
                    {
                        isValidFile = true;
                        break;
                    }
                }
                if (!isValidFile)
                {
                    lblmsg1.ForeColor = System.Drawing.Color.Red;
                    lblmsg1.Text = "Invalid File. Please upload a File with extension " +
                                   string.Join(",", validFileTypes);
                    return;
                }
                HttpPostedFile file = anyiduplod.PostedFile;
                int iFileSize = file.ContentLength;

                if (iFileSize > 314573)  // 1MB
                {
                    lblmsg1.Text = "File size not exceed max. 300 KB";
                    return;
                }
                string fileName = anyiduplod.FileName.ToString();
                fileName = fileName.Replace(fileName, Session["p_mobno"].ToString() + ".jpg");
                string subPath = "P_idProofimage"; // your code goes here

                string uploadFolderPath = subPath + "/";
                string filePath = HttpContext.Current.Server.MapPath(uploadFolderPath);
                uploadFolderPath = "http://www.vedasolution.com/" + uploadFolderPath + fileName;


                anyiduplod.SaveAs(filePath + "\\" + fileName);
                lblmsg1.Text = "File uploaded Successfully";
            }
            catch (Exception ex)
            {
                lblmsg1.Text = "Some error found while uploding the file";
            }
        }
        else
        {
           // lblmsg1.Text = "Select the file.";
        }
    }
}