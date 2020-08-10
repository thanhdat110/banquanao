<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Thongtin.aspx.cs" Inherits="Thongtin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    
    <div class="wrapper">     
      <div class="clearfix">
      </div>
      <div class="container_fullwidth">
        <div class="container">
          <div class="row">
              <asp:DataList ID="DataList1" runat="server" DataSourceID="SqlDataSource1" OnItemCommand="DataList1_ItemCommand">
                  <ItemTemplate> 
                              
                      <div class="col-md-9">
              <div class="products-details">
                <div class="preview_image">
                  <div class="preview-small" style="text-align:center;">

                   <asp:Image runat="server" ImageUrl='<%# Eval("ANH") %>'/>

                  </div>
                    <div class="thum-image">
                    <ul id="gallery_01" class="prev-thum">
                      <li>
                        <a href="#" data-image="images/products/medium/products-01.jpg" data-zoom-image="images/products/Large/products-01.jpg">
                          <img src="images/products/thum/products-01.png" alt="">
                        </a>
                      &nbsp;&nbsp;</li>
                      <li>
                        <a href="#" data-image="images/products/medium/products-02.jpg" data-zoom-image="images/products/Large/products-02.jpg">
                          <img src="images/products/thum/products-02.png" alt="">
                        </a>
                      &nbsp;&nbsp;</li>
                      <li>
                        <a href="#" data-image="images/products/medium/products-03.jpg" data-zoom-image="images/products/Large/products-03.jpg">
                          <img src="images/products/thum/products-03.png" alt="">
                        </a>
                      &nbsp;&nbsp;</li>
                      <li>
                        <a href="#" data-image="images/products/medium/products-04.jpg" data-zoom-image="images/products/Large/products-04.jpg">
                          <img src="images/products/thum/products-04.png" alt="">
                        </a>
                      &nbsp;&nbsp;;</li>
                      <li>
                        <a href="#" data-image="images/products/medium/products-05.jpg" data-zoom-image="images/products/Large/products-05.jpg">
                          <img src="images/products/thum/products-05.png" alt="">
                        </a>
                      &nbsp;&nbsp;</li>
                    </ul>
                    <a class="control-left" id="thum-prev" href="javascript:void(0);">
                      <i class="fa fa-chevron-left">
                      </i>
                    </a>
                    <a class="control-right" id="thum-next" href="javascript:void(0);">
                      <i class="fa fa-chevron-right">
                      </i>
                    </a>
                  </div>
                </div>
                <div class="products-description">
                  <h5 class="name">
                      <asp:Label ID="TENMHLabel" runat="server" Text='<%# Eval("TENMH") %>' />
                  </h5>
                  <p>
                    <img alt="" src="images/star.png" />
                    <a class="review_num" href="#">
                      02 Nhận xét
                    </a>
                  </p>
                  <p>
                      Mã :
                      <asp:Label ID="MAMHLabel" runat="server" Text='<%# Eval("MAMH") %>' />
                  </p>
                  <p>
                      <asp:Image ID="Image1" runat="server" ImageUrl="~/images/tichxanh.png" CssClass="tichxanh"/>Xuất xứ: <asp:Label ID="XUATXULabel" runat="server" Text='<%# Eval("XUATXU") %>' />
                    <br />
                    <asp:Image ID="Image2" runat="server" ImageUrl="~/images/tichxanh.png" CssClass="tichxanh"/>Chất liệu: <asp:Label ID="CHATLIEULabel" runat="server" Text='<%# Eval("CHATLIEU") %>' />
                    <br />
                    <asp:Image ID="Image3" runat="server" ImageUrl="~/images/tichxanh.png" CssClass="tichxanh"/>Kích thước: <asp:Label ID="SIZELabel" runat="server" Text='<%# Eval("SIZE") %>' />
                      &nbsp;</p>
                    
                  <hr class="border" />
                  <div class="price">
                    Giá : 
                    <span class="new_price">
                        <asp:Label ID="GIALabel" runat="server" Text='<%# Eval("GIA") %>' />
                      <sup>
                        VND
                      </sup>
                    </span>
                    <span class="old_price">
                        <asp:Label ID="GIACULabel" runat="server" Text='<%# Eval("GIACU") %>' />
                      <sup>
                        VND
                      </sup>
                    </span>
                  </div>
                  <hr class="border" />
                  <div class="wided">
                    <div class="qty">
                      <h5>Số lượng trong kho: &nbsp 
                      <asp:Label ID="Label1" runat="server" Text='<%# Eval("SOLUONG") %>' ForeColor="Red"/></h5>
                    </div>
                    <div class="button_group">
                      <button class="button add-cart" type="button"><asp:LinkButton ID="HyperLink1" runat="server" CommandName="dathang" CommandArgument='<%# Eval("MAMH") %>'>Đặt mua</asp:LinkButton></button>
                      
                    </div>
                  </div>
                  <div class="clearfix">
                  </div>
                  <hr class="border" />
                  <img src="images/share.png" alt="" class="pull-right" />
                </div>
              </div>
              <div class="clearfix">
              </div>
              <div class="tab-box">
                <div id="tabnav">
                  <ul>
                    <li>
                      <a href="#Descraption">
                        MÔ TẢ
                      </a>
                    </li>
                    <li>
                      <a href="#Reviews">
                        ĐÁNH GIÁ
                      </a>
                    </li>
                    <li>
                      <a href="#tags">
                        PHÂN LOẠI
                      </a>
                    </li>
                  </ul>
                </div>
                <div class="tab-content-wrap">
                  <div class="tab-content" id="Descraption">
                    <p>
                        <asp:Label ID="THONGTINLabel" runat="server" Text='<%# Eval("THONGTIN") %>' />
                      </p>
                  
                  </div>
                  <div class="tab-content" id="Reviews">
                    
                      <table>
                        <thead>
                          <tr>
                            <th>
                              &nbsp;
                            </th>
                            <th>
                              1 star
                            </th>
                            <th>
                              2 stars
                            </th>
                            <th>
                              3 stars
                            </th>
                            <th>
                              4 stars
                            </th>
                            <th>
                              5 stars
                            </th>
                          </tr>
                        </thead>
                        <tbody>
                          <tr>
                            <td>
                              Mẫu mã
                            </td>
                            <td>
                              <input type="radio" name="quality" value="Blue"/>
                            </td>
                            <td>
                              <input type="radio" name="quality" value="" />
                            </td>
                            <td>
                              <input type="radio" name="quality" value="" />
                            </td>
                            <td>
                              <input type="radio" name="quality" value="" />
                            </td>
                            <td>
                              <input type="radio" name="quality" value="" />
                            </td>
                          </tr>
                          <tr>
                            <td>
                              Giá cả
                            </td>
                            <td>
                              <input type="radio" name="price" value="" />
                            </td>
                            <td>
                              <input type="radio" name="price" value="" />
                            </td>
                            <td>
                              <input type="radio" name="price" value="" />
                            </td>
                            <td>
                              <input type="radio" name="price" value="" />
                            </td>
                            <td>
                              <input type="radio" name="price" value="" />
                            </td>
                          </tr>
                          <tr>
                            <td>
                              Chất lượng
                            </td>
                            <td>
                              <input type="radio" name="value" value="" />
                            </td>
                            <td>
                              <input type="radio" name="value" value="" />
                            </td>
                            <td>
                              <input type="radio" name="value" value="" />
                            </td>
                            <td>
                              <input type="radio" name="value" value="" />
                            </td>
                            <td>
                              <input type="radio" name="value" value="" />
                            </td>
                          </tr>
                        </tbody>
                      </table>
                      
                    
                  </div>
                  
                  <div class="tab-content" id="tags">
                    <div class="tag">
                      Loại : 
                      <input type="text" name="" />
                      <input type="submit" value="Tag" />
                    </div>
                  </div>
                </div>
              </div>

              <div class="clearfix">
              </div>
              <div id="productsDetails" class="hot-products">
                <h3 class="title">
                  <strong>
                    Sản phẩm
                  </strong>
                  tương tự
                </h3>
                <div class="control">
                  <a id="prev_hot" class="prev" href="#">
                    &lt;
                  </a>
                  <a id="next_hot" class="next" href="#">
                    &gt;
                  </a>
                </div>
                <ul id="hot">
                  <li>
                    <div class="row">
                      <div class="col-md-4 col-sm-4">
                        <div class="products">
                          <div class="offer">
                            - %20
                          </div>
                          <div class="thumbnail">
                            <img src="images/products/small/products-01.png" alt="Product Name" />
                          </div>
                          <div class="productname">
                            Váy
                          </div>
                          <h4 class="price">
                            $451.00
                          </h4>
                          <div class="button_group">
                            <button class="button add-cart" type="button">
                              Đặt hàng
                            </button>
                            <button class="button compare" type="button">
                              <i class="fa fa-exchange">
                              </i>
                            </button>
                            <button class="button wishlist" type="button">
                              <i class="fa fa-heart-o">
                              </i>
                            </button>
                          </div>
                        </div>
                      </div>
                      <div class="col-md-4 col-sm-4">
                        <div class="products">
                          <div class="thumbnail">
                            <img src="images/products/small/products-02.png" alt="Product Name" />
                          </div>
                          <div class="productname">
                            Váy
                          </div>
                          <h4 class="price">
                            $451.00
                          </h4>
                          <div class="button_group">
                            <button class="button add-cart" type="button">
                              Đặt hàng
                            </button>
                            <button class="button compare" type="button">
                              <i class="fa fa-exchange">
                              </i>
                            </button>
                            <button class="button wishlist" type="button">
                              <i class="fa fa-heart-o">
                              </i>
                            </button>
                          </div>
                        </div>
                      </div>
                      <div class="col-md-4 col-sm-4">
                        <div class="products">
                          <div class="offer">
                            New
                          </div>
                          <div class="thumbnail">
                            <img src="images/products/small/products-03.png" alt="Product Name" />
                          </div>
                          <div class="productname">
                            Váy
                          </div>
                          <h4 class="price">
                            $451.00
                          </h4>
                          <div class="button_group">
                            <button class="button add-cart" type="button">
                              Đặt hàng
                            </button>
                            <button class="button compare" type="button">
                              <i class="fa fa-exchange">
                              </i>
                            </button>
                            <button class="button wishlist" type="button">
                              <i class="fa fa-heart-o">
                              </i>
                            </button>
                          </div>
                        </div>
                      </div>
                    </div>
                  </li>
                  <li>
                    <div class="row">
                      <div class="col-md-4 col-sm-4">
                        <div class="products">
                          <div class="offer">
                            - %20
                          </div>
                          <div class="thumbnail">
                            <img src="images/products/small/products-01.png" alt="Product Name" />
                          </div>
                          <div class="productname">
                            Váy
                          </div>
                          <h4 class="price">
                            $451.00
                          </h4>
                          <div class="button_group">
                            <button class="button add-cart" type="button">
                              Đặt hàng
                            </button>
                            <button class="button compare" type="button">
                              <i class="fa fa-exchange">
                              </i>
                            </button>
                            <button class="button wishlist" type="button">
                              <i class="fa fa-heart-o">
                              </i>
                            </button>
                          </div>
                        </div>
                      </div>
                      <div class="col-md-4 col-sm-4">
                        <div class="products">
                          <div class="thumbnail">
                            <img src="images/products/small/products-02.png" alt="Product Name" />
                          </div>
                          <div class="productname">
                            Váy
                          </div>
                          <h4 class="price">
                            $451.00
                          </h4>
                          <div class="button_group">
                            <button class="button add-cart" type="button">
                              Đặt hàng
                            </button>
                            <button class="button compare" type="button">
                              <i class="fa fa-exchange">
                              </i>
                            </button>
                            <button class="button wishlist" type="button">
                              <i class="fa fa-heart-o">
                              </i>
                            </button>
                          </div>
                        </div>
                      </div>
                      <div class="col-md-4 col-sm-4">
                        <div class="products">
                          <div class="offer">
                            New
                          </div>
                          <div class="thumbnail">
                            <img src="images/products/small/products-03.png" alt="Product Name" />
                          </div>
                          <div class="productname">
                            Váy
                          </div>
                          <h4 class="price">
                            $451.00
                          </h4>
                          <div class="button_group">
                            <button class="button add-cart" type="button">
                              Đặt hàng
                            </button>
                            <button class="button compare" type="button">
                              <i class="fa fa-exchange">
                              </i>
                            </button>
                            <button class="button wishlist" type="button">
                              <i class="fa fa-heart-o">
                              </i>
                            </button>
                          </div>
                        </div>
                      </div>
                    </div>
                  </li>
                  <li>
                    <div class="row">
                      <div class="col-md-4 col-sm-4">
                        <div class="products">
                          <div class="offer">
                            - %20
                          </div>
                          <div class="thumbnail">
                            <img src="images/products/small/products-01.png" alt="Product Name" />
                          </div>
                          <div class="productname">
                            Iphone 5s Gold 32 Gb 2013
                          </div>
                          <h4 class="price">
                            $451.00
                          </h4>
                          <div class="button_group">
                            <button class="button add-cart" type="button">
                              Add To Cart
                            </button>
                            <button class="button compare" type="button">
                              <i class="fa fa-exchange">
                              </i>
                            </button>
                            <button class="button wishlist" type="button">
                              <i class="fa fa-heart-o">
                              </i>
                            </button>
                          </div>
                        </div>
                      </div>
                      <div class="col-md-4 col-sm-4">
                        <div class="products">
                          <div class="thumbnail">
                            <img src="images/products/small/products-02.png" alt="Product Name" />
                          </div>
                          <div class="productname">
                            Iphone 5s Gold 32 Gb 2013
                          </div>
                          <h4 class="price">
                            $451.00
                          </h4>
                          <div class="button_group">
                            <button class="button add-cart" type="button">
                              Add To Cart
                            </button>
                            <button class="button compare" type="button">
                              <i class="fa fa-exchange">
                              </i>
                            </button>
                            <button class="button wishlist" type="button">
                              <i class="fa fa-heart-o">
                              </i>
                            </button>
                          </div>
                        </div>
                      </div>
                      <div class="col-md-4 col-sm-4">
                        <div class="products">
                          <div class="offer">
                            New
                          </div>
                          <div class="thumbnail">
                            <img src="images/products/small/products-03.png" alt="Product Name" />
                          </div>
                          <div class="productname">
                            Iphone 5s Gold 32 Gb 2013
                          </div>
                          <h4 class="price">
                            $451.00
                          </h4>
                          <div class="button_group">
                            <button class="button add-cart" type="button">
                              Add To Cart
                            </button>
                            <button class="button compare" type="button">
                              <i class="fa fa-exchange">
                              </i>
                            </button>
                            <button class="button wishlist" type="button">
                              <i class="fa fa-heart-o">
                              </i>
                            </button>
                          </div>
                        </div>
                      </div>
                    </div>
                  </li>
                </ul>
              </div>
              <div class="clearfix">
              </div>
            </div>
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
          </div>
                  </ItemTemplate>
              </asp:DataList>
              <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ThanhVienConnectionString2 %>" ></asp:SqlDataSource>
              <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ThanhVienConnectionString2 %>" ></asp:SqlDataSource>
            
          <div class="clearfix">
          </div>
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
        </div>
      <div class="clearfix">
      </div>     
   
</asp:Content>

