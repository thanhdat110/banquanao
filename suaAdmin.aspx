<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="suaAdmin.aspx.cs" Inherits="suaAdmin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h3 class="title">
                                                Đây là sửa đổi hàng hóa Admin
                                                </h3>
                                        <asp:DataList ID="DataList1" runat="server" DataSourceID="SqlDataSource1" OnItemCommand="DataList1_ItemCommand" OnEditCommand="DataList1_EditCommand" OnUpdateCommand="DataList1_UpdateCommand">

                                            <ItemTemplate>
                                                
                                                
                                                <table class="shop-table">
                                             
                                                <tbody>
                                                  <tr>
                                                    <td>
                                                      <asp:Image ID="ANHLabel" runat="server" ImageUrl='<%# Eval("ANH") %>' />
                                                    </td>
                                                    <td>
                                                      <div class="shop-details">
                                                        <div class="productname">
                                                          Tên mặt hàng: <asp:TextBox ID="TENMHLabel" runat="server" Text='<%# Eval("TENMH") %>' />
                                                        </div>
                                                        <p>
                                                          <img alt="" src="images/star.png">
                                                          <a class="review_num" href="#">
                                                            02 Review(s)
                                                          </a>
                                                        </p>
                                                        <div class="color-choser">
                                                          <span class="text">
                                                            Product Color : 
                                                          </span>
                                                          <ul>
                                                            <li>
                                                              <a class="black-bg " href="#">
                                                                black
                                                              </a>
                                                            </li>
                                                            <li>
                                                              <a class="red-bg" href="#">
                                                                light red
                                                              </a>
                                                            </li>
                                                          </ul>
                                                        </div>
                                                        <p>
                                                          Khuyến mãi : 
                                                          <strong class="pcode">
                                                            <asp:TextBox ID="SKLabel" runat="server" Text='<%# Eval("SK") %>' />
                                                          </strong>
                                                        </p>
                                                      </div>
                                                    </td>
                                                    <td>
                                                         Giá
                                                        <br />
                                                        <asp:TextBox ID="GIALabel" runat="server" Text='<%# Eval("GIA") %>' />

                                                    </td>
                                                      <td>
                                                        Mô tả
                                                          <br />
                                                        <asp:TextBox ID="TextBox1" runat="server" Text='<%# Eval("THONGTIN") %>' TextMode="MultiLine"/>

                                                    </td>
                                                    <td>
                                                        Số lượng: 
                                                          <br />
                                                        <asp:TextBox ID="TextBox2" runat="server" Text='<%# Eval("SOLUONG") %>' TextMode="MultiLine"/>

                                                    </td>
                                                                                                  
                                                      <td>
                                                          <button class=" pull-right"><asp:LinkButton ID="LinkButton2"  runat="server"  CommandName="update" CommandArgument='<%# Eval("MAMH") %>'>
                                                        Update
                                                      </asp:LinkButton></button> 
                                                      </td>
                                                  </tr>                                                                                                  
                                                </tbody>
                                               </table>
                                                <div class="clearfix"></div>
                                            </ItemTemplate>
                                        </asp:DataList>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ThanhVienConnectionString3 %>" ></asp:SqlDataSource>
</asp:Content>

