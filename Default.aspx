<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="GioHang" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
              
      <div class="clearfix"></div>
    <div class="wrapper" >     
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
              <div class="checkout-page" >
                <div class="classgrind">
                    <ol class="checkout-steps" >                 
                  <li class="steps active" style="width:800px;margin-top:-48px">
                    <div class="step-description">
                        <div class="row">
                            <div class="your-details">
      <h3 class="title"><strong>Giỏ</strong> hàng</h3>
                                <asp:MultiView ID="MultiView1" runat="server">
                                    <asp:View ID="View1" runat="server">
                                        <h3 class="title">
                                                Shopping Cart
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
                                                          <asp:Label ID="TENMHLabel" runat="server" Text='<%# Eval("TENMH") %>' />
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
                                                          Product Code : 
                                                          <strong class="pcode">
                                                            <asp:Label ID="MAMHLabel" runat="server" Text='<%# Eval("MAMH") %>' />
                                                          </strong>
                                                        </p>
                                                      </div>
                                                    </td>
                                                    <td style="text-align:center">
                                                        Giá
                                                      <h5>
                                                          
                                                          <br />
                                                        <asp:Label ID="GIALabel" runat="server" Text='<%# Eval("GIA") %>' />
                                                      </h5>
                                                    </td>
                                                    <td style="text-align:center">
                                                        Số lượng
                                                        <br />
                                                  <asp:TextBox runat="server" ID="Soluong" Text='<%# Eval("SOLUONG") %>'></asp:TextBox> 

                                                    </td>
                                                    <td>
                                                        Thành tiền
                                                      <h5>
                                                          
                                                        <strong class="red">
                                                          <asp:Label ID="Label1" runat="server" Text='<%# Eval("TONGTIEN") %>' />
                                                        </strong>
                                                      </h5>
                                                    </td>
                                                    <td>
                                                      <asp:LinkButton runat="server" CommandArgument='<%# Eval("MAMH") %>' CommandName="delete">
                                                        <img src="images/remove.png" alt="" />
                                                      </asp:LinkButton>

                                                    </td>
                                                      <td>
                                                          <button class=" pull-right"><asp:LinkButton  runat="server"  CommandName="update" CommandArgument='<%# Eval("MAMH") %>'>
                                                        Update
                                                      </asp:LinkButton></button> 
                                                      </td>
                                                  </tr>                                                                                                  
                                                </tbody>
                                               </table>
                                                <div class="clearfix"></div>
                                            </ItemTemplate>
                                        </asp:DataList>
                                        <div class="dong" style="width:700px">
                                        <div class=" pull-left">
                                            <h3>Có <asp:Label ID="Label2" runat="server" Text="Label" CssClass="TongTien"></asp:Label> mặt hàng</h3>
                                        </div>
                                        <div class=" pull-right">
                                            <h3>Tổng tiền : <asp:Label ID="Label3" runat="server" Text="Label" CssClass="TongTien"></asp:Label><span class="TongTien"> VNĐ</span></h3>
                                        </div>
                                            </div>
                                        <br />
                                         <div class="dong" style="width:700px">
                                             
                                                      <button class=" pull-left"><asp:LinkButton runat="server" ID="back"  PostBackUrl="~/Home.aspx">
                                                        Tiếp tục mua hàng
                                                      </asp:LinkButton></button>
                                                      <button class=" pull-right" style="float:right"><asp:LinkButton  runat="server" ID="mua" OnClick="mua_Click">
                                                        Thanh Toán
                                                      </asp:LinkButton></button> 
                                                        
                                                    
                                                </div>
                                              
                                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ThanhVienConnectionString3 %>" SelectCommand="SELECT * FROM [GIOHANG]"></asp:SqlDataSource>
                                    </asp:View>
                                    <asp:View ID="View2" runat="server">
                                        <h2> Đã Thanh Toán</h2>
                                        <br />
                                         <asp:Button ID="Button2" runat="server" Text="Trở về Trang chủ" CssClass="button" OnClick="Button2_Click"/>
                                    </asp:View>
                                </asp:MultiView>
      
                               
            </div>
            </div>
            </div>
                      </li></ol></div></div>
          </div>
      </div>
     
    <div class="clearfix"></div>
        <div class="our-brand">
                  <h3 class="title" >Nhà<strong> Tài trợ</strong></h3>
                  <div class="control"><a id="prev_brand" class="prev" href="#">&lt;</a><a id="next_brand" class="next" href="#">&gt;</a></div>
                  <ul id="braldLogo">
                     <li>
                        <ul class="brand_item">
                           <li>
                              <a href="#">
                                 <div class="brand-logo"><img src="images/envato.png" alt="" /></div>
                              </a>
                           </li>
                           <li>
                              <a href="#">
                                 <div class="brand-logo"><img src="images/themeforest.png" alt="" /></div>
                              </a>
                           </li>
                           <li>
                              <a href="#">
                                 <div class="brand-logo"><img src="images/photodune.png" alt="" /></div>
                              </a>
                           </li>
                           <li>
                              <a href="#">
                                 <div class="brand-logo"><img src="images/activeden.png" alt="" /></div>
                              </a>
                           </li>
                           <li>
                              <a href="#">
                                 <div class="brand-logo"><img src="images/envato.png" alt="" /></div>
                              </a>
                           </li>
                        </ul>
                     </li>
                     <li>
                        <ul class="brand_item">
                           <li>
                              <a href="#">
                                 <div class="brand-logo"><img src="images/envato.png" alt="" /></div>
                              </a>
                           </li>
                           <li>
                              <a href="#">
                                 <div class="brand-logo"><img src="images/themeforest.png" alt="" /></div>
                              </a>
                           </li>
                           <li>
                              <a href="#">
                                 <div class="brand-logo"><img src="images/photodune.png" alt="" /></div>
                              </a>
                           </li>
                           <li>
                              <a href="#">
                                 <div class="brand-logo"><img src="images/activeden.png" alt="" /></div>
                              </a>
                           </li>
                           <li>
                              <a href="#">
                                 <div class="brand-logo"><img src="images/envato.png" alt="" /></div>
                              </a>
                           </li>
                        </ul>
                     </li>
                  </ul>
               </div>
        </div>
          </div>
        </div>
          <div class="clearfix"></div>
</asp:Content>

