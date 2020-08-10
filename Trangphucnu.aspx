<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Trangphucnu.aspx.cs" Inherits="Trangphucnu" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="container_fullwidth">
            <div class="container">
    <div class="hot-products">
                  <h3 class="title">Trang phục<strong> Nữ</strong></h3>
                  
                   
                   <ul id="hot">
                     <li>
                         <div class="row">
                    <asp:DataList ID="DataList1" runat="server" DataSourceID="SqlDataSource1" RepeatColumns="4" RepeatLayout="Flow" OnEditCommand="DataList1_EditCommand" OnItemCommand="DataList1_ItemCommand">
                       <ItemTemplate>
                           <div class="col-md-3 col-sm-6">
                              <div class="products">
                                   <div class="offer"><asp:Label ID="Label1" runat="server" Text='<%# Eval("SK") %>' /></div>
                                 <div class="thumbnail">
                                     <asp:LinkButton ID="LinkButton1" runat="server" CommandArgument='<%# Eval("MAMH") %>' CommandName="chitiet"><asp:Image ID="ANHLabel" runat="server" ImageUrl='<%# Eval("ANH") %>' /></asp:LinkButton>

                                 </div>
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
                    <asp:DataList ID="DataList2" runat="server" DataSourceID="SqlDataSource1" RepeatColumns="4" RepeatLayout="Flow" OnEditCommand="DataList1_EditCommand" OnItemCommand="DataList1_ItemCommand">
                       <ItemTemplate>
                           <div class="col-md-3 col-sm-6">
                              <div class="products">
                                   <div class="offer"><asp:Label ID="Label1" runat="server" Text='<%# Eval("SK") %>' /></div>
                                 <div class="thumbnail">
                                     <asp:LinkButton ID="LinkButton1" runat="server" CommandArgument='<%# Eval("MAMH") %>'  CommandName="chitiet"><asp:Image ID="ANHLabel" runat="server" ImageUrl='<%# Eval("ANH") %>' /></asp:LinkButton></div>
                                 <div class="productname"><asp:Label ID="TENMHLabel" runat="server" Text='<%# Eval("TENMH") %>' /></div>
                                 <h4 class="price"><asp:Label ID="GIALabel" runat="server" Text='<%# Eval("GIA") %>' />VND</h4>
                                 <div class="button_group"><button class="button add-cart" type="button">
                                     <asp:LinkButton ID="HyperLink1" runat="server" CommandName='<%# Eval("MAMH") %>'>Đặt mua</asp:LinkButton></button><button class="button" type="button"><asp:LinkButton ID="LinkButton2" runat="server" CommandArgument='<%# Eval("MAMH") %>' CommandName="chitiet">Chi tiết</asp:LinkButton></button></div>
                           </div></div>
                       </ItemTemplate>
                   </asp:DataList></div>
                     </li>
                    
                  </ul>
                   <div class="control"><a id="prev_hot" class="prev" href="#">&lt;</a><a id="next_hot" class="next" href="#">&gt;</a></div>
                   <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ThanhVienConnectionString %>" ></asp:SqlDataSource>
                   
               </div>
                </div>
        </div>
               <div class="clearfix"></div>
</asp:Content>

