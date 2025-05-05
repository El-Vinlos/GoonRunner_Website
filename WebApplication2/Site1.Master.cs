using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Security.Principal;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication2
{
    public partial class Site1 : System.Web.UI.MasterPage
    {
        QueryModel Data = new QueryModel();
        private void LoginStatus(Boolean b)
        {
            loginButton.Visible = !b;
            loginForm.Visible = b;
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            if(Session["AccountLogin"] == null)
            {
                Lnkql.Visible = false;
                LoginStatus(false);
                Normal.Attributes["Class"] = "col-12";
                Admin.Visible = false;
            }
            else
            {              
                string path = HttpContext.Current.Request.Url.AbsolutePath;
                int s = path.IndexOf("QL");
                if (s==-1)
                {
                    Session["Admin"] = null;
                }
                else
                {
                    Dictionary<string, bool> Admin = new Dictionary<string, bool>();
                    Admin.Add(loginName.InnerText, true);
                    Session["Admin"] = Admin;
                }

                LoginStatus(true);

                DataRowCollection userRows = ((DataTable)Session["AccountLogin"]).Rows;
                if (userRows.Count > 0)
                {
                    string username = userRows[0]["USERNAME"].ToString().Trim();
                    loginName.InnerText = username;

                    if (username == "Admin")
                    {
                        Lnkql.Visible = true;
                    }
                    if (Session["Admin"] != null)
                    {
                        Normal.Attributes["Class"] = "col-9";
                        Admin.Visible = true;
                    }
                    else
                    {
                        Normal.Attributes["Class"] = "col-12";
                        Admin.Visible = false;
                    }
                }
            }

            if (Session["GioHang"] == null)
            {
                countShopPay.InnerText = "0";
            }
            else
            {
                Dictionary<string, int> giohang = ((Dictionary<string, int>)Session["GioHang"]);
                int number = 0;
                foreach (KeyValuePair<string, int> value in giohang)
                    number += value.Value;
                countShopPay.InnerText = number.ToString().Trim();
            }
        }

        protected void loginDangXuat_Click(object sender, EventArgs e)
        {
            Session["AccountLogin"] = null;
            Session["Admin"] = null;
            Response.Redirect(Page.Request.Url.ToString(), true);
        }

        protected void btnLoginOK_Click(object sender, EventArgs e)
        {
            var username = txtUserOK.Text;
            var password = txtPassOK.Text;

            Dictionary<string, object> account = new Dictionary<string, object>();
            account.Add("USERNAME", username);
            account.Add("PASSWORD", password);

            System.Data.DataTable dt = Data.SelectTable("TAIKHOAN", account);
            if (dt.Rows.Count > 0) {
                Session["AccountLogin"] = dt;

                LoginStatus(true);
                loginName.InnerText = username;
                if (username == "Admin" && password == "123456")
                {
                    Lnkql.Visible = true;
                }
            }
        }

        protected void Search_Click(object sender, EventArgs e)
        {
            ClassSearch.storevalue = Data.SelectTable2("SANPHAM", "TenSP", searchtb.Value.ToString());
            Response.Redirect("SanPham.aspx");
        }
    }
}