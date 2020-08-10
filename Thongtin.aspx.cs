using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Thongtin : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        SqlDataSource1.SelectCommand = "SELECT * FROM [HangHoa] WHERE ([MAMH]='" + Session["MA"].ToString() + "')";
    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {

    }
    protected void DataList1_ItemCommand(object source, DataListCommandEventArgs e)
    {
        Session["DH"] = e.CommandArgument.ToString();
        if (e.CommandName.Equals("dathang"))
        {
            if ("chitiet" != Session["DH"].ToString())
            {
                String astrcn = ConfigurationManager.ConnectionStrings["BTMAU"].ConnectionString;
                SqlConnection cn = new SqlConnection(astrcn);
                cn.Open();
                String strsel = "select count(*) from [GIOHANG] where [MAMH] ='" + Session["DH"].ToString() + "'";
                SqlCommand cmd = new SqlCommand();
                cmd.Connection = cn;
                cmd.CommandText = strsel;
                int rs = (int)cmd.ExecuteScalar();
                if (rs == 0)
                {
                    String strcmd = "INSERT INTO [GIOHANG] SELECT [MAMH],[TENMH],[GIA],[ANH],'" + "1" + "',[GIA] FROM [HangHoa] WHERE [HangHoa].[MAMH] = '" + Session["DH"].ToString() + "'";
                    cmd.Connection = cn;
                    cmd.CommandText = strcmd;
                    int T = (int)cmd.ExecuteNonQuery();
                    if (T == 1)
                    {
                        ScriptManager.RegisterStartupScript(this, this.GetType(), "alert", "alert('Sản phẩm đã được thêm vào giỏ hàng của bạn');", true);
                    }
                }
                else if (rs > 0)
                {
                    String std = "UPDATE [GIOHANG] SET [SOLUONG] = [SOLUONG]+1  WHERE [MAMH] = '" + Session["DH"].ToString() + "'";
                    cmd.Connection = cn;
                    cmd.CommandText = std;
                    int C = (int)cmd.ExecuteNonQuery();
                    if (C == 1)
                    {
                        String TONG = "UPDATE [GIOHANG] SET [TONGTIEN] = CONVERT(float,[GIA]) * CONVERT(float, [SOLUONG])  WHERE [MAMH] = '" + Session["DH"].ToString() + "'";
                        cmd.Connection = cn;
                        cmd.CommandText = TONG;
                        int D = (int)cmd.ExecuteNonQuery();
                        if (D == 1)
                        {
                            ScriptManager.RegisterStartupScript(this, this.GetType(), "alert", "alert('Số lượng sản phẩm đã được tăng thêm 1 vào giỏ hàng của bạn');", true);
                        }
                    }
                }
                cn.Close();
            }
        }
    }
}