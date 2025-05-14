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
    public partial class Main_Page : System.Web.UI.Page
    {
        QueryModel conn = new QueryModel();
        protected void Page_Load(object sender, EventArgs e)
        {
            String query = "select top 20 * from SANPHAM";
            System.Data.DataTable dt = new EnforceModel().ExecuteSelect(query);
            DataList1.DataSource = dt;
            DataList1.DataBind();
        }

        protected void btnThem_Click(object sender, EventArgs e)
        {
            Button btn = sender as Button;
            DataListItem item = btn.NamingContainer as DataListItem;
            HiddenField hf = item.FindControl("HiddenField1") as HiddenField;
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

        protected void DataList1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}