using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace WebApplication2
{
    public partial class GioHang : System.Web.UI.Page
    {
        EnforceModel Enforce = new EnforceModel();
        DataTable shop;
        long tongtienDB = 0;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["GioHang"] != null)
            {
                double tong=0;

                // ví dụ: select TenSP, GiaTien, Size chẳng hạn
                String query = "select MaSP, Hinh, TenSP, GiaTien, Size from SANPHAM where ";

                Dictionary<string, int> giohang = (Dictionary<string, int>)Session["GioHang"];
                foreach (KeyValuePair<string, int> value in giohang)
                {
                    query += "MaSP='" + value.Key + "' or ";
                }
                query = query.Trim().Substring(0, query.Length - 3);

                shop = Enforce.ExecuteSelect(query);
                shop.Columns.Add("Số lượng");
                shop.Columns[shop.Columns.Count - 1].ColumnName = "SoLuong";
                shop.Columns.Add("Thanh tien");
                shop.Columns[shop.Columns.Count - 1].ColumnName = "ThanhTien";

                for (int i = 0; i < giohang.Count; i++)
                {
                    shop.Rows[i]["SoLuong"] = giohang.ElementAt(i).Value.ToString().Trim();
                    shop.Rows[i]["ThanhTien"] = String.Format("{0:0,0}",Convert.ToInt32(shop.Rows[i]["GiaTien"]) * Convert.ToInt32(shop.Rows[i]["SoLuong"]));
                    tong += Double.Parse(shop.Rows[i]["ThanhTien"].ToString());

                }
                tongtienDB = (long)tong;
                string tong1 = String.Format("{0:0,0 đ}",tong);
                lblTong.Text = tong1.Trim();
                GridView1.DataSource = shop;
                GridView1.DataBind();
                lblTrangThai.Visible = false;
                btnThanhToan.Visible = true;
                lblTitle.Visible = true;
                hplMua.Visible = false;
                hplMuaTiep.Visible = true;
               
            }
            else
            {
                lblTrangThai.Text = "Giỏ hàng của bạn đang trống!";
                btnThanhToan.Visible = false;
                lblTitle.Visible = false;
                hplMuaTiep.Visible = false;
            }
        }

        

        

        protected void btnThanhToan_Click(object sender, EventArgs e)
        {
            if (Session["AccountLogin"] == null)
            {
                Response.Write("<div class='alert alert-danger' role='alert'>Bạn chưa đăng nhập! </div>");
            }
            else
            {
                DataTable user = (DataTable)Session["AccountLogin"];
                // Cái này là lưu vào hóa đơn
                Dictionary<string, object> pValue = new Dictionary<string, object>();
                pValue.Add("USERNAME", user.Rows[0]["USERNAME"].ToString().Trim());
                pValue.Add("TongTien", tongtienDB);
                pValue.Add("Ngay", DateTime.Now);
                new QueryModel().InsertTable("HOADON", pValue);
                // Cái nỳ là lưu vào chi tiết hó đơn
                foreach (DataRow dr in shop.Rows)
                {
                    Dictionary<string, object> childHD = new Dictionary<string, object>();
                    childHD.Add("USERNAME", user.Rows[0]["USERNAME"].ToString().Trim());
                    childHD.Add("MaSP", dr["MaSP"].ToString().Trim());
                    childHD.Add("SoLuong", dr["SoLuong"]);
                    childHD.Add("GiaTien", dr["GiaTien"]);
                    childHD.Add("TrangThai", false);

                    new QueryModel().InsertTable("CTHOADON", childHD);
                }
                // LÀm rỗng session
                Session["GioHang"] = null;
                Response.Write("<div class='alert alert-success' role='alert'>Bạn đã thanh toán thành công! </div>");
                Response.Redirect(Page.Request.Url.ToString(), true);
                
            }
        }

        protected void btnXoaGH_Click(object sender, EventArgs e)
        {
            System.Web.UI.HtmlControls.HtmlButton btn = (System.Web.UI.HtmlControls.HtmlButton)sender;
            GridViewRow gridRow = (GridViewRow)btn.NamingContainer;
            int rowIndex = gridRow.RowIndex;
            shop.Rows.RemoveAt(rowIndex);
            Dictionary<string, int> tmpShop = new Dictionary<string, int>();
            foreach (DataRow dr in shop.Rows)
            {
                string masp = dr["MaSP"].ToString().Trim();
                int sl = Convert.ToInt32(dr["SoLuong"].ToString().Trim());

                tmpShop.Add(masp, sl);
            }
            if (tmpShop.Count <= 0)
            {
                Session["GioHang"] = null;
            }
            else
                Session["GioHang"] = tmpShop;
            Response.Redirect(Request.Url.ToString());
        }

        protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
        {

        }
    }
}