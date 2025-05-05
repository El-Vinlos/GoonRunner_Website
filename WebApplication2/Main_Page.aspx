<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Main_Page.aspx.cs" Inherits="WebApplication2.Main_Page" EnableEventValidation="false" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script src="Lib/Datalist_Paging.js"></script>
    <script type="text/javascript">
        $(document).ready(function () {
            $
            $(".btnSua").click(function () {

                var imgURL = $(this).closest('td').find('div').find('div').find('div').find('img').attr('src');
                //                alert($(this).closest('td').find('div').find('h4').find('a').html());
                $("#imgAnh").attr('src', imgURL);
                var name = imgURL.substring(0, imgURL.lastIndexOf('.'));
                var type = imgURL.substring(imgURL.lastIndexOf('.'), imgURL.length);

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
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
    <div id="demo" class="carousel slide" data-bs-ride="carousel">

      <!-- Indicators/dots -->
      <div class="carousel-indicators">
        <button type="button" data-bs-target="#demo" data-bs-slide-to="0" class="active"></button>
      </div>
  
      <!-- The slideshow/carousel -->
      <div class="carousel-inner">
        <div class="carousel-item active">
          <img src="img\banner-qc.png" alt="Quangcaotrasua" style="width:100%;">
        </div>
      </div>
  
      <!-- Left and right controls/icons -->
    </div>
   </div>
         <br />
    <!--card-->
    <h5 class="text-center" style="color:#FC5759; font-family: TUVAbove-Bold;">CÙNG TÌM HIỂU</h5>
    <h1 class="text-center" style="color:#FC5759; font-family: TUVAbove-Bold;">SẢN PHẨM ĐƯỢC YÊU THÍCH NHẤT THÁNG NÀY!!</h1>
    

    <div class="container">
        <div class="row">
    <!--card 1-->     
      <div class="card mx-4" style="background-color:#FC5759; width:280px; height:400px">
        <img class="card-img-top" src="img/Khoai-môn-đá-xay-2-bg-white.png" alt="Card image" style="width:100%; margin-top: 10px">
        <div class="card-body">
            <p style="color:white; font-size:24px">Khoai môn đá xay</p>
          <a href="ChiTietSanPham.aspx?masp=SP02" class="btn text-center" style="background-color:white; color:#FC5759">Tìm hiểu thêm <i class="fa-solid fa-arrow-right"></i></a>
        </div>
      </div>
        <!--card 2-->
        <div class="card mx-4 bg" style="background-color:#FC5759; width:280px; height:400px">
          <img class="card-img-top" src="img/cotton-candy-milk-tea-bg-wh.png" alt="Card image" style="width:100%; margin-top: 10px">
          <div class="card-body">
              <p style="color:white; font-size:24px">Trà sữa kẹo bông</p>
             <a href="ChiTietSanPham.aspx?masp=SP03" class="btn text-center" style="background-color:white; color:#FC5759">Tìm hiểu thêm <i class="fa-solid fa-arrow-right"></i></a>
          </div>
        </div>
        <!--card 3-->
        <div class="card mx-4" style="background-color:#FC5759; width:280px; height:400px">
          <img class="card-img-top" src="img/milo-kem-chanh-1-bg-wh.png" alt="Card image" style="width:100%; margin-top: 10px">
          <div class="card-body">
              <p style="color:white; font-size:24px">Milo kem chanh</p>
            <a href="ChiTietSanPham.aspx?masp=SP07" class="btn text-center" style="background-color:white; color:#FC5759">Tìm hiểu thêm <i class="fa-solid fa-arrow-right"></i></a>
          </div>
        </div>
        <!--card 4-->
            <div class="card mx-4" style="background-color:#FC5759; width:280px; height:400px">
          <img class="card-img-top" src="img/Dau-Latte-bg-wh.png" alt="Card image" style="width:100%; margin-top: 10px">
          <div class="card-body">
              <p style="color:white; font-size:24px">Trà dâu Latte</p>
              <a href="ChiTietSanPham.aspx?masp=SP04" class="btn text-center" style="background-color:white; color:#FC5759">Tìm hiểu thêm <i class="fa-solid fa-arrow-right"></i></a>
            </div>
            </div>
        </div>
        </div>
    <br />
     
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
                <h1 style="color:red; margin-left:43px; font-family: Arial; padding-top:25px; font-family: DejaVuSans, 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif">Ưu Đãi</h1>
                <h3 style="margin-left:22px; font-family: Arial, Helvetica, sans-serif;">Khám phá ngay các chương trình ưu đãi cực hấp dẫn của Yummy trong tháng này!</h3>
                <hr style="border:1px solid black; width:50%; margin-left:22px" />
                <h4 style="margin-left:22px; margin-top:20px; font-family: Arial, Helvetica, sans-serif;">Chào mừng bạn đến với trà sữa Yummy, hãy cùng khám phá những khuyến mãi và ưu đãi của chúng tôi trong tháng này nhé.</h4>
            </div>               
        </div>
    </div>
    
   <!--hotsale-->
    <div class="col-xs-12 ">
        <div class="container">
            <h2 class="title-group font-italic text-center text-danger">
                - - - - - - - - - - - - - - - - - - - - - - - - - - - HOT SALES - - - - - - -
                - - - - - - - - - - - - - - - - - -
            </h2>
        </div>
    </div>
    <div id="par" class="container" style="margin-top: 20px;">
        <div class="row list">
            <div class="col-12">
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
        <div class="text-center">
            <a href="SanPham.aspx" class="btn text-primary xemtatca">XEM TẤT CẢ</a>
        </div>
    </div>


<br />
</asp:Content>
