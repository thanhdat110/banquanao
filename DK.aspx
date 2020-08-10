<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="DK.aspx.cs" Inherits="DK" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="wrapper">     
      <div class="clearfix">
      </div>
      <div class="container_fullwidth">
        <div class="container">
          <div class="row">
            <div class="col-md-3">
              <div class="special-deal leftbar">
                <h4 class="title">
                  Siêu 
                  <strong>
                    Giảm Giá
                  </strong>
                </h4>
                <div class="special-item">
                  <div class="product-image">
                    <a href="#">
                      <img src="images/products/thum/products-01.png" alt="" />
                    </a>
                  </div>
                  <div class="product-info">
                    <p>
                      Váy
                    </p>
                    <h5 class="price">
                      30.000VND
                    </h5>
                  </div>
                </div>
                <div class="special-item">
                  <div class="product-image">
                    <a href="#">
                      <img src="images/products/thum/products-02.png" alt="" />
                    </a>
                  </div>
                  <div class="product-info">
                    <p>
                      Váy
                    </p>
                    <h5 class="price">
                      30.000VND
                    </h5>
                  </div>
                </div>
                <div class="special-item">
                  <div class="product-image">
                    <a href="#">
                      <img src="images/products/thum/products-03.png" alt="" />
                    </a>
                  </div>
                  <div class="product-info">
                    <p>
                      Váy
                    </p>
                    <h5 class="price">
                        30.000VND
                    </h5>
                  </div>
                </div>
              </div>
              <div class="clearfix">
              </div>
              <div class="product-tag leftbar">
                <h3 class="title">
                  Phân 
                  <strong>
                    loại
                  </strong>
                </h3>
                <ul>
                  <li>
                    <a href="#">
                      Trang phục nam
                    </a>
                  </li>
                  <li>
                    <a href="#">
                      Trang phục nữ
                    </a>
                  </li>
                  <li>
                    <a href="#">
                      váy
                    </a>
                  </li>
                  <li>
                    <a href="#">
                      đầm
                    </a>
                  </li>
                  <li>
                    <a href="#">
                      áo
                    </a>
                  </li>
                  <li>
                    <a href="#">
                      quần
                    </a>
                  </li>
                  <li>
                    <a href="#">
                      hot
                    </a>
                  </li>
                  <li>
                    <a href="#">
                      new
                    </a>
                  </li>
                </ul>
              </div>
              <div class="clearfix">
              </div>
              <div class="clearfix">
              </div>
              <div class="fbl-box leftbar">
                <h3 class="title">
                  Facebook
                </h3>
                <span class="likebutton">
                  <a href="#">
                    <img src="images/fblike.png" alt="" />
                  </a>
                </span>
                <p>
                  12k người like Shop.
                </p>
                <ul>
                  <li>
                    <a href="#">
                    </a>
                  </li>
                  <li>
                    <a href="#">
                    </a>
                  </li>
                  <li>
                    <a href="#">
                    </a>
                  </li>
                  <li>
                    <a href="#">
                    </a>
                  </li>
                  <li>
                    <a href="#">
                    </a>
                  </li>
                  <li>
                    <a href="#">
                    </a>
                  </li>
                  <li>
                    <a href="#">
                    </a>
                  </li>
                  <li>
                    <a href="#">
                    </a>
                  </li>
                </ul>
                <div class="fbplug">
                  <a href="#">
                    <span>
                      <img src="images/fbicon.png" alt="" />
                    </span>
                    Facebook
                  </a>
                </div>
              </div>
              <div class="clearfix">
              </div>
            </div>
            <div class="col-md-9">
              <div class="checkout-page">
                <ol class="checkout-steps">                  
                  <li class="steps active">
                    <a href="checkout.html" class="step-title">
                      Nhập thông tin đăng ký
                    </a>
                      <asp:MultiView ID="MultiView1" runat="server">
                          <asp:View ID="View1" runat="server">
                              <div class="step-description">
                      
                        <div class="row">
                          <div class="col-md-6 col-sm-6">
                            <div class="your-details">
                              <h5>
                                Thông tin cơ bản
                              </h5>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="(X)*Tên không được để trống" CssClass="red" ControlToValidate="TextBox1"></asp:RequiredFieldValidator>
                              <div class="form-row">
                                  <label class="lebel-abs">
                                  First Name 
                                  <strong class="red">
                                    *
                                  </strong>
                                </label>
                                  <asp:TextBox ID="TextBox1" runat="server" CssClass="input namefild"></asp:TextBox>
                              </div>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="(X)*Tên đệm không được để trống" CssClass="red" ControlToValidate="TextBox2"></asp:RequiredFieldValidator>
                              <div class="form-row">
                                <label class="lebel-abs">
                                  Last Name 
                                  <strong class="red">
                                    *
                                  </strong>
                                </label>
                                  <asp:TextBox ID="TextBox2" runat="server"  CssClass="input namefild"></asp:TextBox>
                              </div>
                             <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="(X)*Không đúng định dạng gmail" ControlToValidate="TextBox3" ValidationExpression="^([\w-\.]+)@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.)|(([\w-]+\.)+))([a-zA-Z]{2,4}|[0-9]{1,3})(\]?)$" CssClass="red"></asp:RegularExpressionValidator>   
                              <div class="form-row">
                                <label class="lebel-abs">
                                  Email 
                                  <strong class="red">
                                    *
                                  </strong>
                                </label>
                                <asp:TextBox ID="TextBox3" runat="server"  CssClass="input namefild"></asp:TextBox>
                              </div>
                                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ErrorMessage="(X)*Phải có từ 10-11 chữ số" ControlToValidate="TextBox4" CssClass="Red" ValidationExpression="^\d{10,11}$"></asp:RegularExpressionValidator>
                              <div class="form-row">
                                <label class="lebel-abs">
                                  Telephone 
                                  <strong class="red">
                                    *
                                  </strong>
                                </label>
                                <asp:TextBox ID="TextBox4" runat="server" CssClass="input namefild"></asp:TextBox>
                              </div>
                              <div class="form-row">
                                <label class="lebel-abs">
                                  Identity card
                                  <strong class="red">
                                    *
                                  </strong>
                                </label>
                                <asp:TextBox ID="TextBox5" runat="server" CssClass="input namefild"></asp:TextBox>
                              </div>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="(X)*Tên đăng nhập không được để trống" ControlToValidate="TextBox6" CssClass="red"></asp:RequiredFieldValidator>
                              <div class="form-row">
                                <label class="lebel-abs">
                                  User Name
                                  <strong class="red">
                                    *
                                  </strong>
                                </label>
                                <asp:TextBox ID="TextBox6" runat="server"  CssClass="input namefild"></asp:TextBox>
                              </div>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Mật khẩu không được để trống" CssClass="red" ControlToValidate="TextBox7"></asp:RequiredFieldValidator>
                              <div class="pass-wrap">
                                <div class="form-row">
                                  <label class="lebel-abs">
                                    Your Password 
                                    <strong class="red">
                                      *
                                    </strong>
                                  </label>
                                  <asp:TextBox ID="TextBox7" runat="server"  CssClass="input namefild" TextMode="Password"></asp:TextBox>
                                </div>
                                  <asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="Mật khẩu Không giống nhau!!!" ControlToValidate="TextBox13" ControlToCompare="TextBox7"></asp:CompareValidator>
                                <div class="form-row">
                                  <label class="lebel-abs">
                                    Confird Password 
                                    <strong class="red">
                                      *
                                    </strong>
                                  </label>
                                    <asp:TextBox ID="TextBox13" runat="server" CssClass="input namefild"  TextMode="Password"></asp:TextBox>
                                </div>
                              </div>
                              <p>
                                <span class="input-radio">
                                    <asp:RadioButton ID="RadioButton1" runat="server" />
                                </span>
                                <span class="text">
                                  Tôi đồng ý cho kiểm tra thông tin
                                </span>
                              </p>
                              <p>
                                <span class="input-radio">
                                    <asp:RadioButton ID="RadioButton2" runat="server" />
                                </span>
                                <span class="text">
                                  không bao giờ boom hàng
                                </span>
                              </p>
                            </div>
                          </div>
                          <div class="col-md-6 col-sm-6">
                            <div class="your-details">
                              <h5>
                                Thông tin cá nhân
                              </h5>
                              <div class="form-row">
                                <label class="lebel-abs">
                                  Address 01 
                                  <strong class="red">
                                    *
                                  </strong>
                                </label>
                                  <asp:TextBox ID="TextBox8" runat="server"  CssClass="input namefild"></asp:TextBox>
                              </div>
                                <asp:CompareValidator ID="CompareValidator2" runat="server" ErrorMessage="Tuổi phải lớn hơn 10" ValueToCompare="10" ControlToValidate="TextBox9" Type="Integer" Operator="GreaterThanEqual"></asp:CompareValidator>
                              <div class="form-row">
                                <label class="lebel-abs">
                                  Age
                                  <strong class="red">
                                    *
                                  </strong>
                                </label>
                                  <asp:TextBox ID="TextBox9" runat="server"  CssClass="input namefild"></asp:TextBox>
                              </div>
                              <div class="form-row">
                                <label class="lebel-abs">
                                  City 
                                  <strong class="red">
                                    *
                                  </strong>
                                </label>
                                  <asp:TextBox ID="TextBox14" runat="server" CssClass="input namefild"></asp:TextBox>
                              </div>
                              
                              <p class="privacy">
                                <span class="input-radio">
                                    <asp:RadioButton ID="RadioButton3" runat="server" />
                                </span>
                                <span class="text">
                                  Tôi đồng ý với mọi 
                                  <a href="#" class="red">
                                    Quy định
                                  </a>
                                </span>
                              </p>
                                <asp:Button ID="Button1" runat="server" Text="Đăng ký" OnClick="Button1_Click" CssClass="button"/>
                                <asp:ValidationSummary ID="ValidationSummary1" runat="server" CssClass="red"/>
                            </div>
                          </div>
                        </div>
                    </div>
                          </asp:View>
                          <asp:View ID="View2" runat="server">
                              <h1>Đăng ký thành công </h1>
                              <br />
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
          </div>
      </div>
     </div>
        </div>
</asp:Content>

