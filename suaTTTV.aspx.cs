using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class suaTTTV : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        SqlDataSource1.SelectCommand = "SELECT * FROM [ThanhVien] WHERE [TenTV] = '" + Session["DNTCname"].ToString() + "'";
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
            TextBox TextBox3 = e.Item.FindControl("TextBox3") as TextBox;
            TextBox GIALabel = e.Item.FindControl("GIALabel") as TextBox;
            TextBox TextBox1 = e.Item.FindControl("TextBox1") as TextBox;
            TextBox TextBox2 = e.Item.FindControl("TextBox2") as TextBox;
            TextBox TextBox4 = e.Item.FindControl("TextBox4") as TextBox;
            TextBox TextBox5 = e.Item.FindControl("TextBox5") as TextBox;
            TextBox TextBox6 = e.Item.FindControl("TextBox6") as TextBox;
            TextBox TextBox7 = e.Item.FindControl("TextBox7") as TextBox;
            TextBox TextBox8 = e.Item.FindControl("TextBox8") as TextBox;
            String td = ConfigurationManager.ConnectionStrings["BTMAU"].ConnectionString;
            String update = ConfigurationManager.ConnectionStrings["BTMAU"].ConnectionString;
            SqlConnection up = new SqlConnection(update);
            up.Open();
            SqlCommand upda = new SqlCommand();
            upda.Parameters.Add("@TENMHLabel", SqlDbType.NVarChar).Value = TENMHLabel.Text;
            upda.Parameters.Add("@TextBox3", SqlDbType.NVarChar).Value = TextBox3.Text;
            upda.Parameters.Add("@GIALabel", SqlDbType.NVarChar).Value = GIALabel.Text;
            upda.Parameters.Add("@TextBox1", SqlDbType.NVarChar).Value = TextBox1.Text;
            upda.Parameters.Add("@TextBox2", SqlDbType.NVarChar).Value = TextBox2.Text;
            upda.Parameters.Add("@TextBox4", SqlDbType.NVarChar).Value = TextBox4.Text;
            upda.Parameters.Add("@TextBox5", SqlDbType.NVarChar).Value = TextBox5.Text;
            upda.Parameters.Add("@TextBox6", SqlDbType.NVarChar).Value = TextBox6.Text;
            upda.Parameters.Add("@TextBox7", SqlDbType.NVarChar).Value = TextBox7.Text;
            upda.Parameters.Add("@TextBox8", SqlDbType.NVarChar).Value = TextBox8.Text;
            String capnhat = "UPDATE [ThanhVien] SET [Ten] = @TENMHLabel ,[Tendem]=@TextBox3,[mail]=@GIALabel,[sdt]=@TextBox1,[cm]=@TextBox2,[TenTV]=@TextBox4,[mk]=@TextBox5,[diachi]=@TextBox6,[tuoi]=@TextBox7,[noilv]=@TextBox8  WHERE [TenTV] = '" + Session["DNTCname"].ToString() + "'";
            upda.Connection = up;
            upda.CommandText = capnhat;
            int C = (int)upda.ExecuteNonQuery();
            if (C == 1)
            {

                ScriptManager.RegisterStartupScript(this, this.GetType(), "alert", "alert('Đã cập nhật Thông tin');location.href='Thongtin.aspx';", true);

            }
            up.Close();

        }
    }
}