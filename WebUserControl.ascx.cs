using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class WebUserControl : System.Web.UI.UserControl
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            if (Session["DNTC"] != null)
            {
                
                MultiView1.ActiveViewIndex = int.Parse(Session["DNTC"].ToString());
                if (Session["DNTCname"] != null && Session["DNTCname2"] != null)
                {
                    Label1.Text = Session["DNTCname"].ToString();
                    Label4.Text = Session["DNTCname2"].ToString();
                }
            }
            else
            {
                Session["DNTC"] = "0";
                MultiView1.ActiveViewIndex = int.Parse(Session["DNTC"].ToString());
                
            }
        }
        
        TextBox2.Attributes.Add("placeholder", "Tên Đăng nhập");
        TextBox3.Attributes.Add("placeholder", "Mật khẩu");
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        Response.Redirect("DK.aspx");
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        String astrcn = ConfigurationManager.ConnectionStrings["BTMAU"].ConnectionString;
        SqlConnection cn = new SqlConnection(astrcn);
        cn.Open();
        if (CheckBox1.Checked == true)
        {
            if (TextBox2.Text == "Thanh" && TextBox3.Text == "1")
            {
                Session["DNTC"] = "1";
                Session["DNTCname"] = TextBox2.Text;
                Session["DNTCname2"] = "Admin";
                Response.Redirect("Admin.aspx");
            }           
            else
            {
                Session["DNTC"] = "0";
                Label2.Text = "sai tài khoản mật khẩu";
            }
        }
        else
        {
            String strsel = "select count(*) from ThanhVien where TenTV =N'" + TextBox2.Text + "' AND mk=N'" + TextBox3.Text + "'";
            SqlCommand cmd = new SqlCommand();
            cmd.Connection = cn;
            cmd.CommandText = strsel;
            int rs = (int)cmd.ExecuteScalar();
            if (rs > 0)
            {
                Session["DNTC"] = "1";
                Session["DNTCname"] = TextBox2.Text;
                Session["DNTCname2"] = "";
                Response.Redirect("Home.aspx");
            }
            else
            {
                Session["DNTC"] = "0";
                Label2.Text = "sai tài khoản mật khẩu";
            }
            cn.Close();
        }
    }
    protected void Button4_Click(object sender, EventArgs e)
    {
        Session["DNTC"] = "0";
        Response.Redirect("Home.aspx");
    }
}