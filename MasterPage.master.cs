using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Services;
using System.Configuration;
using System.Data.SqlClient;

public partial class MasterPage : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {

        TextBox1.Attributes.Add("placeholder", "Bạn muốn tìm gì ...");
        
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        if (TextBox1.Text == "v" || TextBox1.Text == "va" || TextBox1.Text == "vá" || TextBox1.Text == "V" || TextBox1.Text == "Va" || TextBox1.Text == "Vá" || TextBox1.Text == "Váy")
        {
            Session["dam"] = "L01";
        }
        if (TextBox1.Text == "d" || TextBox1.Text == "da" || TextBox1.Text == "dâ" || TextBox1.Text == "đ" || TextBox1.Text == "đa" || TextBox1.Text == "đầm" || TextBox1.Text == "D" || TextBox1.Text == "Đ" || TextBox1.Text == "Đa" || TextBox1.Text == "Đầm")
        {
            Session["dam"] = "L02";
        }
        if (TextBox1.Text == "q" || TextBox1.Text == "qua" || TextBox1.Text == "quâ" || TextBox1.Text == "quần" || TextBox1.Text == "Quần")
        {
            Session["dam"] = "L03";
        }
        if (TextBox1.Text == "a" || TextBox1.Text == "ao" || TextBox1.Text == "áo" || TextBox1.Text == "A" || TextBox1.Text == "Á" || TextBox1.Text == "ÁO" || TextBox1.Text == "Áo")
        {
            Session["dam"] = "L04";
        }
        Session["Tentimkiem"] = TextBox1.Text;
        Response.Redirect("TimKiem.aspx");
    }
    protected void Unnamed1_Click(object sender, EventArgs e)
    {
        if (Session["DNTC"].ToString() == "1")
        {
            Response.Redirect("ThongtinTV.aspx");
        }
        else
        {
            ScriptManager.RegisterStartupScript(this, this.GetType(), "alert", "alert('Vui lòng đăng nhập để xem thông tin');location.href='Home.aspx';", true);
        }
    }
}
