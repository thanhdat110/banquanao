using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class DK : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        TextBox1.Attributes.Add("placeholder", "Tên");
        TextBox2.Attributes.Add("placeholder", "Tên đệm");
        TextBox3.Attributes.Add("placeholder", "Địa chỉ Gmail");
        TextBox4.Attributes.Add("placeholder", "Số điện thoại");
        TextBox5.Attributes.Add("placeholder", "Số chứng minh thư");
        TextBox6.Attributes.Add("placeholder", "Tên đăng nhập");
        TextBox7.Attributes.Add("placeholder", "Mật khẩu");
        TextBox8.Attributes.Add("placeholder", "Địa chỉ nhận hàng 1");
        TextBox9.Attributes.Add("placeholder", "Tuổi");
        TextBox13.Attributes.Add("placeholder", "    Nhập lại mật khẩu");
        TextBox14.Attributes.Add("placeholder", "Nơi làm việc");
        MultiView1.ActiveViewIndex = 0;
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        String astrcn = ConfigurationManager.ConnectionStrings["BTMAU"].ConnectionString;
        SqlConnection cn = new SqlConnection(astrcn);
        cn.Open();       
        SqlCommand cmd = new SqlCommand();
        String strcmd = "insert into ThanhVien values(N'";
        strcmd = strcmd + TextBox1.Text + "',N'" + TextBox2.Text + "',N'" + TextBox3.Text + "',N'" + TextBox4.Text+ "',N'" + TextBox5.Text + "',N'" + TextBox6.Text + "','" + TextBox7.Text + "','"+TextBox8.Text+"','"+TextBox9.Text+"','"+TextBox14.Text+"')";
        cmd.Connection = cn;
        cmd.CommandText = strcmd;
        int T = (int)cmd.ExecuteNonQuery();
        if (T == 1)
        {
            MultiView1.ActiveViewIndex = 1;
        }
        cn.Close();
    }
    protected void Button5_Click(object sender, EventArgs e)
    {
        Response.Redirect("Home.aspx");
    }
}