<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Gioithieu.aspx.cs" Inherits="WebApplication2.Gioithieu" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet "href="css_local/GioiThieu_animation.css" />
    <style type="text/css">
    @import url('https://fonts.googleapis.com/css2?family=JetBrains+Mono:ital,wght@0,100..800;1,100..800&display=swap');

    body {
        font-family: "Jetbrains Mono", monospace;

    }

    .container {
        z-index: 99;
    }

        .container h3 {
            text-align: center;
        }

    .container_header {
        display: flex;
        justify-content: space-between;
    }

    .container_main img {
        width: 100%;
    }
    .container_main {
        padding-top:70rem;
    }

    .introduction {
        border-radius: 1rem;
        background-color: #f4f4f4;
    }

    article {
        padding: 1rem;
        margin: 1rem;
    }

    .grid_container_background {
        padding: 3rem 0 3rem 0;
    }

    .grid_container {
        width: 80%;
        margin: auto;
        display: grid;
        align-items: center;
        grid-template-columns: auto auto auto;
        gap: 20px;
    }

        .grid_container img {
            border-radius: 1rem;
        }

        .grid_container .main_image {
            grid-row-start: 1;
            grid-row-end: 3;
            width: 100%;
            height: 100%;
            object-fit: cover;
        }

        .grid_container .side_image {
            height: 100%;
            width: 200px;
            object-fit: cover;
        }

    .grid_container_showroom {
        display: grid;
        grid-template-columns: 50% 50%;
        gap: 10px;
        margin-bottom: 1rem;
    }

        .grid_container_showroom .grid_item_1, .grid_item_2 {
            padding-top: 0.5rem;
            text-align: center;
        }

        .grid_container_showroom .grid_item_1 h4, .grid_item_2 h4{
            font-weight: bold;
        }

        #showroom_header {
            font-weight: bold;
            margin-bottom: 1rem;
        }

        .grid_container_showroom .grid_item_1, .grid_item_2, .grid_item_3, .grid_item_4 {
            background-color: #eeeded;
            border-radius: 1rem;
            height: fit-content;
        }

        .grid_container_showroom .content {
            width: 80%;
            margin: auto;
        }

        .grid_container_showroom .grid_item_3 .content h4, .grid_item_4 .content h4 {
            margin-top: 1rem;
            color: #d53e3e;
            font-weight: bold;
        }

        .grid_container_showroom .grid_item_3 hr {
            border: 1px dashed black;
        }
    </style>       

  
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div id="textContainer"></div>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/three.js/0.155.0/three.min.js"></script>
    <script src="scripts/script.js"></script>
    <div class="container">
        <div class="container_main">
            <div class="introduction">
                <article>
                    <h1>Giới thiệu về GoonRunner</h1>
                    <p>
                        GoonRunner là một công ty kinh doanh linh kiện máy tính và dịch vụ hỗ trợ công nghệ dành cho các doanh nghiệp vừa và nhỏ. Lịch sử hình thành của công ty bắt đầu từ một ý tưởng đơn giản nhưng đầy sáng tạo. GoonRunner là một công ty chuyên cung cấp các linh kiện điện tử, thiết bị công nghệ, và các sản phẩm liên quan đến ngành công nghiệp điện tử, và công nghệ thông tin. Với sự phát triển của ngành công nghiệp điện tử và nhu cầu ngày càng cao về các sản phẩm công nghệ, GoonRunner đã nắm bắt được cơ hội để mở rộng và phát triển quy mô hoạt động của mình.
                    </p>
                    
                </article>
            </div>

            <!-- Hình ảnh của shop -->
            <div class="grid_container_background">
                <div class="grid_container">
                    <img class="main_image" src="img/store_image_1.jpg" alt="Hình cửa hàng">
                    <img class="side_image" src="img/GoonRunner_Employee.png" alt="Hình cửa hàng">
                    <img class="side_image" src="img/store_image_1.jpg" alt="Hình cửa hàng">
                    <img class="side_image" src="img/store_image_1.jpg" alt="Hình cửa hàng">
                    <img class="side_image" src="img/store_image_1.jpg  " alt="Hình cửa hàng">
                </div>
            </div>
        </div>
        <h3 id="showroom_header">Trải nghiệm mua sắm toàn diện</h3>
        <div class="grid_container_showroom">
            <div class="grid_item_1">
                <div class="content">
                    <h4>Hệ thống Showroom trải nghiệm</h4>
                </div>
            </div>
            <div class="grid_item_2">
                <div class="content">
                    <h4>Hệ thống Showroom trải nghiệm</h4>
                </div>
            </div>
            <div class="grid_item_3">
                <div class="content">
                    <h4>Khu vực miền Bắc</h4>
                    <p>&#8226; Showroom GoonRunner Thái Hà</p>
                    <hr>
                    <h4>Khu vực miền Nam</h4>
                    <p>&#8226; Showroom GoonRunner Hoàng Hoa Thám</p>
                    <p>&#8226; Showroom GoonRunner Kha Vận Cân</p>
                    <p>&#8226; Showroom GoonRunner Trần Hưng Đạo</p>
                </div>
            </div>
            <div class="grid_item_4">
                <div class="content">
                    <h4>Website GoonRunner</h4>
                    <p>&#8226; www.GoonRunner.com</p>
                    <p>&#8226; Miễn phí giao hàng toàn quốc</p>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
