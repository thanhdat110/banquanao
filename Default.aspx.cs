using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class GioHang : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        MultiView1.ActiveViewIndex = 0;
        Label3.Text = xuatTongTien().ToString();
        Label2.Text = soluong().ToString();

    }
    int soluong()
    {
        String astrcn = ConfigurationManager.ConnectionStrings["BTMAU"].ConnectionString;
        SqlConnection cn = new SqlConnection(astrcn);
        cn.Open();
        String strsel = "select count(*) from [GIOHANG]";
        SqlCommand cmd = new SqlCommand();
        cmd.Connection = cn;
        cmd.CommandText = strsel;
        int rs = (int)cmd.ExecuteScalar();
        cn.Close();
        return rs;
    }
    int xuatTongTien()
    {
            String astrcn = ConfigurationManager.ConnectionStrings["BTMAU"].ConnectionString;
            SqlConnection cn = new SqlConnection(astrcn);
            cn.Open();
            if (soluong() > 0)
            {
                String strsel = "select sum(TONGTIEN) from [GIOHANG]";
                SqlCommand cmd = new SqlCommand();
                cmd.Connection = cn;
                cmd.CommandText = strsel;
                int rs = (int)cmd.ExecuteScalar();
                cn.Close();
                return rs;
            }
            return 0;
            
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("Home.aspx");
    }

    protected void DataList1_ItemCommand(object source, DataListCommandEventArgs e)
    {
        
        if (e.CommandName.Equals("delete"))
        {
            String astrcn = ConfigurationManager.ConnectionStrings["BTMAU"].ConnectionString;
            SqlConnection cn = new SqlConnection(astrcn);
            cn.Open();
            SqlCommand cmd = new SqlCommand();
            String strcmd = "DELETE FROM [GIOHANG] WHERE [MAMH] = '" + e.CommandArgument.ToString() + "'";
            cmd.Connection = cn;
            cmd.CommandText = strcmd;
            int T = (int)cmd.ExecuteNonQuery();
            if (T == 1)
            {
                ScriptManager.RegisterStartupScript(this, this.GetType(), "alert", "alert('Đã xóa sản phẩn ra khỏi giỏ hàng');location.href='Default.aspx';", true);
            }
            cn.Close();
        }
        
    }
    protected void update_Click(object sender, EventArgs e)
    {
        
    }
    protected void DataList1_EditCommand(object source, DataListCommandEventArgs e)
    {

    }
    protected void DataList1_UpdateCommand(object source, DataListCommandEventArgs e)
    {
        if (e.CommandName.ToString()=="update")
        {

            TextBox txtTema = e.Item.FindControl("Soluong") as TextBox;
            String td = ConfigurationManager.ConnectionStrings["BTMAU"].ConnectionString;
            String update = ConfigurationManager.ConnectionStrings["BTMAU"].ConnectionString;
            SqlConnection up = new SqlConnection(update);
            up.Open();
            SqlCommand upda = new SqlCommand();
            upda.Parameters.Add("@Name", SqlDbType.VarChar).Value = txtTema.Text;
            String capnhat = "UPDATE [GIOHANG] SET [SOLUONG] = @Name  WHERE [MAMH] = '" + e.CommandArgument.ToString() + "'";
            upda.Connection = up;
            upda.CommandText = capnhat;
            int C = (int)upda.ExecuteNonQuery();
            if (C == 1)
            {
                String TONG = "UPDATE [GIOHANG] SET [TONGTIEN] = CONVERT(float,[GIA]) * CONVERT(float, [SOLUONG]) WHERE [MAMH] = '"+e.CommandArgument.ToString()+"'";
                upda.Connection = up;
                upda.CommandText = TONG;
                int D = (int)upda.ExecuteNonQuery();
                if (D == 1)
                {
                    ScriptManager.RegisterStartupScript(this, this.GetType(), "alert", "alert('Đã cập nhật lại số lượng');location.href='Default.aspx';", true);
                }
            }
            up.Close();

        }
    }
    protected void mua_Click(object sender, EventArgs e)
    {
        if(Session["DNTC"].ToString() == "0")
        {
            ScriptManager.RegisterStartupScript(this, this.GetType(), "alert", "alert('Vui lòng đăng nhập để thanh toán');location.href='Default.aspx';", true);
        }
        else
        {
        String astrcn = ConfigurationManager.ConnectionStrings["BTMAU"].ConnectionString;
        SqlConnection cn = new SqlConnection(astrcn);
        cn.Open();
        SqlCommand cmd = new SqlCommand();
        String strcmd = "DELETE FROM [GIOHANG]";
        cmd.Connection = cn;
        cmd.CommandText = strcmd;
        int T = (int)cmd.ExecuteNonQuery();
        if (T > 0)
        {
            ScriptManager.RegisterStartupScript(this, this.GetType(), "alert", "alert('Đã thanh toán cảm ơn quý khách');", true);
            MultiView1.ActiveViewIndex = 1;
        }
        cn.Close();
        }
    }
}