using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;

/// <summary>
/// Summary description for bizwrap
/// </summary>
public class bizwrap
{
    SqlConnection sqcn = new SqlConnection(@"Data Source=176.31.222.92;Initial Catalog=vikasnig_vedalko;Persist Security Info=True;User ID=vikasnig_vuser;Password=d9De2m?3");
   
	public bizwrap()
	{
		//
		// TODO: Add constructor logic here
		//
	}
    public int store_data_as(string qry)
    {
        SqlCommand sqcm = new SqlCommand();
        sqcm.Connection = sqcn;
        sqcm.CommandType = CommandType.Text;
        sqcm.CommandText = qry;
        int a = 0;
        sqcn.Open();
        a = sqcm.ExecuteNonQuery();
        sqcn.Close();
        return a;
    }
    public DataTable fetch_data_as(string qry)
    {
        SqlDataAdapter da = new SqlDataAdapter(qry, sqcn);
        DataSet ds = new DataSet();
        da.Fill(ds, "a");

        DataTable dt = ds.Tables["a"];
        return dt;
    }
   
}