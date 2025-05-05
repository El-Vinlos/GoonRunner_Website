using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

namespace WebApplication2
{
    public partial class SanPham : System.Web.UI.Page
    {
        QueryModel SQL = new QueryModel();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (ClassSearch.storevalue != null)
            { 
                if (ClassSearch.storevalue.Rows.Count > 0)
                {
                    DataList1.DataSource = ClassSearch.storevalue;
                }
            }
            else
            { 
                DataList1.DataSource = SQL.SelectTable("SANPHAM");
            }
            DataList1.DataBind();
        }

        protected void DataList1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void filAll_Click(object sender, EventArgs e)
        {
            DataList1.DataSource = SQL.SelectTable("SANPHAM");
            DataList1.DataBind();
        }
        protected void filAdidas_Click(object sender, EventArgs e)
        {
            DataList1.DataSource = SQL.SelectTable("SANPHAM", "MaHang", "MH01");
            DataList1.DataBind();
        }
        protected void filJordan_Click(object sender, EventArgs e)
        {
            DataList1.DataSource = SQL.SelectTable("SANPHAM", "MaHang", "MH02");
            DataList1.DataBind();
        }
        protected void filNike_Click(object sender, EventArgs e)
        {
            DataList1.DataSource = SQL.SelectTable("SANPHAM", "MaHang", "MH03");
            DataList1.DataBind();
        }
        protected void filAcis_Click(object sender, EventArgs e)
        {
            DataList1.DataSource = SQL.SelectTable("SANPHAM", "MaHang", "MH04");
            DataList1.DataBind();
        }
        protected void filPuma_Click(object sender, EventArgs e)
        {
            DataList1.DataSource = SQL.SelectTable("SANPHAM", "MaHang", "MH05");
            DataList1.DataBind();
        }
                     
        protected void Button2_Click(object sender, EventArgs e)
        {
            Button btn = sender as Button;
            DataListItem item = btn.NamingContainer as DataListItem;
            HiddenField hf = item.FindControl("HiddenField1") as HiddenField;
            //Response.Write("<script >alert('" + hf.Value + "');</script>");
            if (Session["GioHang"] != null)
            {
                Dictionary<String, int> giohang = (Dictionary<String, int>)Session["GioHang"];
                Boolean isExsist = false;
                for (int i = 0; i < giohang.Count; i++)
                {
                    String indexID = giohang.ElementAt(i).Key;
                    int indexValue = (int)giohang.ElementAt(i).Value;
                    if (indexID.Equals(hf.Value))
                    {
                        giohang[indexID] += 1;
                        isExsist = true;
                    }
                }
                if (!isExsist)
                {
                    giohang.Add(hf.Value, 1);
                }
                isExsist = false;
            }
            else
            {
                Dictionary<string, int> giohang = new Dictionary<string, int>();
                giohang.Add(hf.Value, 1);
                Session["GioHang"] = giohang;
            }
            // Trick
            Response.Redirect(Page.Request.Url.ToString(), true);
        }

        protected void filBitis_ServerClick(object sender, EventArgs e)
        {
            DataList1.DataSource = SQL.SelectTable("SANPHAM", "MaHang", "MH06");
            DataList1.DataBind();
        }

        protected void filConverse_ServerClick(object sender, EventArgs e)
        {
            DataList1.DataSource = SQL.SelectTable("SANPHAM", "MaHang", "MH07");
            DataList1.DataBind();
        }
    }
}