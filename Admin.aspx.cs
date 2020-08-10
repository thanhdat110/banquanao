using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        MultiView1.ActiveViewIndex = 0;
        if (Session["menuAdmin"] != null)
        {
            if (Session["menuAdmin"] != "")
            {
                SqlDataSource2.SelectCommand = "SELECT * FROM [HangHoa] WHERE [MALOAI] = '" + Session["menuAdmin"].ToString() + "'";
                SqlDataSource3.SelectCommand = "SELECT * FROM [PHANLOAI] WHERE [MALOAI] = '" + Session["menuAdmin"].ToString() + "'";
            }
            else
            {
                SqlDataSource4.SelectCommand = "SELECT * FROM [ThanhVien]";
            }
        }
        else
        {
            SqlDataSource2.SelectCommand = "SELECT * FROM [HangHoa] WHERE [MALOAI] = '" + "L01" + "'";
        }       
    }
    protected void DataList2_ItemCommand(object source, DataListCommandEventArgs e)
    {
        if (e.CommandName.ToString() == "menu")
        {
            Session["menuAdmin"] = e.CommandArgument.ToString();
            Session["ThanhVienAdmin"] = "";
            Response.Redirect("Admin.aspx");           
        }
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        Response.Redirect("ThemHangAdmin.aspx");
        MultiView1.ActiveViewIndex = 0;
    }
    protected void DataList1_ItemCommand(object source, DataListCommandEventArgs e)
    {
        if (e.CommandName.Equals("xoa"))
        {
            String astrcn = ConfigurationManager.ConnectionStrings["BTMAU"].ConnectionString;
            SqlConnection cn = new SqlConnection(astrcn);
            cn.Open();
            SqlCommand cmd = new SqlCommand();
            String strcmd = "DELETE FROM [HangHoa] WHERE [MAMH] = '" + e.CommandArgument.ToString() + "'";
            cmd.Connection = cn;
            cmd.CommandText = strcmd;
            int T = (int)cmd.ExecuteNonQuery();
            if (T == 1)
            {
                ScriptManager.RegisterStartupScript(this, this.GetType(), "alert", "alert('Đã xóa sản phẩm ra khỏi cửa hàng');location.href='Admin.aspx';", true);
            }
            cn.Close();
        }
        if (e.CommandName.Equals("sua"))
        {
            Session["SUAMATHANG"] = e.CommandArgument.ToString();
            Response.Redirect("suaAdmin.aspx");
        }
    }
    protected void Button4_Click(object sender, EventArgs e)
    {
        MultiView1.ActiveViewIndex = 0;
        Session["menuAdmin"] = "";
        Session["ThanhVienAdmin"] = "Ten";
        Response.Redirect("Admin.aspx");

    }
    protected void DataList4_ItemCommand(object source, DataListCommandEventArgs e)
    {
        if (e.CommandName.Equals("xoa"))
        {
            String astrcn = ConfigurationManager.ConnectionStrings["BTMAU"].ConnectionString;
            SqlConnection cn = new SqlConnection(astrcn);
            cn.Open();
            SqlCommand cmd = new SqlCommand();
            String strcmd = "DELETE FROM [ThanhVien] WHERE [TenTV] = '" + e.CommandArgument.ToString() + "'";
            cmd.Connection = cn;
            cmd.CommandText = strcmd;
            int T = (int)cmd.ExecuteNonQuery();
            if (T == 1)
            {
                ScriptManager.RegisterStartupScript(this, this.GetType(), "alert", "alert('Đã xóa thành viên này ra khỏi cửa hàng');location.href='Admin.aspx';", true);
            }
            cn.Close();
        }
    }
    protected void Button5_Click(object sender, EventArgs e)
    {
        MultiView1.ActiveViewIndex = 1;
    }
}