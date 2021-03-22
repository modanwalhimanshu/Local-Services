using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using System.Net.Mail;
using System.Net;
using System.IO;

/// <summary>
/// Summary description for vedasolution
/// </summary>


public class vedasolution
{
   // SqlConnection sqcn = new SqlConnection(@"Data Source=176.31.222.92;Initial Catalog=vikasnig_vedalko;Persist Security Info=True;User ID=vikasnig_vuser;Password=d9De2m?3");
    SqlConnection sqcn = new SqlConnection(@"Data Source=HIMANSHU-PC\SQLEXPRESS;Initial Catalog=localservice;Integrated Security=True");
   
    public int g_dml_query(string g_sql)
    {

        SqlCommand g_cm = new SqlCommand();
        g_cm.Connection = sqcn;
        g_cm.CommandType = CommandType.Text;
        g_cm.CommandText = g_sql;
        int g_a = 0;
        sqcn.Open();
        g_a = g_cm.ExecuteNonQuery();
        sqcn.Close();
        return g_a;

    }
    
    public DataTable fetch_data_as(string qry)
    {
        SqlDataAdapter da = new SqlDataAdapter(qry, sqcn);
        DataSet ds = new DataSet();
        da.Fill(ds, "a");

        DataTable dt = ds.Tables["a"];
        return dt;

        
    }
    public DataSet fetch_data_ds(string qry)
    {
        SqlDataAdapter da = new SqlDataAdapter(qry, sqcn);
        DataSet ds = new DataSet();
        da.Fill(ds, "a");

        
        return ds;


    }
    
         
  
    public void send(string uid, string password, string message, string no)
    {
        try
        {
          

            HttpWebRequest myReq =
           (HttpWebRequest)WebRequest.Create("http://sms.vikasnigamtech.com/pushsms.php?username=" + uid + "&password=" + password + "&sender=VEDSOL&numbers=" + no + "&message=" + message + "");


            HttpWebResponse myResp = (HttpWebResponse)myReq.GetResponse();
            System.IO.StreamReader respStreamReader = new System.IO.StreamReader(myResp.GetResponseStream());
            string responseString = respStreamReader.ReadToEnd();
            respStreamReader.Close();
            myResp.Close();
        }
        catch
        {

        }
    }
    public string GeneratePassword()
    {
        try
        {
            // Below code describes how to create random numbers.some of the digits and letters
            // are ommited because they look same like "i","o","1","0","I","O".
            string allowedChars = "a,b,c,d,e,f,g,h,j,k,m,n,p,q,r,s,t,u,v,w,x,y,z,";
            allowedChars += "A,B,C,D,E,F,G,H,J,K,L,M,N,P,Q,R,S,T,U,V,W,X,Y,Z,";
            allowedChars += "2,3,4,5,6,7,8,9";

            char[] sep = { ',' };
            string[] arr = allowedChars.Split(sep);

            string passwordString = "";
            string temp;
            Random rand = new Random();
            for (int i = 0; i < 6; i++)
            {
                temp = arr[rand.Next(0, arr.Length)];
                passwordString += temp;
            }
            return passwordString;
        }
        catch
        {
            return "hello";
        }


    }
}