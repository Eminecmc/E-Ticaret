<%@ Page Title="" Language="C#" MasterPageFile="~/Site/Master.Master" AutoEventWireup="true" CodeBehind="Odeme.aspx.cs" Inherits="ETicaret.Site.Odeme" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="section-header">
        <div class="container">
            <div class="row">

                <div class="col-lg-12">
                    <h1 class="page-header">Teslimat Bilgileri</h1>
                </div>

            </div>
        </div>
        <!-- /.container -->
    </div>
    <!-- /.section-colored -->

    <div class="container container-int">

        <ol class="breadcrumb">
            <li><a href="index.aspx">ANASAYFA</a></li>
            <li class="active">Ödeme</li>
        </ol>
        <asp:Label ID="txt" runat="server" Text=""></asp:Label>
        <div class="row g-3">

        <div class="col-md-6">
            <label for="inputEmail4" class="form-label">Ad Soyad</label>
            <asp:TextBox ID="adSoyad" runat="server" class="form-control"></asp:TextBox>
          
        </div>
        <div class="col-md-6">
            <label for="inputPassword4" class="form-label">TelNo.</label>
            <asp:TextBox ID="tel" runat="server" class="form-control"></asp:TextBox>
           
        </div>
        <div class="col-md-6">
            <label for="inputAddress" class="form-label">Adres</label>
            <asp:TextBox ID="adres" runat="server" class="form-control" placeholder="Mah. ,Cad. , ..."></asp:TextBox>
            
        </div>

        <div class="col-md-6">
            <label for="inputCity" class="form-label">Şehir</label>
            <asp:TextBox ID="sehir" runat="server" class="form-control"></asp:TextBox>
           
        </div>
            </div>
        <hr />
        <div class="col-md-2">
             <label for="inputAddress" class="form-label"></label>
            <a class="btn btn-info" href ="OdemeBitir.aspx">Ödeme</a>
            
        </div>

    </div>
</asp:Content>
