<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Main_Page.aspx.cs" Inherits="WebApplication2.Main_Page" EnableEventValidation="false" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link />
    <script src="Lib/Datalist_Paging.js"></script>
    <script type="text/javascript">
        $(document).ready(function () {
            $(".btnSua").click(function () {

                const imgURL = $(this).closest('td').find('div').find('div').find('div').find('img').attr('src');
                //                alert($(this).closest('td').find('div').find('h4').find('a').html());
                $("#imgAnh").attr('src', imgURL);
                const name = imgURL.substring(0, imgURL.lastIndexOf('.'));
                const type = imgURL.substring(imgURL.lastIndexOf('.'), imgURL.length);

                $("#img1").attr('src', name + "_1" + type);
                $("#img2").attr('src', name + "_2" + type);
                $("#img3").attr('src', name + "_3" + type);
                $("#img4").attr('src', name + type);

                $("#Label5").html($(this).closest('td').find('div').find('h6').find('a').html());
                $("#Label3").html($(this).closest('td').find('div').find('h4').find('span').html());
                $("#img1").click(function () {
                    $("#imgAnh").attr('src', $(this).attr('src'));
                });
                $("#img2").click(function () {
                    $("#imgAnh").attr('src', $(this).attr('src'));
                });
                $("#img3").click(function () {
                    $("#imgAnh").attr('src', $(this).attr('src'));
                });
                $("#img4").click(function () {
                    $("#imgAnh").attr('src', $(this).attr('src'));
                });


            });
        });
    </script>
    <link rel="stylesheet" href="css_local/Main_Page.css" />
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
    <%-- Side Banner --%>
    <div class="side-banner left-banner">
        <a href="SanPham.aspx?category=msi">
            <img src="img/banner_left.jpg" alt="Gaming PC Banner" class="banner-img">
        </a>
    </div>
    
    <div class="side-banner right-banner">
        <a href="KhuyenMai.aspx">
            <img src="img/banner_right.jpg" alt="Khuyến mãi mùa hè" class="banner-img">
        </a>
    </div>

    <div id="main_page_carousel" class="carousel slide my-3" data-ride="carousel">
        <div class="carousel-inner">
            <div class="carousel-item active">
                <img src="img/bao_sale_mua_he.png" alt="first slide" style="width:100%;">
            </div>
            <div class="carousel-item">
                <img src="img/thu_cu_doi_moi_beach.png" alt="second slide" style="width:100%;">
            </div>
            <div class="carousel-item">
                <img src="img/thu_cu_doi_moi_space.png" alt="third slide" style="width:100%;">
            </div>
        </div>
        <a class="carousel-control-prev" href="#main_page_carousel" role="button" data-slide="prev">
            <span class="carousel-control-prev-icon" aria-hidden="true"></span>
            <span class="sr-only">Previous</span>
        </a>
        <a class="carousel-control-next" href="#main_page_carousel" role="button" data-slide="next">
            <span class="carousel-control-next-icon " aria-hidden="true"></span>
            <span class="sr-only">Next</span>
        </a>
    </div>  
    
    <!--card-->
    <h5 class="text-center" style="color:#D53E3E; font-family: JetBrainsMono-Bold,sans-serif;">LAPTOP XỊN, LAPTOP CHÁY</h5>
    <h1 class="text-center" style="color:#D53E3E; font-family: JetBrainsMono-Bold,sans-serif;">CÁC LAPTOP MỚI RA LÒ NÓNG BỎNG, SẴN SÀNG ĐỢI BẠN</h1>
    

    <div class="container my-3 d-flex justify-content-center">
        <div class="row">
<!--card 1-->    
            <div class="card mx-4" style="border: 1px solid black; width:280px; height:460px; position: relative;">
                <a href="ChiTietSanPham.aspx?masp=SP02" style="text-decoration: none;">
                    <img class="card-img-top" src="img/macbook pro 14 m2.png" alt="Card image" style="width:100%; margin-top: 10px">
                </a>
                <div class="card-body text-left" style="padding-bottom: 60px;">
                    <a href="ChiTietSanPham.aspx?masp=SP02" style="text-decoration: none;">
                        <p style="color:black; font-size:1rem; 
                    display: -webkit-box;
                    -webkit-line-clamp: 2;
                    -webkit-box-orient: vertical;
                    overflow: hidden;
                    height: 50px;">MacBook Pro 14 M2 Pro 10CPU 16GPU 16GB 512GB Silver - MPHH3SA/A</p>
                    </a>
                    
                    <div class="specs-list my-2 text-muted" style="font-size: 0.85rem;">
                        <div class="d-flex justify-content-between">
                            <div><i class="fas fa-microchip me-1"></i> M2 10-CORE </div>
                            <div><i class="fas fa-memory me-1"></i> 16 GB</div>
                        </div>
                        <div class="d-flex justify-content-between">
                            <div><i class="fas fa-hdd me-1"></i> 512 GB</div>
                            <div><i class="fas fa-desktop me-1"></i> 14" Retina XDR </div>
                        </div>
                    </div>
                    <p style="color:#D53E3E;  font-size:1.5rem; position: absolute; bottom: 0">48.590.000₫</p>
                </div>
            </div> 
            
            <!--card 2-->
            <div class="card mx-4" style="border: 1px solid black; width:280px; height:460px; position: relative;">
                <a href="ChiTietSanPham.aspx?masp=SP02" style="text-decoration: none;">
                    <img class="card-img-top" src="img/thinkpad.png" alt="Card image" style="width:100%; margin-top: 10px">
                </a>
                <div class="card-body" style="padding-bottom: 60px;">
                    <a href="ChiTietSanPham.aspx?masp=SP03" style="text-decoration: none;">
                        <p style="color:black; font-size:1rem; 
                      display: -webkit-box;
                      -webkit-line-clamp: 2;
                      -webkit-box-orient: vertical;
                      overflow: hidden;
                      height: 50px;">Laptop Lenovo ThinkPad X1 2-in-1 Gen 9 21KE004MVN</p>
                    </a>
                    
                    <div class="specs-list my-2 text-muted" style="font-size: 0.85rem;">
                        <div class="d-flex justify-content-between">
                            <div><i class="fas fa-microchip me-1"></i> Ultra 7 155U</div>
                            <div><i class="fas fa-memory me-1"></i> 32 GB</div>
                        </div>
                        <div class="d-flex justify-content-between">
                            <div><i class="fas fa-hdd me-1"></i> 1 TB </div>
                            <div><i class="fas fa-desktop me-1"></i> 14" WUXGA Touch</div>
                        </div>
                    </div>
                    <p style="color:#D53E3E;  font-size:1.5rem; position: absolute; bottom: 0">58,990,000₫</p>
                </div>
            </div> 
            
            <!--card 3-->
            <div class="card mx-4" style="border: 1px solid black; width:280px; height:460px; position: relative;">
                <a href="ChiTietSanPham.aspx?masp=SP04" style="text-decoration: none;">
                    <img class="card-img-top" src="img/asus Vivobook.png" alt="Card image" style="width:100%; margin-top: 10px">
                </a>
                <div class="card-body" style="padding-bottom: 60px;">
                    <a href="ChiTietSanPham.aspx?masp=SP03" style="text-decoration: none;">
                        <p style="color:black;  font-size:1rem; 
                      display: -webkit-box;
                      -webkit-line-clamp: 2;
                      -webkit-box-orient: vertical;
                      overflow: hidden;
                      height: 50px;">Laptop ASUS Vivobook S 14 S5406SA PP059WS</p>
                    </a>
                    
                    <div class="specs-list my-2 text-muted" style="font-size: 0.85rem;">
                        <div class="d-flex justify-content-between">
                            <div><i class="fas fa-microchip me-1"></i> Ultra 7 258V </div>
                            <div><i class="fas fa-memory me-1"></i> 32 GB</div>
                        </div>
                        <div class="d-flex justify-content-between">
                            <div><i class="fas fa-hdd me-1"></i> 1 TB</div>
                            <div><i class="fas fa-desktop me-1"></i> 14" 3K OLED</div>
                        </div>
                    </div>
                    <p style="color:#D53E3E;  font-size:1.5rem; position: absolute; bottom: 0">34,490,000₫</p>
                </div>
            </div>            
            
            <!--card 4-->
            <div class="card mx-4" style="border: 1px solid black; width:280px; height:460px; position: relative;">
                <a href="ChiTietSanPham.aspx?masp=SP02" style="text-decoration: none;">
                    <img class="card-img-top" src="img/legion_pro_7.png" alt="Card image" style="width:100%; margin-top: 10px">
                </a>
                <div class="card-body" style="padding-bottom: 60px;">
                    <a href="ChiTietSanPham.aspx?masp=SP03" style="text-decoration: none;">
                        <p style="color:black;  font-size:1rem; 
                      display: -webkit-box;
                      -webkit-line-clamp: 2;
                      -webkit-box-orient: vertical;
                      overflow: hidden;
                      height: 50px;">Laptop gaming Lenovo Legion Pro 7 16IAX10H 83F5008WVN</p>
                    </a>
                    
                    <div class="specs-list my-2 text-muted" style="font-size: 0.85rem;">
                        <div class="d-flex justify-content-between">
                            <div><i class="fas fa-microchip me-1"></i> Ultra 9 275HX </div>
                            <div><i class="fas fa-memory me-1"></i> 32 GB</div>
                        </div>
                        <div class="d-flex justify-content-between">
                            <div><i class="fas fa-hdd me-1"></i> 1 TB</div>
                            <div><i class="fas fa-desktop me-1"></i> 16" WQXGA OLED</div>
                        </div>
                    </div>
                        <p style="color:#D53E3E;  font-size:1.5rem; position: absolute; bottom: 0">98,990,000₫</p>
                </div>
            </div> 
        </div>
</div>
    
    <!--5hinh 1word-->
    <div class="container">
        <div style="display:block">
            <img class="" src="img/Trasuavatra.jpg"  alt="Card image" style="width:33%; height:400px; display: inline-block;"/>
            <img class="" src="img/MatchaTra.jpg"  alt="Card image" style="width:67%; height:400px; float: right"/>
        </div>
        <div style="display:block">
            <div style="width:34%; float: right">
                <img src="img/Mua1tang1.jpg"  alt="Card image" style="width:100%"/>
                <a href="#" style="text-decoration: none; font-family: DejaVuSans, 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif"><h3>Đón Cận Hè Cùng Trà Sữa Dâu</h3></a>
            </div>
            <div style="width:33%; float: right">
                <img src="img/Kem.jpg"  alt="Card image" style="width:100%"/>
                <a href="#" style="text-decoration: none; font-family: DejaVuSans, 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif"><h3>Kem Lạnh Cho Hè Nóng Nực</h3></a>
            </div>  
            <div style="background-color:blanchedalmond; width:33%; height:400px;">
                <h1 style="color:red; margin-left:43px; padding-top:25px; font-family: DejaVuSans, 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif">Ưu Đãi</h1>
                <h3 style="margin-left:22px; font-family: Arial, Helvetica, sans-serif;">Khám phá ngay các chương trình ưu đãi cực hấp dẫn của Yummy trong tháng này!</h3>
                <hr style="border:1px solid black; width:50%; margin-left:22px" />
                <h4 style="margin-left:22px; margin-top:20px; font-family: Arial, Helvetica, sans-serif;">Chào mừng bạn đến với trà sữa Yummy, hãy cùng khám phá những khuyến mãi và ưu đãi của chúng tôi trong tháng này nhé.</h4>
            </div>               
        </div>
    </div>
    
   <!--hotsale-->
    <div class="col-xs-12 my-3 ">
        <div class="container">
            <h2 style="font-family:JetBrainsMono-Bold; color:#D53E3E">
                BEST SELLERS THÁNG NÀY🔥🔥🔥
            </h2>
        </div>
    </div>
    
    <div id="par" class="container my-3 ">
        <div class="row list">
            <div class="col-12">
                <div class="d-flex flex-wrap justify-content-center">
                    <asp:DataList ID="DataList1" runat="server" RepeatColumns="4" RepeatDirection="Horizontal" DataKeyField="MaSP" ClientIDMode="Static" 
                        onselectedindexchanged="DataList1_SelectedIndexChanged">
                        <ItemTemplate>
                            <div class="card" style="margin-right: 20px; margin-bottom: 20px;">
                                <div class="d_effect" style="width: 100%; height: 320px;">
                                    <div class="d_outside">
                                        <asp:HiddenField ID="HiddenField1" runat="server" Value='<%# Bind("MaSP") %>' />
                                        <asp:Image ID="Image1" class="card-img-top" runat="server" CssClass="" ImageUrl="<%# Bind('Hinh','img/{0}') %>" />
                                    </div>                            
                                </div>
                                <div class="card-body" style="width: 100%; height: 150px;">
                                    <h3>
                                        <asp:LinkButton ID="LinkButton1" PostBackUrl='<%# Eval("MaSP","ChiTietSanPham.aspx?masp={0}") %>'
                                            Text="<%# Bind('TenSP') %>" runat="server"></asp:LinkButton>
                                    </h3>
                                </div>
                                <div class="card-footer">
                                    <h4 class="card-text">
                                        <asp:Label ID="lblGia" runat="server" CssClass="text-success" Text="<%# Bind('GiaTien','{0:0,0 vnđ}') %>"></asp:Label></h4>
                                    <button class="btn btn-danger" style="border-radius: 0; height: 38px; margin-right: -5px;">
                                        <i class="fas fa-shopping-cart"></i>
                                    </button>
                                        <asp:Button ID="btnThem" CssClass="btn btn-outline-danger" Style="border-radius: 0;"
                                        runat="server" Text="Thêm vào giỏ hàng" OnClick="btnThem_Click"/>    
                                </div>
                            </div>
                        </ItemTemplate>
                    </asp:DataList>
                </div>
            </div>
        </div>
        <div class="text-center">
            <a href="SanPham.aspx" class="btn text-primary xemtatca">XEM TẤT CẢ</a>
        </div>
    </div>


</asp:Content>