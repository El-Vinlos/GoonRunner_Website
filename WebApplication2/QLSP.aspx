﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true"
    CodeBehind="QLSP.aspx.cs" Inherits="WebApplication2.QLSP" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script src="Lib/Grid_Paging.js" type="text/javascript"></script>
    <script type="text/javascript">
        $(document).ready(function () {
            $("#btnLuusp").hide(); //ẩn
            $("#btnThemsp").show(); //hiện
            $("#btnLuuHSX").hide(); //ẩn
            $("#btnThemHSX").show(); //hiện
            $("#txtMaSP").val('');
            $("#txtTenSP").val('');
            $("#txtGiaTien").val('');
            $("#txtThoiGianBaoHanh").val('');
            $("#txtMau").val('');
            $("#ImgName").hide();
            $("#txtMaHSTrick").val('');
            $("#txtMaHang").val('');
            $("#txtTenHang").val('');

            $(".btnSua").click(function () {
                $("#ddlHangSX").val($(this).closest('tr').find('td:eq(7)').html());
                $('#txtMaSP').prop('readonly', true);
                $("#txtMaSP").val($(this).closest('tr').find('td:eq(1)').html());
                $("#txtMaSPTrick").val($("#txtMaSP").val().trim());
                $("#txtTenSP").val($(this).closest('tr').find('td:eq(2)').html());
                $("#txtGiaTien").val($(this).closest('tr').find('td:eq(3)').html());
                $("#txtThoiGianBaoHanh").val($(this).closest('tr').find('td:eq(4)').html());
                $("#txtMau").val($(this).closest('tr').find('td:eq(5)').html());
                $("#btnThemsp").hide(); //ẩn
                $("#btnLuusp").show(); //hiện


                var picURL = $(this).closest('tr').find('td:eq(6)').find('img').attr('src'); //duong link anh
                var abdc = picURL.substring(picURL.lastIndexOf('/') + 1, picURL.length); // ten anh

                $("#ImgName").val(abdc);

            });

            $(".btnSuaHSX").click(function () {
                $('#txtMaHang').prop('readonly', true);
                $("#txtMaHang").val($(this).closest('tr').find('td:eq(0)').html());
                $("#txtTenHang").val($(this).closest('tr').find('td:eq(1)').html());
                $("#btnThemHSX").hide(); //ẩn
                $("#btnLuuHSX").show(); //hiện
                return false;
            });

            $("#btnThemsp").click(function () {
                if ($("#txtMaSP").val().trim() == "") {
                    setPopover($("#txtMaSP"), "Chưa nhập dữ liệu");
                    return false;
                }
                if ($("#txtTenSP").val().trim() == "") {
                    setPopover($("#txtTenSP"), "Chưa nhập dữ liệu");
                    return false;
                }
                if ($("#txtGiaTien").val().trim() == "") {
                    setPopover($("#txtGiaTien"), "Chưa nhập dữ liệu");
                    return false;
                }
                if ($("#txtThoiGianBaoHanh").val().trim() == "") {
                    setPopover($("#txtThoiGianBaoHanh"), "Chưa nhập dữ liệu");
                    return false;
                }
                if ($("#txtMau").val().trim() == "") {
                    setPopover($("#txtMau"), "Chưa nhập dữ liệu");
                    return false;
                }
                if ($("#fulUpHinh").val().trim() == "") {
                    setPopover($("#fulUpHinh"), "Chưa có dữ liệu");
                    return false;
                }

                return true;

            });

            $("#btnLuusp").click(function () {
                if ($("#txtMaSP").val().trim() == "") {
                    setPopover($("#txtMaSP"), "Chưa nhập dữ liệu");
                    return false;
                }
                if ($("#txtTenSP").val().trim() == "") {
                    setPopover($("#txtTenSP"), "Chưa nhập dữ liệu");
                    return false;
                }
                if ($("#txtGiaTien").val().trim() == "") {
                    setPopover($("#txtGiaTien"), "Chưa nhập dữ liệu");
                    return false;
                }
                if ($("#txtThoiGianBaoHanh").val().trim() == "") {
                    setPopover($("#txtThoiGianBaoHanh"), "Chưa nhập dữ liệu");
                    return false;
                }
                if ($("#txtMau").val().trim() == "") {
                    setPopover($("#txtMau"), "Chưa nhập dữ liệu");
                    return false;
                }
                if ($("#fulUpHinh").val().trim() == "") {
                    setPopover($("#fulUpHinh"), "Chưa có dữ liệu");
                    return false;
                }

                return true;

            });

            $("#btnThemHSX").click(function () {
                if ($("#txtMaHang").val().trim() == "") {
                    setPopover($("#txtMaHang"), "Chưa nhập dữ liệu");
                    return false;
                }
                if ($("#txtTenHang").val().trim() == "") {
                    setPopover($("#txtTenHang"), "Chưa nhập dữ liệu");
                    return false;
                }

                return true;

            });

            $("#btnLuuHSX").click(function () {
                if ($("#txtMaHang").val().trim() == "") {
                    setPopover($("#txtMaHang"), "Chưa nhập dữ liệu");
                    return false;
                }
                if ($("#txtTenHang").val().trim() == "") {
                    setPopover($("#txtTenHang"), "Chưa nhập dữ liệu");
                    return false;
                }

                return true;

            });

            $("#btnHuysp").click(function () {

                $("#btnLuusp").hide(); //ẩn
                $("#btnThemsp").show(); //hiện
                $("#txtMaSP").val('');
                $("#txtTenSP").val('');
                $("#txtGiaTien").val('');
                $("#txtThoiGianBaoHanh").val('');
                $("#txtMau").val('');
                $("#ImgName").val('');
                $("#txtMaHSTrick").val('');


            });

            $("#btnHuyHSX").click(function () {

                $("#btnLuuHSX").hide(); //ẩn
                $("#btnThemHSX").show(); //hiện
                $("#txtMaHang").val('');
                $("#txtTenHang").val('');


            });

            function setPopover(element, message) {
                element.popover({
                    toggle: 'popover',
                    content: message
                });
                element.popover('show');
                element.focus(function () {
                    $(this).popover('dispose');
                });
            }
        });
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="">
        <div>
            <fieldset class="scheduler-border">
                <legend class="scheduler-border text-danger">Sản phẩm</legend>
                <input runat="server" type="hidden" name="masp" id="txtMaSPTrick" />
                <div class="form-group row">
                    <label for="example-text-input" class="col-4 col-form-label">
                        Mã sản phẩm</label>
                    <div class="col-8">
                        <asp:TextBox CssClass="form-control" ID="txtMaSP" runat="server" ClientIDMode="Static"></asp:TextBox>
                    </div>
                </div>
                <div class="form-group row">
                    <label for="example-text-input" class="col-4 col-form-label">
                        Tên sản phẩm</label>
                    <div class="col-8">
                        <asp:TextBox ID="txtTenSP" CssClass="form-control" ClientIDMode="Static" runat="server"></asp:TextBox>
                       
                    </div>
                </div>
                <div class="form-group row">
                    <label for="example-text-input" class="col-4 col-form-label">
                        Giá tiền</label>
                    <div class="col-8">
                        <asp:TextBox ID="txtGiaTien" CssClass="form-control" ClientIDMode="Static" runat="server"></asp:TextBox>
                    </div>
                </div>
                <div class="form-group row">
                    <label for="example-text-input" class="col-4 col-form-label">
                        Thời gian bảo hành</label>
                    <div class="col-8">
                        <asp:TextBox ID="txtThoiGianBaoHanh" CssClass="form-control" ClientIDMode="Static" runat="server"></asp:TextBox>
                    </div>
                </div>
                <div class="form-group row">
                    <label for="example-text-input" class="col-4 col-form-label">
                        Màu</label>
                    <div class="col-8">
                        <asp:TextBox ID="txtMau" CssClass="form-control" ClientIDMode="Static" runat="server"></asp:TextBox>
                    </div>
                </div>
                <div class="form-group row">
                    <label for="example-text-input" class="col-4 col-form-label">
                        Hình</label>
                    <div class="col-8">
                        <asp:FileUpload CssClass="form-control up-preview" ClientIDMode="Static" ID="fulUpHinh" runat="server" />
                        <div class="show-preview"></div>
                        <asp:TextBox ID="ImgName" ClientIDMode="Static" runat="server"></asp:TextBox>
                    </div>
                </div>
                <div class="form-group row">
                    <label for="example-text-input" class="col-4 col-form-label">
                        Hãng sản xuất</label>
                    <div class="col-8">
                        <asp:DropDownList class="form-control" ClientIDMode="Static" ID="ddlHangSX" runat="server">
                        </asp:DropDownList>
                    </div>
                </div>
                <div class="form-group row text-center">
                    &nbsp&nbsp&nbsp&nbsp&nbsp<asp:Button CssClass="btn btn-outline-success" ID="btnThemsp" runat="server"  ClientIDMode="Static" Text="Thêm" onclick="btnThemsp_Click1" />&nbsp
                    <asp:Button class="btn btn-outline-primary" ClientIDMode="Static" ID="btnLuusp" 
                        runat="server" Text="Lưu" onclick="btnLuusp_Click" />&nbsp
                    <asp:Button class="btn btn-outline-danger" ClientIDMode="Static" ID="btnHuysp" CausesValidation="false" runat="server" Text="Hủy" />
                </div>
            <div id="parent">
                <asp:GridView ID="gdvSP" ClientIDMode="Static" runat="server" CssClass="w-100"
                    AutoGenerateColumns="False" onrowcommand="gdvSP_RowCommand1" DataKeyNames="MaSP">
                    <Columns>
                        <asp:TemplateField HeaderText="STT">
                            <ItemTemplate>
                                <%# Container.DataItemIndex+1 %>
                            </ItemTemplate>
                            <HeaderStyle CssClass="btn-dark" />
                        </asp:TemplateField>
                        <asp:BoundField DataField="MaSP" HeaderText="Mã SP">
                            <HeaderStyle CssClass="btn-dark" />
                        </asp:BoundField>
                        <asp:BoundField DataField="TenSP" HeaderText="Tên SP">
                            <HeaderStyle CssClass="btn-dark" />
                        </asp:BoundField>
                        <asp:BoundField DataField="GiaTien" HeaderText="Giá tiền">
                            <HeaderStyle CssClass="btn-dark" />
                        </asp:BoundField>
                        <asp:BoundField DataField="ThoiGianBaoHanh" HeaderText="Thời gian bảo hành">
                            <HeaderStyle CssClass="btn-dark" />
                        </asp:BoundField>
                        <asp:BoundField DataField="Mau" HeaderText="Màu">
                            <HeaderStyle CssClass="btn-dark" />
                        </asp:BoundField>
                        <asp:TemplateField HeaderText="Hình">
                            <ItemTemplate>
                                <asp:Image ID="Image1" style="width:100px;" runat="server" ImageUrl="<%# Bind('Hinh','HinhSP/{0}') %>" />
                            </ItemTemplate>
                            <EditItemTemplate>
                                <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("Hinh") %>'></asp:TextBox>
                            </EditItemTemplate>
                            <HeaderStyle CssClass="btn-dark" />
                        </asp:TemplateField>
                        <asp:BoundField DataField="MaHang" HeaderText="Mã hàng">
                            <HeaderStyle CssClass="btn-dark" />
                        </asp:BoundField>
                        <asp:TemplateField HeaderText="Sửa" ShowHeader="False">
                            <ItemTemplate>
                                <input id="btnSua" type="button" class="btn btn-info btnSua" value="Sửa" />
                            </ItemTemplate>
                            <HeaderStyle CssClass="btn-dark" />
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Xóa" ShowHeader="False">
                            <ItemTemplate>
                                <asp:Button ID="btnXoa" runat="server" ClientIDMode="Static" CausesValidation="false" OnClientClick="return confirm('Bạn có muốn xóa không?');" CommandArgument='<%# Eval("MaSP") %>'
                                    CommandName="xoa" Text="Xóa" />
                            </ItemTemplate>
                            <ControlStyle CssClass="btn btn-danger" />
                            <HeaderStyle CssClass="btn-dark" />
                        </asp:TemplateField>
                    </Columns>
                </asp:GridView>
            </div>
            </fieldset>
        </div>
    </div>
</asp:Content>