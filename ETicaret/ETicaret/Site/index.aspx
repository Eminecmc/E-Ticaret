<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="ETicaret.Site.index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="tr-TR" lang="tr-TR">
<head runat="server">
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <meta name="description" content="" />
    <meta name="author" content="" />


    <!-- font-awesome -->
    <link href="/tasarim/css/font-awesome.min.css" rel="stylesheet" />

    <!-- Bootstrap core CSS -->
    <link href="/tasarim/css/bootstrap.css" rel="stylesheet" />

    <!-- custom CSS -->
    <link href="/tasarim/css/style.css" rel="stylesheet" />

    <!-- JavaScript -->
    <script type="text/javascript" src="/tasarim/js/jquery-1.10.2.js"></script>
    <script type="text/javascript" src="/tasarim/js/bootstrap.js"></script>
    <script type="text/javascript" src="/tasarim/js/plugins.js"></script>

    <script type="text/javascript" src="/tasarim/js/banzhow.js"></script>
    <title>E.C</title>


</head>
<body>
    <form id="form1" runat="server">
        <div>
            <nav class="navbar navbar-fixed-top navbar-inverse" role="navigation">
                <div class="container">
                    <div class="navbar-header">
                        <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-ex1-collapse">
                            <span class="sr-only">Toggle navigation</span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                        </button>

                        <a class="navbar-brand" href="index.aspx">E.C</a>
                    </div>
                    <div class="collapse navbar-collapse navbar-ex1-collapse">
                        <ul class="nav navbar-nav navbar-right">
                            <li class="active"><a href="index.aspx">ANA SAYFA</a></li>

                            <asp:ListView ID="NavbarList" runat="server">
                                <ItemTemplate>

                                    <li><a href="urun.aspx?urunAdi=<%# Eval("KategoriID") %>"><%# Eval("KategoriAdi") %></a></li>

                                </ItemTemplate>
                            </asp:ListView>
                            <li><a href="sepet1.aspx">
                                <img src="/tasarim/img/sepet.png" alt="logo" style="width: 20px;" /></a> </li>


                            <li>
                                <div class="navbar-form navbar-left">
                                    <asp:TextBox ID="search1" runat="server" CssClass="form-control" placeholder="Arama.."></asp:TextBox>
                                </div>

                            </li>
                        </ul>
                    </div>
                </div>
            </nav>
        </div>

        <!-- /.container -->




        <div id="myCarousel" class="carousel slide">
            <!-- Indicators -->
            <ol class="carousel-indicators">
                <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
                <li data-target="#myCarousel" data-slide-to="1"></li>
                <li data-target="#myCarousel" data-slide-to="2"></li>
            </ol>

            <!-- Wrapper for slides -->
            <div class="carousel-inner">
                <div class="item active">
                    <div class="fill" style="background-image: url('/tasarim/img/slide/imac.PNG');"></div>
                    <div class="carousel-caption">
                        <h2>iMac
                                <br />
                            Yeniden Merhaba</h2>
                        <a href="urun.aspx?urunAdi=3" class="button">Daha fazla bilgi</a>
                    </div>
                </div>
                <div class="item">
                    <div class="fill" style="background-image: url('/tasarim/img/slide/iphone.PNG');"></div>
                    <div class="carousel-caption">
                        <h2>5 Muhteşem Renk</h2>
                        <a href="urun.aspx?urunAdi=1" class="button">Daha Fazla Bilgi</a>
                    </div>
                </div>
                <div class="item">
                    <div class="fill" style="background-image: url('/tasarim/img/slide/watch.jpg');"></div>
                    <div class="carousel-caption">
                        <h2>Renkler
                                <br />
                            Kırmızı
                                <br />
                            ve Mavi</h2>
                        <a href="urun.aspx?urunAdi=5" class="button">İncele</a>
                    </div>
                </div>
            </div>

            <!-- Controls -->
            <a class="left carousel-control" href="#myCarousel" data-slide="prev">
                <i class="fa fa-angle-left"></i>
            </a>
            <a class="right carousel-control" href="#myCarousel" data-slide="next">
                <i class="fa fa-angle-right"></i>
            </a>
        </div>


        <div class="section" id="recent-projects" style="position: relative;">

            <div class="container">

                <div class="row">
                    <div class="col-lg-12">
                        <h2 class="section-title">Urunler</h2>
                    </div>
                    <div class="col-lg-4 col-md-4 col-sm-6">
                        <a href="urun.aspx?urunAdi=1" class="link-portfolio">
                            <div class="overlay-portfolio">
                                <h3>IPhone</h3>
                                <small class="text-muted">Hızını anlatmaya kelimeler yetişemez.
                                </small>
                            </div>
                            <!-- /.overlay-portfolio -->
                            <img class="img-responsive img-home-portfolio" src="/tasarim/img/iphone12.jpg" alt="portfolio 1" />
                        </a>
                    </div>
                    <div class="col-lg-4 col-md-4 col-sm-6">
                        <a href="urun.aspx?urunAdi=2" class="link-portfolio">
                            <div class="overlay-portfolio">
                                <h3>Macbook</h3>
                                <small class="text-muted">2,8 kata kadar daha yüksek CPU performansı. 5 kata kadar daha hızlı grafik teknolojileri. 
                                </small>
                            </div>
                            <!-- /.overlay-portfolio -->
                            <img class="img-responsive img-home-portfolio" src="/tasarim/img/macbook.jpg" alt="portfolio 2" />
                        </a>
                    </div>
                    <div class="col-lg-4 col-md-4 col-sm-6">
                        <a href="urun.aspx?urunAdi=3" class="link-portfolio">
                            <div class="overlay-portfolio">
                                <h3>IMac</h3>
                                <small class="text-muted">iMac, fikirlerinize seviye atlatmanızı sağlayan güçlü araçlar ve uygulamalarla dolu. 
                                </small>
                            </div>
                            <!-- /.overlay-portfolio -->
                            <img class="img-responsive img-home-portfolio" src="/tasarim/img/imac.jpg" alt="portfolio 3" />
                        </a>
                    </div>
                    <div class="col-lg-4 col-md-4 col-sm-6">
                        <a href="urun.aspx?urunAdi=4" class="link-portfolio">
                            <div class="overlay-portfolio">
                                <h3>IPad</h3>
                                <small class="text-muted">Apple M1 çip ile şimdi süper güçleri var.
                                </small>
                            </div>
                            <!-- /.overlay-portfolio -->
                            <img class="img-responsive img-home-portfolio" src="/tasarim/img/ipad.PNG" alt="portfolio 4" />
                        </a>
                    </div>
                    <div class="col-lg-4 col-md-4 col-sm-6">
                        <a href="urun.aspx?urunAdi=5" class="link-portfolio">
                            <div class="overlay-portfolio">
                                <h3>Watch</h3>
                                <small class="text-muted">Sağlıgın gelecegi şimdi bileginize geldi.
                                </small>
                            </div>
                            <!-- /.overlay-portfolio -->
                            <img class="img-responsive img-home-portfolio" src="/tasarim/img/watch1.jpg" alt="portfolio 5" />
                        </a>
                    </div>
                    <div class="col-lg-4 col-md-4 col-sm-6">
                        <a href="urun.aspx?urunAdi=6" class="link-portfolio">
                            <div class="overlay-portfolio">
                                <h3>Airpods</h3>
                                <small class="text-muted">AirPods, tüm aygıtlarınızda eşi benzeri olmayan bir dinleme deneyimi sunuyor. 
                                </small>
                            </div>
                            <!-- /.overlay-portfolio -->
                            <img class="img-responsive img-home-portfolio" src="/tasarim/img/airpods.PNG" alt="portfolio 6" />
                        </a>
                    </div>
                </div>
                <!-- /.row -->

            </div>
            <!-- /.container -->

        </div>
        <!-- /.section -->

        <div class="section-colored">

            <div class="container">
                <h3 class="section-title text-center">Alışverişe Başlayın..</h3>

                <div class="container clients">

                    <div class="row">
                        <div class="col-lg-2 col-md-2 col-sm-2 col-xs-6">
                            <a href="urun.aspx?urunAdi=3">
                                <img class="img-responsive" src="/tasarim/img/imac1.PNG" alt="client 1" /></a>
                        </div>

                        <div class="col-lg-2 col-md-2 col-sm-2 col-xs-6">
                            <a href="urun.aspx?urunAdi=1">
                                <img class="img-responsive" src="/tasarim/img/iphone11a.jpg" alt="client 2" /></a>
                        </div>

                        <div class="col-lg-2 col-md-2 col-sm-2 col-xs-6">
                            <a href="urun.aspx?urunAdi=6">
                                <img class="img-responsive" src="/tasarim/img/airpods2.PNG" alt="client 3" /></a>
                        </div>

                        <div class="col-lg-2 col-md-2 col-sm-2 col-xs-6">
                            <a href="urun.aspx?urunAdi=4">
                                <img class="img-responsive" src="/tasarim/img/ipad3.PNG" alt="client 4" /></a>
                        </div>

                        <div class="col-lg-2 col-md-2 col-sm-2 col-xs-6">
                            <a href="urun.aspx?urunAdi=5">
                                <img class="img-responsive" src="/tasarim/img/watch3.PNG" alt="client 5" /></a>
                        </div>

                        <div class="col-lg-2 col-md-2 col-sm-2 col-xs-6">
                            <a href="urun.aspx?urunAdi=2">
                                <img class="img-responsive" src="/tasarim/img/macbookair.jpg" alt="client 6" /></a>
                        </div>
                    </div>
                    <!-- /.row -->

                </div>
                <!-- /.container -->

            </div>
            <!-- /.container -->

        </div>
        <!-- /.section-colored -->

        <footer>
            <div class="container">

                <div class="row">
                    <div class="col-lg-3 col-md-3">
                        <a class="footer-brand" href="index.aspx">Alışveriş ve Detay Bilgi</a>

                        <a href="urun.aspx?urunAdi=1">
                            <p>iPhone</p>
                        </a>
                        <a href="urun.aspx?urunAdi=2">
                            <p>Macbook</p>
                        </a>
                        <a href="urun.aspx?urunAdi=3">
                            <p>iMac</p>
                        </a>
                        <a href="urun.aspx?urunAdi=4">
                            <p>iPad</p>
                        </a>
                        <a href="urun.aspx?urunAdi=5">
                            <p>Watch</p>
                        </a>
                        <a href="urun.aspx?urunAdi=6">
                            <p>Airpods</p>
                        </a>
                        <ul class="list-inline list-unstyled social-networks">
                            <li>
                                <a href="#">
                                    <div class="icon-social icon-social-facebook normal">
                                        <i class="fa fa-facebook"></i>
                                    </div>
                                    <div class="icon-social hover">
                                        <i class="fa fa-facebook"></i>
                                    </div>
                                </a>
                            </li>

                            <li>
                                <a href="#">
                                    <div class="icon-social icon-social-twitter normal">
                                        <i class="fa fa-twitter"></i>
                                    </div>
                                    <div class="icon-social hover">
                                        <i class="fa fa-twitter"></i>
                                    </div>
                                </a>
                            </li>

                            <li>
                                <a href="#">
                                    <div class="icon-social icon-social-google-plus normal">
                                        <i class="fa fa-google-plus"></i>
                                    </div>
                                    <div class="icon-social hover">
                                        <i class="fa fa-google-plus"></i>
                                    </div>
                                </a>
                            </li>

                            <li>
                                <a href="#">
                                    <div class="icon-social icon-social-youtube normal">
                                        <i class="fa fa-youtube-play"></i>
                                    </div>
                                    <div class="icon-social hover">
                                        <i class="fa fa-youtube-play"></i>
                                    </div>
                                </a>
                            </li>

                            <li>
                                <a href="#">
                                    <div class="icon-social icon-social-linkedin normal">
                                        <i class="fa fa-linkedin"></i>
                                    </div>
                                    <div class="icon-social hover">
                                        <i class="fa fa-linkedin"></i>
                                    </div>
                                </a>
                            </li>

                            <li>
                                <a href="#">
                                    <div class="icon-social icon-social-pinterest normal">
                                        <i class="fa fa-pinterest"></i>
                                    </div>
                                    <div class="icon-social hover">
                                        <i class="fa fa-pinterest"></i>
                                    </div>
                                </a>
                            </li>
                        </ul>
                    </div>
                    <div class="col-lg-3 col-md-3">
                        <h3>İletişim</h3>
                        <address>
                            <i class="fa fa-map-marker"></i>Büyükdere Caddesi, Levent 199 Kat: 22-23, 34394 Şişli, İstanbul/Türkiye<br>
                            <i class="fa fa-phone"></i>Teknik destek: 00800 448 829 878
                                <br/>
                            <i class="fa fa-envelope"></i>ec@icloud.com
                        </address>
                    </div>

                    <div class="col-lg-3 col-md-3">
                        <h3>Hesap</h3>
                        <ul class="latest-tweets">
                            <li>
                                <p>Apple Store Hesabı</p>

                            </li>
                            <li>
                                <p>Apple ID'nizi yönetin</p>
                            </li>
                        </ul>
                    </div>

                    <div class="col-lg-3 col-md-3">
                        <div class="col-lg-3 col-md-6">
                            <!-- clock widget start -->
                            <script type="text/javascript"> var css_file = document.createElement("link"); css_file.setAttribute("rel", "stylesheet"); css_file.setAttribute("type", "text/css"); css_file.setAttribute("href", "//s.bookcdn.com//css/cl/bw-cl-150x100t.css?v=0.0.1"); document.getElementsByTagName("head")[0].appendChild(css_file); </script>
                            <div id="tw_8_956025637">
                                <div style="width: 150px; height: 100px; margin: 0 auto;">
                                    <a href="https://bookeder.com/time/istanbul-18319">İstanbul</a><br />
                                </div>
                            </div>
                            <script type="text/javascript"> function setWidgetData_956025637(data) { if (typeof (data) != 'undefined' && data.results.length > 0) { for (var i = 0; i < data.results.length; ++i) { var objMainBlock = ''; var params = data.results[i]; objMainBlock = document.getElementById('tw_' + params.widget_type + '_' + params.widget_id); if (objMainBlock !== null) objMainBlock.innerHTML = params.html_code; } } } var clock_timer_956025637 = -1; widgetSrc = "https://widgets.booked.net/time/info?ver=2;domid=765;type=8;id=956025637;scode=124;city_id=18319;wlangid=21;mode=1;details=0;background=rgba(0,0,0,0.6);border_color=ffffff;color=ffffff;add_background=ffffff;add_color=ffffff;head_color=ffffff;border=0;transparent=1"; var widgetUrl = location.href; widgetSrc += '&ref=' + widgetUrl; var wstrackId = "163220764"; if (wstrackId) { widgetSrc += ';wstrackId=' + wstrackId + ';' } var timeBookedScript = document.createElement("script"); timeBookedScript.setAttribute("type", "text/javascript"); timeBookedScript.src = widgetSrc; document.body.appendChild(timeBookedScript); </script>
                            <!-- clock widget end -->


                        </div>
                    </div>
                </div>
                <!-- /.row -->

            </div>
            <!-- /.container -->
        </footer>

        <div class="footer-after">
            <div class="container">
                <div class="row">
                    <p class="col-md-10">Telif Hakkı © 2021 Apple Inc. Tüm hakları saklıdır.</p>
                    <p class="col-md-2 legal"><a href="#" rel="nofollow">Türkiye</a></p>
                </div>
                <!-- /.row -->
            </div>
        </div>



    </form>
</body>
</html>
