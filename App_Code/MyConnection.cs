using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;

/// <summary>
/// Summary description for MyConnection
/// </summary>
public class MyConnection
{
    SqlConnection cnn = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=E:\prince\MyLocalService1\App_Data\bizwrap.mdf;Integrated Security=True;User Instance=True");
	public MyConnection()
	{
		//
		// TODO: Add constructor logic here
		//
	}
    public int store_data_as(string sql)
    {
        SqlCommand cmd = new SqlCommand();
        cmd.Connection = cnn;
        cmd.CommandType = CommandType.Text;
        cmd.CommandText = sql;
        int a = 0;
        cnn.Open();
        a = cmd.ExecuteNonQuery();
        cnn.Close();
        return a;
    }
    public DataTable fetch_data_as(string sql)
    {
        SqlDataAdapter da = new SqlDataAdapter(sql, cnn);
        DataSet ds = new DataSet();
        da.Fill(ds, "tb");

        DataTable dt = ds.Tables["tb"];
        return dt;
    }
}