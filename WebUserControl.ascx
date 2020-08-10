<%@ Control Language="C#" AutoEventWireup="true" CodeFile="WebUserControl.ascx.cs" Inherits="WebUserControl" %>
 <asp:MultiView ID="MultiView1" runat="server">
                <asp:View ID="View1" runat="server">
                    <div style="float:right;margin-top:5px;">
            <asp:TextBox ID="TextBox2" runat="server" CssClass="input" ></asp:TextBox>
            <asp:TextBox ID="TextBox3" runat="server" CssClass="input"  TextMode="Password"></asp:TextBox>
            <asp:Button ID="Button2" runat="server" Text="Đăng nhập" CssClass="button" OnClick="Button2_Click"/>
            <asp:Button ID="Button3" runat="server" Text="Đăng ký" CssClass="button" OnClick="Button3_Click"/>
                </div>
                    <div style="float:right;margin-top:40px;" class="chuTB">
                        <span style="color:white"><asp:CheckBox ID="CheckBox1" runat="server" Text="Đăng nhập với tư cách admin"/></span>
                        <br />
                        <asp:Label ID="Label2" runat="server" Text=""></asp:Label></div>
                </asp:View>
                <asp:View ID="View2" runat="server">
                    <div style="float:right;margin-top:5px;">
                    <asp:Image ID="Image1" runat="server" ImageUrl="~/images/imagesNguoi.png" Width="30px" Height="30px"/><asp:Label ID="Label3" runat="server" Text="Chào mừng:" CssClass="chuTB1"></asp:Label><asp:Label ID="Label1" runat="server" Text="" CssClass="chuTB1"></asp:Label><a href="Admin.aspx" style="color:red"><asp:Label ID="Label4" runat="server" Text="Label"></asp:Label></a>
                        <asp:Button ID="Button4" runat="server" Text="Đăng xuất" OnClick="Button4_Click" CssClass="button"/>
                    </div>
                </asp:View>
            </asp:MultiView>
