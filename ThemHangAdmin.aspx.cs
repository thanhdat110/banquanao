using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ThemHangAdmin : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if(!IsPostBack)
        {
        
        TextBox2.Attributes.Add("placeholder", "Tên Hàng");
        TextBox3.Attributes.Add("placeholder", "Giá");
        TextBox4.Attributes.Add("placeholder", "Size");
        TextBox5.Attributes.Add("placeholder", "Mô tả");
        TextBox6.Attributes.Add("placeholder", "Khuyến mãi");
        TextBox7.Attributes.Add("placeholder", "Xuất xứ");
        TextBox13.Attributes.Add("placeholder", "Chất liệu");
        TextBox10.Attributes.Add("placeholder", "Giá cũ");
        TextBox1.Attributes.Add("placeholder", "Số lượng");
        MultiView1.ActiveViewIndex = 0;           
        }
        string sTenfile = "";
        //Tách lấy tên tập tin
        sTenfile = FileUpload1.FileName;
        //Thực hiện chép tập tin lên thư mục Upload
        FileUpload1.SaveAs(MapPath("~/HinhAnh/" + sTenfile));
        Session["tenanh"] = sTenfile;
        String astrcn = ConfigurationManager.ConnectionStrings["BTMAU"].ConnectionString;
        SqlConnection cn = new SqlConnection(astrcn);
        cn.Open();
        String strsel = "select count(*) from [HangHoa]";
        SqlCommand cmd = new SqlCommand();
        cmd.Connection = cn;
        cmd.CommandText = strsel;
        int rs = (int)cmd.ExecuteScalar();
        if (rs >= 0)
        {
            Session["demHangHoa"] = rs + 1;
            if (Session["demHangHoa"] != null)
            {
                Label1.Text = "M" + Session["demHangHoa"].ToString();
            }
        }
        cn.Close();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {


        string ten = DropDownList1.SelectedValue.ToString();
        String astrcn = ConfigurationManager.ConnectionStrings["BTMAU"].ConnectionString;
        SqlConnection cn = new SqlConnection(astrcn);
        cn.Open();
        SqlCommand cmd = new SqlCommand();
        String strcmd = "insert into HangHoa values(N'" + "M" + Session["demHangHoa"].ToString() + "',N'" + TextBox2.Text + "',N'" + TextBox3.Text + "',N'" + "~/HinhAnh/" + Session["tenanh"].ToString() + "',N'" + TextBox5.Text + "',N'" + TextBox6.Text + "',N'" + TextBox7.Text + "',N'" + TextBox13.Text + "',N'" + TextBox4.Text + "',N'" + TextBox10.Text + "',N'" + ten + "', " + TextBox1.Text + ")";
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
        Response.Redirect("Admin.aspx");
    }
}