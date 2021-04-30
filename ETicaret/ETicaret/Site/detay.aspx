<%@ Page Title="" Language="C#" MasterPageFile="~/Site/Master.Master" AutoEventWireup="true" CodeBehind="detay.aspx.cs" Inherits="ETicaret.Site.detay" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:ListView ID="ozellik" runat="server">
        <ItemTemplate>
            <div class="section-header">
                <div class="container">
                    <div class="row">

                        <div class="col-lg-12">
                            <h1 class="page-header"><%# Eval("UrunAdi") %></h1>
                        </div>

                    </div>
                </div>
                <!-- /.container -->
            </div>
            <!-- /.section-colored -->

            <div class="container container-int">

                <ol class="breadcrumb">
                    <li><a href="index.aspx">Anasayfa</a></li>
                    <li><a href="urun.aspx?urunAdi=<%# Eval("kategori") %>"><%# Eval("KategoriAdi") %></a></li>
                    <li class="active"><%# Eval("UrunAdi") %></li>
                </ol>

                <div class="row">

                    <div class="col-md-8">
                        <img class="img-responsive" src="<%# Eval("UrunFoto") %>" alt="<%# Eval("UrunAdi") %>">
                    </div>

                    <div class="col-md-4">
                        <h3><small>Ürün</small></h3>
                        <small><%# Eval("UrunAdi") %></small>
                        <h3><small>Fiyat</small></h3>
                        <small><%# Eval("UrunFiyat") %> TL</small>
                        <h3><small>Teknik Özellik</small></h3>
                        <p><small><%# Eval("UrunOzellik") %></small></p>
                        <h3>Bizi Tanıyın</h3>
                        <p><%# Eval("UrunOzellik2") %></p>
                        <a class="btn btn-primary" href="sepet.aspx?urunID=<%# Eval("UrunID") %>">Sepete Ekle  <i class="fa fa-angle-right"></i></a>

                    </div>

                </div>

                <div class="row">

                    <div class="col-lg-12">
                        <h3 class="page-header">Resimler</h3>
                    </div>

                    <div class="col-sm-3 col-xs-6">

                        <!-- /.overlay-portfolio -->
                        <img class="img-responsive img-customer" src="<%# Eval("UrunFoto1") %>" alt="<%# Eval("UrunAdi") %>">
                        </a>
                    </div>

                    <div class="col-sm-3 col-xs-6">

                        <!-- /.overlay-portfolio -->
                        <img class="img-responsive img-customer" src="<%# Eval("UrunFoto2") %>" alt="<%# Eval("UrunAdi") %>">
                        </a>
                    </div>

                    <div class="col-sm-3 col-xs-6">

                        <!-- /.overlay-portfolio -->
                        <img class="img-responsive img-customer" src="<%# Eval("UrunFoto3") %>" alt="<%# Eval("UrunAdi") %>">
                        </a>
                    </div>
                </div>
            </div>
            <!-- /.container -->
            </div>
        </ItemTemplate>
    </asp:ListView>

</asp:Content>
