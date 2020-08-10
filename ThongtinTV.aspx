<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="ThongtinTV.aspx.cs" Inherits="ThongtinTV" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h1>Thông tin của bạn</h1>
    <asp:DataList ID="DataList4" runat="server" DataSourceID="SqlDataSource1"  Width="100%" OnItemCommand="DataList4_ItemCommand">
        <ItemTemplate>
            
            <div class ="dsItemAdmin">
                <div class="adminTen">
            &nbsp Họ Tên:
                    <br /><br />
            &nbsp<asp:Label ID="TendemLabel" runat="server" Text='<%# Eval("Tendem") %>' /><asp:Label ID="TenLabel" runat="server" Text='<%# Eval("Ten") %>' />*
                </div><div class="adminTen">
            &nbsp Địa chỉ gmail:
                    <br /><br />
            &nbsp<asp:Label ID="mailLabel" runat="server" Text='<%# Eval("mail") %>' />
                </div><div class="adminTen">
            &nbsp SĐT:
                    <br /><br />
            &nbsp<asp:Label ID="sdtLabel" runat="server" Text='<%# Eval("sdt") %>' />
                </div><div class="adminThongtin">
            &nbsp Nơi làm việc:
                    <br />
            &nbsp<asp:TextBox ID="THONGTINLabel" runat="server"  CssClass="adminlistbox" Text='<%# Eval("noilv") %>' TextMode="MultiLine"/>
                </div><div class="adminTen">
                   
            &nbsp CMND:
                    <br />
                    <br />
            &nbsp <asp:Label ID="cmLabel" runat="server" Text='<%# Eval("cm") %>' />
                </div><div class="adminXuatxu">
            &nbsp Địa chỉ:
                    <br />
                    <br />
            &nbsp<asp:TextBox ID="TextBox1" runat="server"  CssClass="adminlistbox" Text='<%# Eval("diachi") %>' TextMode="MultiLine"/>
                </div><div class="adminSK">
            &nbsp Chất liệu:
                    <br />
                    <br />
            &nbsp<asp:Label ID="tuoiLabel" runat="server" Text='<%# Eval("tuoi") %>' />
                </div><div  class="adminGiacu">
            &nbsp Tên ĐN:
                    <br />
                    <br />
            &nbsp<asp:Label ID="GIACULabel" runat="server" Text='<%# Eval("TenTV") %>' />
                </div><div class="adminMaloai">
            &nbsp Mật Khẩu:
                    <br />
                    <br />
            &nbsp<asp:Label ID="TenTVLabel" runat="server" Text='<%# Eval("mk") %>' />
                </div>
                <div class="adminNut">
                
                 <br />
                <asp:Button ID="Button2" runat="server" Text="Sửa Thông tin" CssClass="button" CommandName="sua" CommandArgument='<%# Eval("TenTV") %>'/>
                    </div>
            <div></div></div>
        </ItemTemplate>
</asp:DataList>
<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ThanhVienConnectionString8 %>"></asp:SqlDataSource>
</asp:Content>

