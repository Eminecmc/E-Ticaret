<%@ Page Title="" Language="C#" MasterPageFile="~/Site/Master.Master" AutoEventWireup="true" CodeBehind="sepet1.aspx.cs" Inherits="ETicaret.Site.sepet1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="section-header">
        <div class="container">
            <div class="row">

                <div class="col-lg-12">
                    <h1 class="page-header">SEPET</h1>
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
                <asp:ListView ID="spt" runat="server">
                    <ItemTemplate>
                        <tr>
                            <td><img class="img-responsive" width="100" src="<%# Eval("SepetFoto") %>" alt="<%# Eval("SepetAdi") %>"></td>
                            <td><%# Eval("SepetAdi") %></td>
                            <td><%# Eval("SepetFiyat") %> TL</td>
                             <td>  <a class="btn btn-danger" href="sepetsil.aspx?id=<%# Eval("SepetFiyat") %>">Sil </a>  </td>   
                        </tr>   
                    </ItemTemplate>
                </asp:ListView> 
                 
                <tr>
                    <td>Toplam : </td>
                    <td></td>
                    <td>
                        <asp:ListView ID="toplam1" runat="server">
                            <ItemTemplate>
                                <%# Eval("Toplam") %>  TL
                            </ItemTemplate>
                        </asp:ListView>
                    </td>
                   <td></td>

                </tr>
            </tbody>
        </table>
        <hr /> 
        <a class="btn btn-info" href="Odeme.aspx">Ödemeyi Tamamla</a>
        <a class="btn btn-success" href="index.aspx">Alışverişe Devam Et</a>
        

    </div>

</asp:Content>
