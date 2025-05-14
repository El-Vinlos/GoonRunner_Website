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
                    
                    <div class="specs-list my-2 text-muted" style="font-size: 0.7rem;">
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
                    
                    <div class="specs-list my-2 text-muted" style="font-size: 0.7rem;">
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
                    
                    <div class="specs-list my-2 text-muted" style="font-size: 0.7rem;">
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
                    
                    <div class="specs-list my-2 text-muted" style="font-size: 0.7rem;">
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
    
    <!-- AMD Game/Bundle Section -->
    <div class="container mt-4 mb-4">
        <div class="row">
            <div class="col-12">
                <div class="d-flex justify-content-between align-items-center mb-3">
                    <h2 class="fw-bold" style="color: #002060;">AMD COMBO SIÊU ĐÃ</h2>
                    <a href="#" class="text-decoration-none" style="color: #D53E3E;">See More <i class="fas fa-angle-right"></i></a>
                </div>
            </div>
        </div>
    
        <div class="row">
            <!-- Product 1 -->
            <div class="col-md-4 mb-3">
                <div class="card h-100">
                    <div class="position-relative">
                        <span class="badge bg-success position-absolute" style="top: 10px; left: 10px;">Bao SSD</span>
                        <img src="HinhSP/amd-ryzen5-5600x.jpg" class="card-img-top p-4" alt="AMD Ryzen 5 5600X">
                    </div>
                    <div class="card-body">
                        <h5 class="card-title">AMD Ryzen 5 5600X - Ryzen 5 9000 Series</h5>
                        <p class="text-danger">Giảm 2 triệu đồng khi mua kèm màn hình LG</p>
                        <div class="d-flex justify-content-between align-items-center">
                            <div>
                                <span class="badge bg-danger">Giảm 21%</span>
                            </div>
                            <div class="d-flex flex-column align-items-end">
                                <span class="text-decoration-line-through text-muted">$279.00</span>
                                <span class="fw-bold fs-4">$219<sup>.99</sup></span>
                            </div>
                        </div>
                    </div>
                    <div class="card-footer bg-white border-top-0">
                        <asp:Button runat="server" ID="btnAddToCart1" CssClass="btn btn-danger w-100" Text="Add to Cart" />
                    </div>
                </div>
            </div>
        
            <%-- SP 2 --%>
            <div class="col-md-4 mb-3">
                <div class="card h-100">
                    <div class="position-relative">
                        <span class="badge bg-success position-absolute" style="top: 10px; left: 10px;"></span>
                        <img src="HinhSP/amd-radeon-rx-7900xt.jpg" class="card-img-top p-4" alt="AMD Radeon RX 7900 XT">
                    </div>
                    <div class="card-body">
                        <h5 class="card-title">SAPPHIRE Radeon RX 7900 XT</h5>
                        <p class="text-danger">Nhận Monster Hunter Wilds khi mua, Ưu đãi có hạn</p>
                        <div class="d-flex justify-content-between align-items-center">
                            <div>
                                <span class="badge bg-danger">Giảm 38%</span>
                            </div>
                            <div class="d-flex flex-column align-items-end">
                                <span class="text-decoration-line-through text-muted">$548.99</span>
                                <span class="fw-bold fs-4">$335<sup>.26</sup></span>
                            </div>
                        </div>
                    </div>
                    <div class="card-footer bg-white border-top-0">
                        <asp:Button runat="server" ID="btnAddToCart2" CssClass="btn btn-danger w-100" Text="Add to Cart" />
                    </div>
                </div>
            </div>
        
            <!-- Product 3 -->
            <div class="col-md-4 mb-3">
                <div class="card h-100">
                    <div class="position-relative">
                        <span class="badge bg-success position-absolute" style="top: 10px; left: 10px;">BAO SSD</span>
                        <img src="HinhSP/amd-ryzen9-7900x.jpg" class="card-img-top p-4" alt="AMD Ryzen 9 7900X">
                    </div>
                    <div class="card-body">
                        <h5 class="card-title">AMD Ryzen 9 7900X - Zen 4 12-Core 4.7 GHz - Socket AM5</h5>
                        <p class="text-danger">Giảm 2 triệu đồng khi mua kèm màn hình LG</p>
                        <div class="d-flex justify-content-between align-items-center">
                            <div>
                                <span class="badge bg-danger">Giảm 38%</span>
                            </div>
                            <div class="d-flex flex-column align-items-end">
                                <span class="text-decoration-line-through text-muted">$548.99</span>
                                <span class="fw-bold fs-4">$335<sup>.26</sup></span>
                            </div>
                        </div>
                    </div>
                    <div class="card-footer bg-white border-top-0">
                        <asp:Button runat="server" ID="btnAddToCart3" CssClass="btn btn-danger w-100" Text="Add to Cart" />
                    </div>
                </div>
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