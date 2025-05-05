using System;
using System.Collections.Generic;
using System.Linq;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.IO;

namespace WebApplication2
{
    public partial class QLSP : System.Web.UI.Page
    {
        LINK lk = new LINK();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                FillDrop();
                LoadData();
            }
        }
        void FillDrop()
        {
            string sql = "select * from MAHANGSANPHAM";

            lk.sql_drop(sql, ddlHangSX, "TENHANG", "MAHANG");

        }
        void LoadData()
        {
            lk.sql_gridview("select * from SANPHAM", gdvSP);

            FillDrop();
        }
        

        protected void btnThemsp_Click1(object sender, EventArgs e)
        {
            string sTenfile;
            sTenfile = fulUpHinh.FileName;
            fulUpHinh.SaveAs(MapPath("~/img/" + sTenfile));
            string sql = "Insert into SANPHAM (MaSP,TenSP,GiaTien,Size,Mau,Hinh,MaHang) values (@MaSP,@TenSP,@GiaTien,@Size,@Mau,@Hinh,@MaHang)";
            
            List<SqlParameter> list = new List<SqlParameter>()
            {
                new SqlParameter("@MaSP", txtMaSP.Text.Trim()),
                new SqlParameter("@TenSP", txtTenSP.Text.Trim()),
                new SqlParameter("@GiaTien", txtGiaTien.Text.Trim()),
                new SqlParameter("@Size", txtSize.Text.Trim()),
                new SqlParameter("@Mau", txtMau.Text.Trim()),
                new SqlParameter("@Hinh", fulUpHinh.FileName.ToString()), 
                new SqlParameter("@MaHang", ddlHangSX.SelectedValue)
            };
            
            lk.sql_parameter(sql, list.ToArray()).ExecuteNonQuery();
            LoadData();
        }

        protected void btnLuusp_Click(object sender, EventArgs e)
        {
            string tex = txtMaSP.Text.ToString().Trim();
            if (!fulUpHinh.HasFile)
            {

                string sql = "select * from SANPHAM where Hinh='" + ImgName.Text.Trim() + "'";
                SqlDataAdapter da = new SqlDataAdapter(sql, lk.Connect());
                DataTable dt = new DataTable();
                dt.Clear();
                da.Fill(dt);
                if (dt.Rows.Count > 0)
                {
                    string sql1 = "update SANPHAM set TenSP=@TenSP,GiaTien=@GiaTien,Size=@Size,Mau=@Mau,Hinh=@Hinh,MaHang=@MaHang where MaSP=@MaSP";
                    List<SqlParameter> list = new List<SqlParameter>()
                    {
                        new SqlParameter("@MaSP", tex),
                        new SqlParameter("@TenSP", txtTenSP.Text.Trim()),
                        new SqlParameter("@GiaTien", txtGiaTien.Text.Trim()),
                        new SqlParameter("@Size", txtSize.Text.Trim()),
                        new SqlParameter("@Mau", txtMau.Text.Trim()),
                        new SqlParameter("@Hinh", ImgName.Text),
                        new SqlParameter("@MaHang", ddlHangSX.SelectedValue)
                    };
                    lk.sql_parameter(sql1, list.ToArray()).ExecuteNonQuery();
                    LoadData();

                }
            }
            else
            {

                string pic = Server.MapPath("img/" + ImgName.Text);

                FileInfo file = new FileInfo(pic);
                if (file.Exists)
                    file.Delete();
                string sTenfile;
                sTenfile = fulUpHinh.FileName;
                fulUpHinh.SaveAs(MapPath("img/" + sTenfile));
                string sql1 = "update SANPHAM set TenSP=@TenSP,GiaTien=@GiaTien,Size=@Size,Mau=@Mau,Hinh=@Hinh,MaHang=@MaHang where MaSP=@MaSP";
                List<SqlParameter> list = new List<SqlParameter>()
                    {
                        new SqlParameter("@MaSP", tex),
                        new SqlParameter("@TenSP", txtTenSP.Text.Trim()),
                        new SqlParameter("@GiaTien", txtGiaTien.Text.Trim()),
                        new SqlParameter("@Size", txtSize.Text.Trim()),
                        new SqlParameter("@Mau", txtMau.Text.Trim()),
                        new SqlParameter("@Hinh", ImgName.Text),
                        new SqlParameter("@MaHang", ddlHangSX.SelectedValue)
                    };
                lk.sql_parameter(sql1, list.ToArray()).ExecuteNonQuery();

                LoadData();

            }
            gdvSP.EditIndex = -1;
        }

        protected void gdvSP_RowCommand1(object sender, GridViewCommandEventArgs e)
        {
            string command = e.CommandName;
            string ma = e.CommandArgument.ToString();
            if (command == "xoa")
            {

                string sql2 = "select * from SANPHAM where MaSP='" + ma + "'";
                DataTable dt = lk.DocTable(ma, sql2);
                string hinh = dt.Rows[0][6].ToString();

                string pic = Server.MapPath("~/img/" + hinh);
                FileInfo file = new FileInfo(pic);
                if (file.Exists)
                    file.Delete();
                string sql = "delete SANPHAM where MaSP=@MaSP";
                List<SqlParameter> list = new List<SqlParameter>()
                {
                    new SqlParameter("@MaSP", ma)
                
                };
                lk.sql_parameter(sql, list.ToArray()).ExecuteNonQuery();
                LoadData();
            }
        }


    }
    
}