<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="ThemHangAdmin.aspx.cs" Inherits="ThemHangAdmin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="clearfix">
              </div>
    <div class="col-md-9">
              <div class="checkout-page">
                <ol class="checkout-steps">                  
                  <li class="steps active">
                    <a href="checkout.html" class="step-title">
                      Nhập thông tin mặt hàng mới
                    </a>
                      <asp:MultiView ID="MultiView1" runat="server">
                          <asp:View ID="View1" runat="server">
                              <div class="step-description">
                      
                        <div class="row">
                          <div class="col-md-6 col-sm-6">
                            <div class="your-details">
                              <h5>
                                Thông tin Mặt hàng
                              </h5>                              
                              <div class="form-row">
                                <label class="lebel-abs">
                                  Tên hàng
                                  <strong class="red">
                                    *
                                  </strong>
                                </label>
                                  <asp:TextBox ID="TextBox2" runat="server"  CssClass="input namefild"></asp:TextBox>
                              </div>
                              <div class="form-row">
                                <label class="lebel-abs">
                                  Giá 
                                  <strong class="red">
                                    *
                                  </strong>
                                </label>
                                <asp:TextBox ID="TextBox3" runat="server"  CssClass="input namefild"></asp:TextBox>
                              </div>
                              <div class="form-row">
                                  Ảnh: &nbsp <asp:FileUpload ID="FileUpload1" runat="server" />
                              </div>
                              <div class="form-row">
                                  Mô tả: &nbsp
                                <asp:TextBox ID="TextBox5" runat="server" CssClass="input namefild" TextMode="MultiLine"></asp:TextBox>
                              </div>
                              <div class="form-row">
                                <label class="lebel-abs">
                                  Khuyến mãi
                                  <strong class="red">
                                    *
                                  </strong>
                                </label>
                                <asp:TextBox ID="TextBox6" runat="server"  CssClass="input namefild"></asp:TextBox>
                              </div>
                              <div class="pass-wrap">
                                <div class="form-row">
                                  <label class="lebel-abs">
                                    Xuất xứ
                                    <strong class="red">
                                      *
                                    </strong>
                                  </label>
                                  <asp:TextBox ID="TextBox7" runat="server"  CssClass="input namefild"></asp:TextBox>
                                </div>
                                <div class="form-row">
                                  <label class="lebel-abs">
                                    Chất liệu
                                    <strong class="red">
                                      *
                                    </strong>
                                  </label>
                                    <asp:TextBox ID="TextBox13" runat="server" CssClass="input namefild"></asp:TextBox>
                                </div>
                                   <div class="form-row">
                                  <label class="lebel-abs">
                                    size
                                    <strong class="red">
                                      *
                                    </strong>
                                  </label>
                                    <asp:TextBox ID="TextBox4" runat="server" CssClass="input namefild"></asp:TextBox>
                                </div>
                                   <div class="form-row">
                                  <label class="lebel-abs">
                                    Giá cũ
                                    <strong class="red">
                                      *
                                    </strong>
                                  </label>
                                    <asp:TextBox ID="TextBox10" runat="server" CssClass="input namefild"></asp:TextBox>
                                </div>
                                  <div class="form-row">
                                  <label class="lebel-abs">
                                    Số lượng
                                    <strong class="red">
                                      *
                                    </strong>
                                  </label>
                                    <asp:TextBox ID="TextBox1" runat="server" CssClass="input namefild"></asp:TextBox>
                                </div>
                              </div>
                              
                            </div>
                          </div>
                          <div class="col-md-6 col-sm-6">
                            <div class="your-details">
                              <h5>
                                Thông tin Mã loại hàng
                              </h5>
                              <div class="form-row">

                                  Mã Hàng: &nbsp<asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
                                  
                                  
                              </div>
                              <div class="form-row">
                                  chọn loại hàng:                                  
                                  <asp:DropDownList ID="DropDownList1" runat="server" DataValueField="MALOAI" DataTextField="TENLOAI" DataSourceID="SqlDataSource1"></asp:DropDownList>
                                  <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ThanhVienConnectionString6 %>" SelectCommand="SELECT * FROM [PHANLOAI]"></asp:SqlDataSource>
                              </div>
                             
                              
                              
                                <asp:Button ID="Button1" runat="server" Text="Them mặt hàng" OnClick="Button1_Click" CssClass="button"/>
                            </div>
                          </div>
                        </div>
                    </div>
                          </asp:View>
                          <asp:View ID="View2" runat="server">
                              <h1>Đã thêm mặt hàng</h1>
                              <br />
                              <p>
                                  <asp:Button ID="Button5" runat="server" Text="Trang chu" OnClick="Button5_Click" CssClass="button"/>
                              </p>
                          </asp:View>
                      </asp:MultiView>
                  </li>                 
                </ol>
              </div>
            </div>
    <div class="clearfix">
              </div>
</asp:Content>

