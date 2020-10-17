<%@ Page Language="C#" AutoEventWireup="true" CodeFile="index.aspx.cs" Inherits="webstore_index" %>
<%@ Register src="headbar.ascx" tagname="headbar" tagprefix="uc1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <!-- Required meta tags -->
    <meta charset='UTF-8' />
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
    <title>志光網路書局</title>
    <link rel="canonical" href="https://www.sir.com.tw/webstore/index.aspx" />
    <!--SEO-->
    <meta name="description" content="台北、台中、嘉義、台南、高雄、屏東志光＆保成＆學儒補習班和超級函授、金榜函授、志光數位學院上榜生一致推薦的上榜用書志光網路書局-專業出版社公職考古題,國家考試(高普考、初等考、地方特考、司法特考、警察特考)、師資考試(教師甄試)、專技證照(導遊領隊、記帳士、會計師、地政士)、金融銀行考試(銀行特考)、國營企業考試(郵局、中油、台電雇員（養成班）、中華電信、台水、台菸)、警專升學考試等" />
    <meta name="keywords" content="公職考試,國家考試,高普考,司法特考,一般警察特考,初等考,地方特考,國營事業考試,師資考,導遊領隊,銀行考試,記帳士,會計師,郵局考試,中油招考,台電招考,中華電信招考" />
    <meta property="og:url" content="https://www.sir.com.tw/webstore/index.aspx" />
    <meta property="og:type" content="website" />
    <meta property="og:title" content="志光網路書局" />
    <meta property="og:description" content="台北、台中、嘉義、台南、高雄、屏東志光＆保成＆學儒補習班和超級函授、金榜函授、志光數位學院上榜生一致推薦的上榜用書志光網路書局-專業出版社公職考古題,國家考試(高普考、初等考、地方特考、司法特考、警察特考)、師資考試(教師甄試)、專技證照(導遊領隊、記帳士、會計師、地政士)、金融銀行考試(銀行特考)、國營企業考試(郵局、中油、台電雇員（養成班）、中華電信、台水、台菸)、警專升學考試等" />
    <meta property="og:image" content="https://www.sir.com.tw/webstore/img/logo.png" />

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="css/bootstrap.css" />
    <!--<link rel="stylesheet" href="css/bootstrap.min.css" />-->
    <link rel="stylesheet" href="css/mystyle.css" />
    <link rel="stylesheet" type="text/css" href="css/slick.css" />
    <link rel="stylesheet" type="text/css" href="css/slick-theme.css" />
    <link rel="shortcut icon" href="img/favicon.png" />
    <style type="text/css">
        .slider {
            width: 90%;
            margin: 10px auto;
        }

        .slick-slide {
            margin: 0px 10px;
        }

            .slick-slide img {
                width: 100%;
            }

        .slick-prev:before,
        .slick-next:before {
            color: black;
        }


        .slick-slide {
            transition: all ease-in-out .3s;
            opacity: .2;
        }

        .slick-active {
            opacity: 1;
        }

        .slick-current {
            opacity: 1;
        }
    </style>
</head>
<!-- End .header -->
<body>
    <form id="form1" runat="server">
        <uc1:headbar ID="headbar" runat="server" />
        <!--熱搜關鍵字 start-->
        <div class="hotsearch text-center">
            <span>熱搜關鍵字：</span>
            <a href="./searchResults.aspx?sText=%e7%99%be%e5%88%86%e7%99%be">百分百</a>&nbsp;｜
            <a href="./searchResults.aspx?sText=AB">地特題庫</a>&nbsp;｜
            <a href="./bookS.aspx?EXP1=I0A">郵局</a>&nbsp;｜
            <a href="./bookS.aspx?EXP1=I0M&EXP2=&SI=A">國營事業招考</a>&nbsp;｜
            <a href="./searchResults.aspx?sText=%E8%B6%85%E7%B4%9A%E5%87%BD%E6%8E%88">超級函授折扣</a>&nbsp;｜
            <a href="./searchResults.aspx?sText=%E9%87%91%E6%A6%9C%E5%87%BD%E6%8E%88">金榜函授折扣</a>&nbsp;
        </div>
        <!--熱搜關鍵字 end-->
        <div class="container">
            <!--防詐騙 start-->
            <div class="warn-bilk text-center">
                <span>請注意！我們不會以電話聯繫您操作ATM進行付款，或更改任何銀行、信用卡設定，如發覺可疑詐騙情形，請撥165反詐騙專線或上165網站查詢</span>
            </div>
            <!--防詐騙 end-->
            <!--輪播Banner start-->
            <div id="carouselExampleIndicators" class="carousel slide slide-size" data-ride="carousel">
                <ol class="carousel-indicators">
                    <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
                    <asp:Literal ID="LiteralMainBannerNo" runat="server"></asp:Literal>
                </ol>
                <div class="carousel-inner">
                    <asp:Literal ID="LiteralMainBanner" runat="server"></asp:Literal>
                </div>
                <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
                    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                    <span class="sr-only">Previous</span>
                </a>
                <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
                    <span class="carousel-control-next-icon" aria-hidden="true"></span>
                    <span class="sr-only">Next</span>
                </a>
            </div>
            <!--輪播Banner end-->
            <!--小Banner start-->
            <div class="row bn-box">
                <asp:Literal ID="LiteralSecondBanner" runat="server"></asp:Literal>
            </div>
            <!--小Banner end-->
            <!--其他資訊 start-->
            <div class="bn-box">
                <ul class="nav nav-tabs myTab" id="myTab" role="tablist">
                    <li class="nav-item">
                        <a class="nav-link active" id="contact-tab" data-toggle="tab" href="#Abn-1">線上函授優惠</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" id="contact-tab" data-toggle="tab" href="#Abn-2">超級函授</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" id="contact-tab" data-toggle="tab" href="#Abn-3">金榜函授</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" id="contact-tab" data-toggle="tab" href="#Abn-4">函授特攻班</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" id="contact-tab" data-toggle="tab" href="#Abn-5">函授怎麼買?</a>
                    </li>
                </ul>
                <div class="tab-content" id="myTabContent">
                    <div class="tab-pane fade show active myTab" id="Abn-1" role="tabpanel">
                        <a href="">
                            <img src="img/Abn/Abn-1.jpg" width="100%" />
                        </a>
                    </div>
                    <div class="tab-pane fade myTab" id="Abn-2" role="tabpanel">
                        <a href="">
                            <img src="img/Abn/Abn-1.jpg" width="100%" />
                        </a>
                    </div>
                    <div class="tab-pane fade myTab" id="Abn-3" role="tabpanel">
                        <a href="">
                            <img src="img/Abn/Abn-1.jpg" width="100%" />
                        </a>
                    </div>
                    <div class="tab-pane fade myTab" id="Abn-4" role="tabpanel">
                        <a href="">
                            <img src="img/Abn/Abn-1.jpg" width="100%" />
                        </a>
                    </div>
                    <div class="tab-pane fade myTab" id="Abn-5" role="tabpanel">
                        <a href="">
                            <img src="img/Abn/Abn-5.jpg" width="100%" />
                        </a>
                    </div>
                </div>
            </div>
            <!--其他資訊 end-->
            <!--熱門資訊 start-->

            <div class="bn-box">
                <ul class="nav nav-tabs myTab2" id="myTab" role="tablist">
                    <li class="nav-item">
                        <a class="nav-link active" id="contact-tab" data-toggle="tab" href="#Bbn-1">本期熱門</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" id="contact-tab" data-toggle="tab" href="#Bbn-2">退除役補助</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" id="contact-tab" data-toggle="tab" href="#Bbn-3">考試介紹</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" id="contact-tab" data-toggle="tab" href="#Bbn-4">高普考放榜特輯</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" id="contact-tab" data-toggle="tab" href="#Bbn-5">免費線上影音</a>
                    </li>
                </ul>
                <div class="tab-content" id="myTabContent">
                    <div class="tab-pane fade show active myTab2" id="Bbn-1" role="tabpanel">
                        <a href="">
                            <img src="img/Abn/Abn-1.jpg" width="100%" />
                        </a>
                    </div>
                    <div class="tab-pane fade myTab2" id="Bbn-2" role="tabpanel">
                        <a href="">
                            <img src="img/Abn/Abn-1.jpg" width="100%" />
                        </a>
                    </div>
                    <div class="tab-pane fade myTab2" id="Bbn-3" role="tabpanel">
                        <a href="">
                            <img src="img/Abn/Abn-1.jpg" width="100%" />
                        </a>
                    </div>
                    <div class="tab-pane fade myTab2" id="Bbn-4" role="tabpanel">
                        <a href="">
                            <img src="img/Abn/Abn-1.jpg" width="100%" />
                        </a>
                    </div>
                    <div class="tab-pane fade myTab2" id="Bbn-5" role="tabpanel">
                        <a href="">
                            <img src="img/Abn/Abn-5.jpg" width="100%" />
                        </a>
                    </div>
                </div>
            </div>
            <!--熱門資訊 end-->
            <!--強檔預購 start-->
            <div class="book_list_box">
                <p class="o1">強檔預購&nbsp;<span class="arrow_right"></span></p>
                <section class="regular slider">
                    <div>
                        <div class="work-bottom"><span class="big-link">折</span></div>
                        <a href="bookScnt.aspx?SID=01000012038" title="行政學百分百(命題焦點暨題庫解析)附加影音">
                            <img src="https://www.sir.com.tw/webstore/productImg/01000012038.jpg" onerror="this.src='img/nobook.jpg'" alt="行政學百分百(命題焦點暨題庫解析)附加影音" width="100%">
                            <p>行政學百分百(命題焦點暨題庫解析)附加影音</p>
                            <p>作者：陳真</p>
                            <p>售價：750元</p>
                            <p>特價：<span class="price_red">750</span>元</p>
                        </a>
                        <!--<div class="text-center"><a class="button" href="#">加入購物車</a></div>-->
                    </div>
                    <div>
                        <div class="work-bottom"><span class="big-link">折</span></div>
                        <a href="bookScnt.aspx?SID=01000011565" title="企業管理題庫─破 Point">
                            <img src="https://www.sir.com.tw/webstore/productImg/01000011565.jpg" onerror="this.src='img/nobook.jpg'" alt="企業管理題庫─破 Point" width="100%">
                            <p>企業管理題庫─破 Point</p>
                            <p>作者：王毅</p>
                            <p>售價：660元</p>
                            <p>特價：<span class="price_red">660</span>元</p>
                        </a>
                    </div>
                    <div>
                        <div class="work-bottom"><span class="big-link">折</span></div>
                        <a href="bookScnt.aspx?SID=01000012038" title="行政學百分百(命題焦點暨題庫解析)附加影音">
                            <img src="https://www.sir.com.tw/webstore/productImg/01000012038.jpg" onerror="this.src='img/nobook.jpg'" alt="行政學百分百(命題焦點暨題庫解析)附加影音" width="100%">
                            <p>行政學百分百(命題焦點暨題庫解析)附加影音</p>
                            <p>作者：陳真</p>
                            <p>售價：750元</p>
                            <p>特價：<span class="price_red">750</span>元</p>
                        </a>
                    </div>
                    <div>
                        <div class="work-bottom"><span class="big-link">折</span></div>
                        <a href="bookScnt.aspx?SID=01000011565" title="企業管理題庫─破 Point">
                            <img src="https://www.sir.com.tw/webstore/productImg/01000011565.jpg" onerror="this.src='img/nobook.jpg'" alt="企業管理題庫─破 Point" width="100%">
                            <p>企業管理題庫─破 Point</p>
                            <p>作者：王毅</p>
                            <p>售價：660元</p>
                            <p>特價：<span class="price_red">660</span>元</p>
                        </a>
                    </div>
                    <div>
                        <div class="work-bottom"><span class="big-link">折</span></div>
                        <a href="bookScnt.aspx?SID=01000012038" title="行政學百分百(命題焦點暨題庫解析)附加影音">
                            <img src="https://www.sir.com.tw/webstore/productImg/01000012038.jpg" onerror="this.src='img/nobook.jpg'" alt="行政學百分百(命題焦點暨題庫解析)附加影音" width="100%">
                            <p>行政學百分百(命題焦點暨題庫解析)附加影音</p>
                            <p>作者：陳真</p>
                            <p>售價：750元</p>
                            <p>特價：<span class="price_red">750</span>元</p>
                        </a>
                    </div>
                    <div>
                        <div class="work-bottom"><span class="big-link">折</span></div>
                        <a href="bookScnt.aspx?SID=01000011565" title="企業管理題庫─破 Point">
                            <img src="https://www.sir.com.tw/webstore/productImg/01000011565.jpg" onerror="this.src='img/nobook.jpg'" alt="企業管理題庫─破 Point" width="100%">
                            <p>企業管理題庫─破 Point</p>
                            <p>作者：王毅</p>
                            <p>售價：660元</p>
                            <p>特價：<span class="price_red">660</span>元</p>
                        </a>
                    </div>
                    <div>
                        <div class="work-bottom"><span class="big-link">折</span></div>
                        <a href="bookScnt.aspx?SID=01000012038" title="行政學百分百(命題焦點暨題庫解析)附加影音">
                            <img src="https://www.sir.com.tw/webstore/productImg/01000012038.jpg" onerror="this.src='img/nobook.jpg'" alt="行政學百分百(命題焦點暨題庫解析)附加影音" width="100%">
                            <p>行政學百分百(命題焦點暨題庫解析)附加影音</p>
                            <p>作者：陳真</p>
                            <p>售價：750元</p>
                            <p>特價：<span class="price_red">750</span>元</p>
                        </a>
                    </div>
                    <div>
                        <div class="work-bottom"><span class="big-link">折</span></div>
                        <a href="bookScnt.aspx?SID=01000011565" title="企業管理題庫─破 Point">
                            <img src="https://www.sir.com.tw/webstore/productImg/01000011565.jpg" onerror="this.src='img/nobook.jpg'" alt="企業管理題庫─破 Point" width="100%">
                            <p>企業管理題庫─破 Point</p>
                            <p>作者：王毅</p>
                            <p>售價：660元</p>
                            <p>特價：<span class="price_red">660</span>元</p>
                        </a>
                    </div>
                    <div>
                        <div class="work-bottom"><span class="big-link">折</span></div>
                        <a href="bookScnt.aspx?SID=01000012038" title="行政學百分百(命題焦點暨題庫解析)附加影音">
                            <img src="https://www.sir.com.tw/webstore/productImg/01000012038.jpg" onerror="this.src='img/nobook.jpg'" alt="行政學百分百(命題焦點暨題庫解析)附加影音" width="100%">
                            <p>行政學百分百(命題焦點暨題庫解析)附加影音</p>
                            <p>作者：陳真</p>
                            <p>售價：750元</p>
                            <p>特價：<span class="price_red">750</span>元</p>
                        </a>
                    </div>
                    <div>
                        <div class="work-bottom"><span class="big-link">折</span></div>
                        <a href="bookScnt.aspx?SID=01000011565" title="企業管理題庫─破 Point">
                            <img src="https://www.sir.com.tw/webstore/productImg/01000011565.jpg" onerror="this.src='img/nobook.jpg'" alt="企業管理題庫─破 Point" width="100%">
                            <p>企業管理題庫─破 Point</p>
                            <p>作者：王毅</p>
                            <p>售價：660元</p>
                            <p>特價：<span class="price_red">660</span>元</p>
                        </a>
                    </div>
                </section>
                <a class="o3" href="#">看更多＞</a>
            </div>
            <!--強檔預購 end-->
            <!--TOP 10 start-->
            <div class="book_list_box">
                <p class="o1">熱銷TOP10&nbsp;<span class="arrow_right"></span></p>
                <section class="regular slider">
                    <asp:Literal ID="LiteralTOP10" runat="server"></asp:Literal>
                </section>
                <a class="o3" href="#">看更多＞</a>
            </div>
            <!--TOP 10 end-->
            <!--推薦套書 start-->
            <div class="book_list_box">
                <p class="o1">推薦套書&nbsp;<span class="arrow_right"></span></p>
                <section class="regular slider">
                    <asp:Literal ID="PurchaseLiteral" runat="server"></asp:Literal>
                </section>
                <a class="o3" href="#">看更多＞</a>
            </div>
            <!--推薦套書 end-->
            <!--其他推薦 start-->
            <asp:Literal ID="category_tabs" runat="server"></asp:Literal>
            <!--其他推薦 end-->
            <!--廣告資訊 start-->
            <img src="img/bg_header02b.jpg" width="100%" />
            <!--廣告資訊 end-->
            <!--最新出版 start-->
            <div class="book_list_box">
                <p class="o2">最新出版&nbsp;<span class="arrow_right"></span></p>
                <section class="regular2 slider">
                     <asp:Literal ID="LiteralNewBooks" runat="server"></asp:Literal>
                </section>
                <a class="o3" href="#">看更多＞</a>
            </div>
            <!--最新出版 end-->
            <!--考情文章 start-->
            <p class="o2">最新消息&nbsp;<span class="arrow_right"></span></p>
            <ul class="nav nav-tabs myTab3" id="myTab" role="tablist">

                <li class="nav-item">
                    <a class="nav-link active" id="contact-tab" data-toggle="tab" href="#最新考情">最新考情</a>
                </li>
                <asp:Literal ID="blog_links" runat="server"></asp:Literal>
            </ul>
            <div class="tab-content" id="myTabContent">
                 <div class="tab-pane fade show active myTab3" id="最新考情" role="tabpanel">
                    <div class="row">
                        <asp:Literal ID="LiteralExamInfor1" runat="server"></asp:Literal>
                    </div>
                    <div class="text-center">
                        <a class="btn btn-outline-success my-2 my-sm-0" href="blog.aspx" title="更多考情">更多考情</a>
                    </div>
                 </div>
            
                <asp:Literal ID="blogcontent" runat="server"></asp:Literal>
            </div>
            <!--考情文章 end-->

        </div>
        
        <footer class="footer container">
            <div>
                <hr class="footer-hr">
            </div>
            <div class="container">
                <div class="footer-top">
                    <div class="row footer-center">
                        <div class="footer-box">
                            <div class="footer-top-logo">
                                <a href="index.aspx">
                                    <img src="img/logo_left.png" alt="logo">
                                </a>
                            </div>
                            <ul class="menu-footer">
                                <li><a href="https://goo.gl/jtzyJ5">地址:台南市南區夏林路310巷2號</a></li>
                                <li><a href="tel:062650818">電話:06-2650818</a></li>
                                <li><span>傳真:06-2650817</span></li>
                            </ul>
                        </div>
                        <div class="headerdivider"></div>
                        <div class="footer-box">
                            <div class="footer-top-title"><h4 class="title-footer">班系/課程網站</h4></div>
                            <ul class="menu-footer">
                                <li><a href="https://www.ckpublic.com.tw/" target="_blank">志光系列</a></li>
                                <li><a href="https://www.pcsr.com.tw/" target="_blank">保成學儒系列</a></li>
                                <li><a href="https://www.easywin.com.tw/">志聖系列</a></li>
                                <li><a href="https://www.cek.com.tw/">志光數位學院</a></li>
                            </ul>
                        </div>
                        <div class="headerdivider"></div>
                        <div class="footer-box">
                            <div class="footer-top-title"><h4 class="title-footer">相關網站</h4></div>
                            <ul class="menu-footer">
                                <li><a href="https://www.facebook.com/easypublic/">Facebook粉絲團</a></li>
                                <li><a href="https://www.youtube.com/user/sir56915527/featured">Youtube頻道</a></li>
                                <li><a href="https://www.public.com.tw/">公職王</a></li>
                                <li><a href="https://www.paochen.com.tw/">保成學儒法政網</a></li>
                            </ul>
                        </div>
                        <div class="headerdivider"></div>
                        <div class="footer-box">
                            <div class="footer-top-title"><h4 class="title-footer">公職王友善連結</h4></div>
                            <ul class="menu-footer">
                                <li><a href="https://www.public.com.tw/Enterprise/Introduction.aspx" target="_blank">企業簡介</a></li>
                                <li><a href="https://www.public.com.tw/Enterprise/Careers.aspx" target="_blank">企業徵才</a></li>
                                <li><a href="https://www.public.com.tw/Enterprise/Charity.aspx" target="_blank">志光慈善會</a></li>
                                <li><a href="https://ck.public.com.tw/" target="_blank">志光紀念官網</a></li>
                            </ul>
                        </div>
                    </div>
                </div>
                <div class="footer-mid">
                    <div class="footer-mid-text">
                        <div class="copyright text-center">
                            <i class="fa fa-copyright" aria-hidden="true"></i>
                            Copyright 2020 <a href="#">, 志光教育科技(股)數位出版分公司, </a> All rights reserved.
                        </div>
                    </div>
                </div>
            </div>
        </footer>
    </form>
    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="js/jquery-3.5.1.js"></script>
    <script src="js/jquery-ui.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"></script>
    <script defer src="https://use.fontawesome.com/releases/v5.0.0/js/all.js"></script>
    <script src="js/bootstrap.js"></script>
    <!--<script src="js/bootstrap.min.js"></script>-->
    <script src="js/myscript.js"></script>
    <script src="js/slick.js" type="text/javascript" charset="utf-8"></script>
    <script>
        if (screen.width >= 992) {
            $(".regular").slick({
                dots: true,
                infinite: true,
                slidesToShow: 5,
                slidesToScroll: 5
            });
        } else {
            $(".regular").slick({
                dots: true,
                infinite: true,
                slidesToShow: 2,
                slidesToScroll: 2
            });
        }

        if (screen.width >= 992) {
            $(".regular2").slick({
                dots: true,
                infinite: true,
                slidesToShow: 5,
                slidesToScroll: 5,
                rows: 2,
            });
        } else {
            $(".regular2").slick({
                dots: true,
                infinite: true,
                slidesToShow: 2,
                slidesToScroll: 2,
                rows: 2,
            });
        }
    </script>

    <script>
        $('.myTab li').hover(function () {
            $('.myTab li a').removeClass('active show');
            $(this).children('a').addClass('active show');
            var href = $(this).children('a').attr('href');
            href = href.substr(1);
            $('.myTab').removeClass('active show');
            $('#' + href).addClass('active show');
        });

        $('.myTab2 li').hover(function () {
            $('.myTab2 li a').removeClass('active show');
            $(this).children('a').addClass('active show');
            var href = $(this).children('a').attr('href');
            href = href.substr(1);
            $('.myTab2').removeClass('active show');
            $('#' + href).addClass('active show');
        });

        $('.myTab3 li').check(function () {
            $('.myTab3 li a').removeClass('active show');
            $(this).children('a').addClass('active show');
            var href = $(this).children('a').attr('href');
            href = href.substr(1);
            $('.myTab3').removeClass('active show');
            $('#' + href).addClass('active show');
        });
    </script>
</body>
</html>
