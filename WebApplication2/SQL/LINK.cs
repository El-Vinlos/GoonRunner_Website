using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using System.Web.UI.WebControls;
using System.Web.Configuration;
namespace System
{
    public class LINK
    {
        //string strConn = WebConfigurationManager.ConnectionStrings["QLBANGIAYConnectionString"].ConnectionString;
        string strConn = "data source=.\\SQLEXPRESS;initial catalog=QLBANLK;integrated security=True;trustservercertificate=True";
        public SqlConnection Connect()
        {
            SqlConnection conn = new SqlConnection(strConn);
            conn.Open();
            return conn;
        }
        public void sql_gridview(string sql,GridView gv)
        {
           
            SqlDataAdapter da = new SqlDataAdapter(sql, Connect());
            DataTable dt = new DataTable();
            dt.Clear();
            da.Fill(dt);
            gv.DataSource = dt;
            gv.DataBind();
        }
        public void sql_datalist(string sql, DataList gv)
        {

            SqlDataAdapter da = new SqlDataAdapter(sql, Connect());
            DataTable dt = new DataTable();
            dt.Clear();
            da.Fill(dt);
            gv.DataSource = dt;
            gv.DataBind();
        }
        public void sql_repeater(string sql, Repeater gv)
        {

            SqlDataAdapter da = new SqlDataAdapter(sql, Connect());
            DataTable dt = new DataTable();
            dt.Clear();
            da.Fill(dt);
            gv.DataSource = dt;
            gv.DataBind();
        }
        public void sql_drop(string sql,DropDownList ddl,string text,string value)
        {
            SqlDataAdapter da = new SqlDataAdapter(sql, Connect());
            DataTable dt = new DataTable();
            da.Fill(dt);
            ddl.DataSource = dt;
            ddl.DataTextField = text;
            ddl.DataValueField = value;
            ddl.DataBind();
        }
        public SqlCommand sql_parameter(string sql,SqlParameter[] parameter) {

            SqlCommand cmd = new SqlCommand(sql, Connect());
            cmd.Parameters.AddRange(parameter);
            return cmd;
        }
        public DataTable DocTable(string MAHS,string sql)
        {
            
            SqlDataAdapter da = new SqlDataAdapter(sql, Connect());
            DataTable dt = new DataTable();
            da.Fill(dt);
            return dt;
        }
    }
}