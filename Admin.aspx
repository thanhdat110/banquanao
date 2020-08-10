<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Admin.aspx.cs" Inherits="Admin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class ="menuAdmin">
        <asp:MultiView ID="MultiView1" runat="server">
            <asp:View ID="View1" runat="server">
                <asp:Button ID="Button5" runat="server" Text="Danh sách các sản phẩm trong cửa hàng" CssClass="button" OnClick="Button5_Click"/>
            </asp:View>
            <asp:View ID="View2" runat="server">
                <asp:DataList ID="DataList2" runat="server" DataSourceID="SqlDataSource1" RepeatDirection="Horizontal" RepeatLayout="Flow" Width="1000px" CssClass="menuAdmin" OnItemCommand="DataList2_ItemCommand">
            <ItemStyle Width="16%"/>
            <ItemTemplate>
                <h3><asp:LinkButton ID="TENLOAILabel" runat="server" Text='<%# Eval("TENLOAI") %>' CommandArgument='<%# Eval("MALOAI") %>' CommandName="menu" CssClass="menuAdmin1"/></h3>
                
            </ItemTemplate>
        </asp:DataList>
            </asp:View>
        </asp:MultiView>
        
        <br />
        <br />
        <asp:Button ID="Button3" runat="server" Text="Thêm sản phẩm mới vào cửa hàng" CssClass="button" OnClick="Button3_Click"/>
        <br />
        <br />
        <asp:Button ID="Button4" runat="server" Text="Danh sách thành viên cửa hàng" CssClass="button" OnClick="Button4_Click"/>
        <br />
        <br />
        <asp:DataList ID="DataList3" runat="server" DataSourceID="SqlDataSource3" Width="100%" CssClass="menuAdmin2">
            <ItemTemplate>
            <h3 style="width:100%;text-align:center;">Các sản phẩm của: loại <span style="color:red"><asp:Label ID="Label1" runat="server" Text='<%# Eval("TENLOAI") %>'></asp:Label></span></h3>
                </ItemTemplate>
            </asp:DataList>
        <br />
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ThanhVienConnectionString4 %>" SelectCommand="SELECT * FROM [PHANLOAI]"></asp:SqlDataSource>
        <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:ThanhVienConnectionString4 %>"></asp:SqlDataSource>
    <asp:DataList ID="DataList5" runat="server" DataSourceID="SqlDataSource4" Width="100%" CssClass="menuAdmin2">
            <ItemTemplate>
            <h3 style="width:100%;text-align:center;">Các <span style="color:red">thành viên</span> trong Cửa hàng<span style="color:white"><asp:Label ID="Label1" runat="server" Text='<%# Eval("TenTV") %>'></asp:Label></span></h3>
                </ItemTemplate>
            </asp:DataList>
    </div>
    
    <asp:DataList ID="DataList4" runat="server" DataSourceID="SqlDataSource4"  Width="100%" OnItemCommand="DataList4_ItemCommand">
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
                <asp:Button ID="Button2" runat="server" Text="Xóa" CssClass="button" CommandName="xoa" CommandArgument='<%# Eval("TenTV") %>'/>
                    </div>
            <div></div></div>
        </ItemTemplate>
</asp:DataList>
    <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:ThanhVienConnectionString7 %>"></asp:SqlDataSource>
    <asp:DataList ID="DataList1" runat="server" DataSourceID="SqlDataSource2" Width="100%" OnItemCommand="DataList1_ItemCommand">
        <ItemTemplate>
            <div class ="dsItemAdmin">
                <div class="adminMa">
            &nbsp Mã:
                    <br /><br />
            &nbsp<asp:Label ID="MAMHLabel" runat="server" Text='<%# Eval("MAMH") %>' />
                </div><div class="adminTen">
            &nbsp Tên Mặt Hàng:
                    <br /><br />
            &nbsp<asp:Label ID="TENMHLabel" runat="server" Text='<%# Eval("TENMH") %>' />
                    <br /><br />
                    Số lượng trong kho: 
            &nbsp<asp:Label ID="Label2" runat="server" Text='<%# Eval("SOLUONG") %>' />
                </div><div class="adminGia">
            &nbsp Giá:
                    <br /><br />
            &nbsp<asp:Label ID="GIALabel" runat="server" Text='<%# Eval("GIA") %>' />
                </div><div class="adminAnh">
            &nbsp Hình:
                    <br />
                    <br />
            &nbsp<asp:Image ID="ANHLabel" runat="server" ImageUrl='<%# Eval("ANH") %>' Width="89px" Height="100px"/>
                </div><div class="adminThongtin">
            &nbsp Thông tin:
                    <br />
            &nbsp<asp:TextBox ID="THONGTINLabel" runat="server"  CssClass="adminlistbox" Text='<%# Eval("THONGTIN") %>' TextMode="MultiLine"/>
                </div><div class="adminSK">
                   
            &nbsp SK:
                    <br />
                    <br />
            &nbsp <asp:Label ID="SKLabel" runat="server" Text='<%# Eval("SK") %>' />
                </div><div class="adminXuatxu">
            &nbsp Xuất xứ:
                    <br />
                    <br />
            &nbsp<asp:Label ID="XUATXULabel" runat="server" Text='<%# Eval("XUATXU") %>' />
                </div><div class="adminChatlieu">
            &nbsp Chất liệu:
                    <br />
                    <br />
            &nbsp<asp:Label ID="CHATLIEULabel" runat="server" Text='<%# Eval("CHATLIEU") %>' />
                </div><div class="adminSize">
            &nbsp Size:
                    <br />
                    <br />
            &nbsp<asp:Label ID="SIZELabel" runat="server" Text='<%# Eval("SIZE") %>' />
                </div><div  class="adminGiacu">
            &nbsp Giá cũ:
                    <br />
                    <br />
            &nbsp<asp:Label ID="GIACULabel" runat="server" Text='<%# Eval("GIACU") %>' />
                </div><div class="adminMaloai">
            &nbsp Mã loại:
                    <br />
                    <br />
            &nbsp<asp:Label ID="MALOAILabel" runat="server" Text='<%# Eval("MALOAI") %>' />
                </div>
                <div class="adminNut">
                <asp:Button ID="Button1" runat="server" Text="Sửa" CssClass="button" CommandName="sua" CommandArgument='<%# Eval("MAMH") %>'/>
                 <br />
                 <br />
                <asp:Button ID="Button2" runat="server" Text="Xóa" CssClass="button" CommandName="xoa" CommandArgument='<%# Eval("MAMH") %>'/>
                    </div>
            <div></div></div>
        </ItemTemplate>
</asp:DataList>
    <div class="clearfix"></div>
<asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ThanhVienConnectionString5 %>" ></asp:SqlDataSource>
</asp:Content>

