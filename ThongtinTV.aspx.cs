using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ThongtinTV : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        SqlDataSource1.SelectCommand = "SELECT * FROM [ThanhVien] WHERE [TenTV] = '" + Session["DNTCname"].ToString()+ "'";
    }
    protected void DataList4_ItemCommand(object source, DataListCommandEventArgs e)
    {
        if (e.CommandName == "sua")
        {
            Response.Redirect("suaTTTV.aspx");
        }
    }
}