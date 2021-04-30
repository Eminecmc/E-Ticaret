<%@ Page Title="" Language="C#" MasterPageFile="~/Site/Master.Master" AutoEventWireup="true" CodeBehind="search.aspx.cs" Inherits="ETicaret.Site.search" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div class="section-header">
      <div class="container">
        <div class="row">

          <div class="col-lg-12">
            <h1 class="page-header">ARAMA</h1>
          </div>

        </div>
      </div> <!-- /.container -->
    </div> <!-- /.section-colored -->

        <div class="container container-int">

      <ol class="breadcrumb">
        <li><a href="index.aspx">ANASAYFA</a></li>
        <li class="active">Arama</li>
      </ol>
            <h4 id="txt" class="txt" runat="server"></h4>
            <asp:ListView ID="arama" runat="server">
            <ItemTemplate>
                 <div class="row">

        <div class="col-md-7 col-sm-7">
          <a href="Search.aspx?kelime=<%# Eval("UrunAdi") %>"><img class="img-responsive" src="<%# Eval("UrunFoto") %>" alt="<%# Eval("UrunAdi") %>"/></a>
        </div>

        <div class="col-md-5 col-sm-5">
          <h3><%# Eval("UrunAdi") %></h4>
          <p><%# Eval("UrunOzellik2") %></p>
          <a class="btn btn-primary" href="DetayMacbook.aspx?urunID=<%# Eval("UrunID") %>">Detay  <i class="fa fa-angle-right"></i></a>
          <a class="btn btn-primary" href="sepet.aspx?urunID=<%# Eval("UrunID") %>">Sepete Ekle  <i class="fa fa-angle-right"></i></a>
        </div>

      </div>

      <hr/>
            </ItemTemplate>
        </asp:ListView>

            </div>

</asp:Content>
