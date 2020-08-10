<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Home.aspx.cs" Inherits="Home" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="clearfix"></div>
    <div class="hom-slider" style="background:url('images/hkbanner.jpg');background-repeat:no-repeat;background-size:100% 100%;">
            <div class="container">
               <div id="sequence">
                  <div class="sequence-prev"><i class="fa fa-angle-left"></i></div>
                  <div class="sequence-next"><i class="fa fa-angle-right"></i></div>
                  <ul class="sequence-canvas">
                     <li class="animate-in">
                        <div class="flat-caption caption1 formLeft delay300 text-center"><span class="suphead">Trang phục đi chơi</span></div>
                        <div class="flat-caption caption2 formLeft delay400 text-center">
                           <h1>Thoáng mát lịch sự</h1>
                        </div>
                        <div class="flat-caption caption3 formLeft delay500 text-center">
                           <p>Hãy cùng người thân bạn bè người yêu đi đến các nơi bạn thích.<br />Chụp những bức ảnh với những bộ trang phục đẹp</p>
                        </div>
                        <div class="flat-button caption4 formLeft delay600 text-center"><a class="more" href="#">Xem ngay</a></div>
                        <div class="flat-image formBottom delay200" data-duration="5" data-bottom="true"><img src="images/slider-image-01.png" alt="" /></div>
                     </li>
                     <li>
                        <div class="flat-caption caption2 formLeft delay400">
                           <h1>Trang phục giáng sinh</h1>
                        </div>
                        <div class="flat-caption caption3 formLeft delay500">
                           <h2>Cùng tham gia chương trình và có ngay những trang phục gián sinh tuyệt đẹp nhé<br /><span style="color:red">Giảm giá 50% các bộ trang phục noel.</span></h2>
                        </div>
                        <div class="flat-button caption5 formLeft delay600"><a class="more" href="#">Xem ngay</a></div>
                        <div class="flat-image formBottom delay200" data-bottom="true"><img src="images/slider-image-02.png" alt="" /></div>
                     </li>
                     <li>
                        <div class="flat-caption caption2 formLeft delay400 text-center">
                           <h1>Trang phục mùa đông</h1>
                        </div>
                        <div class="flat-caption caption3 formLeft delay500 text-center">
                           <p>Đặc biệt ưu đãi cho các bạn còn đang đọc thân. <br /><span style="color:red">Giảm shock 90%</span></p>
                        </div>
                        <div class="flat-button caption4 formLeft delay600 text-center"><a class="more" href="#">Xem ngay</a></div>
                        <div class="flat-image formBottom delay200" data-bottom="true"><img src="images/slider-image-03.png" alt="" /></div>
                     </li>
                  </ul>
               </div>
            </div>
    </div><div class="clearfix"></div>
    
    
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
                           <div class="col-md-3 col-sm-6" style="width:100%">
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
                   <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ThanhVienConnectionString %>" ></asp:SqlDataSource>
               </div>
               <div class="clearfix"></div>
                
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
                                     <asp:LinkButton ID="LinkButton1" runat="server" CommandArgument='<%# Eval("MAMH") %>'  CommandName="chitiet"><asp:Image ID="ANHLabel" runat="server" ImageUrl='<%# Eval("ANH") %>' Height="220" Width="800"/></asp:LinkButton></div>
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
                                     <asp:LinkButton ID="LinkButton1" runat="server" CommandArgument='<%# Eval("MAMH") %>'  CommandName="chitiet"><asp:Image ID="ANHLabel" runat="server" ImageUrl='<%# Eval("ANH") %>'  Height="220" Width="800"/></asp:LinkButton></div>
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
                <div class="clearfix"></div> 
               <div class="our-brand">
                  <h3 class="title" >Nhà<strong> Tài trợ</strong></h3>
                  
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
                   <div class="control"><a id="prev_brand" class="prev" href="#">&lt;</a><a id="next_brand" class="next" href="#">&gt;</a></div>
               </div>
               
            </div>
         </div>
         <div class="clearfix"></div>
      
</asp:Content>

