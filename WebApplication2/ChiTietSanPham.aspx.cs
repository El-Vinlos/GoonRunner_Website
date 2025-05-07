using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace WebApplication2
{
    public partial class ChiTietSanPham : System.Web.UI.Page
    {
        String Str = "data source=.\\SQLEXPRESS;initial catalog=QLBANLK;integrated security=True;trustservercertificate=True";
        SqlConnection conn;
        DataTable dt;
        String masp = "";
        protected void btnThemVaoGioHang_Click(object sender, EventArgs e)
        {
            if (Session["GioHang"] != null)
            {
                Dictionary<String, int> giohang = (Dictionary<String, int>)Session["GioHang"];
                Boolean isExsist = false;
                for (int i = 0; i < giohang.Count; i++)
                {
                    String indexID = giohang.ElementAt(i).Key;
                    int indexValue = (int)giohang.ElementAt(i).Value;
                    if (indexID.Equals(masp))
                    {
                        giohang[indexID] += 1;
                        isExsist = true;
                    }
                }
                if (!isExsist)
                {
                    giohang.Add(masp, 1);
                }
                isExsist = false;
            }
            else
            {
                Dictionary<string, int> giohang = new Dictionary<string, int>();
                giohang.Add(masp, 1);
                Session["GioHang"] = giohang;
            }
            // Trick
            Response.Redirect(Page.Request.Url.ToString(), true);
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            string ma = Request.QueryString["masp"].ToString();
            masp = ma;
            conn = new SqlConnection(Str);
            conn.Open();
            string query = "SELECT * FROM HINHSANPHAM INNER JOIN SANPHAM ON HINHSANPHAM.MaSP = SANPHAM.MaSP where SANPHAM.MaSP='"+ma+"'";
            SqlDataAdapter da = new SqlDataAdapter(query, conn);
            dt = new DataTable();
            dt.Clear();
            da.Fill(dt);
            DataList1.DataSource = dt;
            DataList1.DataBind();
            
            
            
        }
    }
}