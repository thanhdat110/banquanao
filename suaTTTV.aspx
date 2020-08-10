<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="suaTTTV.aspx.cs" Inherits="suaTTTV" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <h3 class="title">
                                                Đây là sửa thông tin
                                                </h3>
                                        <asp:DataList ID="DataList1" runat="server" DataSourceID="SqlDataSource1" OnItemCommand="DataList1_ItemCommand" OnEditCommand="DataList1_EditCommand" OnUpdateCommand="DataList1_UpdateCommand">

                                            <ItemTemplate>
                                                
                                                
                                                <table class="shop-table">
                                             
                                                <tbody>
                                                  <tr>
                                                    
                                                    <td>
                                                      <div class="shop-details">
                                                        <div class="productname">
                                                          Tên : <asp:TextBox ID="TENMHLabel" runat="server" Text='<%# Eval("Ten") %>' />
                                                        </div>
                                                          </td><td>
                                                        <div class="productname">
                                                          Tên đệm: <asp:TextBox ID="TextBox3" runat="server" Text='<%# Eval("Tendem") %>' />
                                                        </div>
                                                       
                                                    </td>
                                                    <td>
                                                         mail:
                                                        <br />
                                                        <asp:TextBox ID="GIALabel" runat="server" Text='<%# Eval("mail") %>' />

                                                    </td>
                                                      <td>
                                                        sdt
                                                          <br />
                                                        <asp:TextBox ID="TextBox1" runat="server" Text='<%# Eval("sdt") %>'/>

                                                    </td>
                                                    <td>
                                                        cm: 
                                                          <br />
                                                        <asp:TextBox ID="TextBox2" runat="server" Text='<%# Eval("cm") %>' />

                                                    </td>
                                                          <td>
                                                        Tên đăng nhập: 
                                                          <br />
                                                        <asp:TextBox ID="TextBox4" runat="server" Text='<%# Eval("TenTV") %>' />

                                                    </td>
                                                      </tr><tr>
                                                      <td>
                                                        Mật khẩu: 
                                                          <br />
                                                        <asp:TextBox ID="TextBox5" runat="server" Text='<%# Eval("mk") %>' />

                                                    </td>
                                                      <td>
                                                        Địa chỉ: 
                                                          <br />
                                                        <asp:TextBox ID="TextBox6" runat="server" Text='<%# Eval("diachi") %>' />

                                                    </td>
                                                      <td>
                                                        tuoi: 
                                                          <br />
                                                        <asp:TextBox ID="TextBox7" runat="server" Text='<%# Eval("tuoi") %>' />

                                                    </td>
                                                      <td>
                                                        nơi làm việc: 
                                                          <br />
                                                        <asp:TextBox ID="TextBox8" runat="server" Text='<%# Eval("noilv") %>' />

                                                    </td>                                         
                                                      <td>
                                                          <button class=" pull-right"><asp:LinkButton ID="LinkButton2"  runat="server"  CommandName="update" CommandArgument='<%# Eval("TenTV") %>'>
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

