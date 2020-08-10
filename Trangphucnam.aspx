<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Trangphucnam.aspx.cs" Inherits="Trangphucnam" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="container_fullwidth">
            <div class="container">
    <div class="featured-products">
                  <h3 class="title">Trang phục<strong> Nam</strong></h3>
                  
                  <ul id="featured">
                     <li>
                        <div class="row">
                    <asp:DataList ID="DataList3" runat="server" DataSourceID="SqlDataSource2" RepeatColumns="4" RepeatLayout="Flow" OnEditCommand="DataList1_EditCommand" OnItemCommand="DataList1_ItemCommand">
                       <ItemTemplate>
                           <div class="col-md-3 col-sm-6">
                              <div class="products">
                                   <div class="offer"><asp:Label ID="Label1" runat="server" Text='<%# Eval("SK") %>' /></div>
                                 <div class="thumbnail">
                                     <asp:LinkButton ID="LinkButton1" runat="server" CommandArgument='<%# Eval("MAMH") %>'  CommandName="chitiet"><asp:Image ID="ANHLabel" runat="server" ImageUrl='<%# Eval("ANH") %>' Width="800" Height="220"/></asp:LinkButton></div>
                                 <div class="productname"><asp:Label ID="TENMHLabel" runat="server" Text='<%# Eval("TENMH") %>' /></div>
                                 <h4 class="price"><asp:Label ID="GIALabel" runat="server" Text='<%# Eval("GIA") %>' />VND</h4>
                                 <div class="button_group"><button class="button add-cart" type="button">
                                     <asp:LinkButton ID="HyperLink1" runat="server" CommandName='<%# Eval("MAMH") %>'>Đặt mua</asp:LinkButton></button><button class="button" type="button"><asp:LinkButton ID="LinkButton2" runat="server" CommandArgument='<%# Eval("MAMH") %>' CommandName="chitiet">Chi tiết</asp:LinkButton></button></div>
                           </div></div>
                       </ItemTemplate>
                   </asp:DataList></div>
                         </li>
                       <li>
                         <div class="row">
                    <asp:DataList ID="DataList4" runat="server" DataSourceID="SqlDataSource2" RepeatColumns="4" RepeatLayout="Flow" OnEditCommand="DataList1_EditCommand" OnItemCommand="DataList1_ItemCommand">
                       <ItemTemplate>
                           <div class="col-md-3 col-sm-6">
                              <div class="products">
                                   <div class="offer"><asp:Label ID="Label1" runat="server" Text='<%# Eval("SK") %>' /></div>
                                 <div class="thumbnail">
                                     <asp:LinkButton ID="LinkButton1" runat="server" CommandArgument='<%# Eval("MAMH") %>'  CommandName="chitiet"><asp:Image ID="ANHLabel" runat="server" ImageUrl='<%# Eval("ANH") %>' Width="800" Height="220"/></asp:LinkButton></div>
                                 <div class="productname"><asp:Label ID="TENMHLabel" runat="server" Text='<%# Eval("TENMH") %>' /></div>
                                 <h4 class="price"><asp:Label ID="GIALabel" runat="server" Text='<%# Eval("GIA") %>' />VND</h4>
                                 <div class="button_group"><button class="button add-cart" type="button">
                                     <asp:LinkButton ID="HyperLink1" runat="server" CommandName='<%# Eval("MAMH") %>'>Đặt mua</asp:LinkButton></button><button class="button" type="button"><asp:LinkButton ID="LinkButton2" runat="server" CommandArgument='<%# Eval("MAMH") %>' CommandName="chitiet">Chi tiết</asp:LinkButton></button></div>
                           </div></div>
                       </ItemTemplate>
                   </asp:DataList></div>
                     </li>
                    
                  </ul>
                   <div class="control"><a id="prev_featured" class="prev" href="#">&lt;</a><a id="next_featured" class="next" href="#">&gt;</a></div>
               </div>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ThanhVienConnectionString %>" ></asp:SqlDataSource>
                
                </div>
        </div>
    <div class="clearfix"></div> 
</asp:Content>

