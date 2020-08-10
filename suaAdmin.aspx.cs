using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class suaAdmin : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        SqlDataSource1.SelectCommand = "SELECT * FROM [HangHoa] WHERE [MAMH] = '" + Session["SUAMATHANG"].ToString()+ "'";
    }
    protected void DataList1_ItemCommand(object source, DataListCommandEventArgs e)
    {

        

    }
    protected void update_Click(object sender, EventArgs e)
    {

    }
    protected void DataList1_EditCommand(object source, DataListCommandEventArgs e)
    {

    }
    protected void DataList1_UpdateCommand(object source, DataListCommandEventArgs e)
    {
        if (e.CommandName.ToString() == "update")
        {

            TextBox TENMHLabel = e.Item.FindControl("TENMHLabel") as TextBox;
            TextBox SKLabel = e.Item.FindControl("SkLabel") as TextBox;
            TextBox GIALabel = e.Item.FindControl("GIALabel") as TextBox;
            TextBox Thongtin = e.Item.FindControl("TextBox1") as TextBox;
            TextBox soluong = e.Item.FindControl("TextBox2") as TextBox;
            String td = ConfigurationManager.ConnectionStrings["BTMAU"].ConnectionString;
            String update = ConfigurationManager.ConnectionStrings["BTMAU"].ConnectionString;
            SqlConnection up = new SqlConnection(update);
            up.Open();
            SqlCommand upda = new SqlCommand();
            upda.Parameters.Add("@TENMHLabel", SqlDbType.NVarChar).Value = TENMHLabel.Text;
            upda.Parameters.Add("@SKLabel", SqlDbType.NVarChar).Value = SKLabel.Text;
            upda.Parameters.Add("@GIALabel", SqlDbType.NVarChar).Value = GIALabel.Text;
            upda.Parameters.Add("@THONGTIN", SqlDbType.NVarChar).Value = Thongtin.Text;
            upda.Parameters.Add("@soluong", SqlDbType.NVarChar).Value = soluong.Text;
            String capnhat = "UPDATE [HangHoa] SET [TENMH] = @TENMHLabel ,[SK] = @SKLabel ,[GIA] = @GIALabel,[THONGTIN]=@THONGTIN,[SOLUONG]=@soluong  WHERE [MAMH] = '" + e.CommandArgument.ToString() + "'";
            upda.Connection = up;
            upda.CommandText = capnhat;
            int C = (int)upda.ExecuteNonQuery();
            if (C == 1)
            {

                ScriptManager.RegisterStartupScript(this, this.GetType(), "alert", "alert('Đã cập nhật mặt hàng');location.href='Admin.aspx';", true);

            }
            up.Close();

        }
    }
}