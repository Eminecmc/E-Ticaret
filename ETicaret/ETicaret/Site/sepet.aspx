<%@ Page Title="" Language="C#" MasterPageFile="~/Site/Master.Master" AutoEventWireup="true" CodeBehind="sepet.aspx.cs" Inherits="ETicaret.Site.sepet" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="section-header">
        <div class="container">
            <div class="row">

                <div class="col-lg-12">
                    <h1 class="page-header">Sepete Eklendi.</h1>
                </div>

            </div>
        </div>
        <!-- /.container -->
    </div>
    <!-- /.section-colored -->

    <div class="container container-int">

        <ol class="breadcrumb">
            <li><a href="index.aspx">ANASAYFA</a></li>
            <li class="active">Sepet</li>
        </ol>

        <table class="table">
            <thead>
                <tr>
                    <th scope="col"></th>
                    <th scope="col"></th>
                    <th scope="col"></th>
                </tr>
            </thead>
            <tbody>
                <asp:ListView ID="sepetEkle" runat="server">
                    <ItemTemplate>
                        <tr>
                            <td>
                                <img class="img-responsive" width="100" src="<%# Eval("UrunFoto") %>" alt="<%# Eval("UrunAdi") %>"></td>
                            <td><%# Eval("UrunAdi") %></td>
                            <td><%# Eval("UrunFiyat") %> TL</td>
                            <td>  <a class="btn btn-danger" href="sepetsil.aspx?id=<%# Eval("UrunFiyat") %>">Sil </a>  </td>
                        </tr>

                    </ItemTemplate>
                </asp:ListView>
            </tbody>
        </table>

    </div>
</asp:Content>
