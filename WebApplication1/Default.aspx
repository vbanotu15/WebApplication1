<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Master/Base.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="WebApplication1._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <link rel="canonical" href="https://www.sdi-structural.com/contact/company-overview.aspx" />
    <link href='//fonts.googleapis.com/css?family=Montserrat:400,700|Lora:400,400italic,700,700italic|Muli:400,300italic,300' rel='stylesheet' type='text/css' />
    <script src="../JS/modernizr-custom.js"></script>
    <script>
        if (!Modernizr.svg) var i = document.getElementsByTagName("img"), j, y; for (j = i.length; j--;)y = i[j].src, y.match(/svg$/) && (i[j].src = y.slice(0, -3) + "png")</script>

    <script src="https://code.jquery.com/jquery-1.12.0.min.js"></script>
    <script src="https://code.jquery.com/jquery-migrate-1.2.1.min.js"></script>
    <link href="../Style/CSS/tier2-sdi-structural.css" rel="stylesheet" type="text/css" />
    <script>
        $(document).ready(function () {

            $('#menu-toggle').click(function () {
                $('#menu').toggleClass('open');
                e.preventDefault();
            });

        });
    </script>

    <style>
        .additionalNav ul li a:link, .additionalNav ul li a:visited, .additionalNav ul li a:active {
            color: #313131; /*Dark Grey*/
            font-family: 'Muli', sans-serif;
            font-size: 16px; /*20px ÷ 16px*/
            font-weight: 400;
            margin-right: 25px;
            padding-left: 25px;
            padding-bottom: 5px;
            padding-top: 10px;
            text-decoration: none;
            background-image: url(../images/home/small-red-arrow.png);
            background-position: 0px 10px;
            background-repeat: no-repeat;
        }

        .more a:link, .more a:visited, .more a:active {
            color: #c02e39; /*red*/
            display: block;
            font-size: 15px; /*15px Ã· 16px*/
            font-family: 'Montserrat', sans-serif;
            font-weight: 400;
            font-style: italic;
            text-decoration: none;
            background-image: url(../images/tier2/small-red-arrow.png);
            background-position: 0px 7px;
            background-repeat: no-repeat;
            padding-top: 5px;
            padding-left: 20px;
        }

        body {
            background-image: url(../images/body.jpg);
        }

        .callouts {
            /*width: 32.358156028368795%; /*365px ÷ 1128px*/
            float: right;
        }

            .callouts ul li.title a:link, .callouts ul li.title a:visited, .callouts ul li.title a:active {
                display: block;
                color: #c02e39; /*red*/
                font-family: 'Montserrat', sans-serif;
                font-size: 1.25em; /*20px ÷ 16px*/
                font-weight: 400;
                background-image: url(../images/home/red-arrow.png);
                background-position: top left;
                background-repeat: no-repeat;
                padding-left: 25px;
                padding-bottom: 5px;
                padding-top: 2px;
                text-decoration: none;
            }

            .callouts ul li.title a:hover {
                text-decoration: underline;
            }

            .callouts ul li.quick {
                display: block;
                color: #c02e39; /*red*/
                font-family: 'Montserrat', sans-serif;
                font-size: 1.25em; /*20px ÷ 16px*/
                font-weight: 400;
                padding-bottom: 5px;
                padding-top: 2px;
                text-decoration: none;
            }

            .callouts ul li.subline {
                display: block;
                color: #313131; /*Dark Grey*/
                font-family: 'Muli', sans-serif;
                font-size: 0.9375em; /*15px ÷ 16px*/
                line-height: 1.46666666666667em; /*22px ÷ 15px*/
                padding-bottom: 10px;
                padding-left: 25px
            }

        .margintop1 {
            margin-top: 2.857142857142857%;
            /*25px ÷ 875px*/
        }

        /* New Changes*/
        /*.callouts {
            width: 100%; 
            float: none;
            clear: both;
        }*/
    </style>
    <!-- the slider -->
    <div class="slidercontainer clear">
        <div class="slider-wrapper theme-default">
            <div class="slider nivoSlider desktop">
                <img src="Images/home/sliders/sdi-structural-h-pile-desktop.jpg" title="#htmlcaption1" alt="Structural Products" />
                <img src="Images/home/sliders/sdi-structural-shipping-desktop.jpg" title="#htmlcaption2" alt="Stacks of beams" />
                <img src="Images/home/sliders/sdi-structural-rolling-desktop.jpg" title="#htmlcaption3" alt="Steel" />
            </div>
            <div id="htmlcaption1" class="nivo-html-caption">
                <a href="#">Wide Range of Structural Products<br>
                    <span class="sub">Beams, Channels, H-Pile and More</span></a>
            </div>
            <div id="htmlcaption2" class="nivo-html-caption">
                <a href="#">Reliable People You Can Trust<br>
                    <span class="sub">Delivering on Our Promise of Better Service</span></a>
            </div>
            <div id="htmlcaption3" class="nivo-html-caption">
                <a href="#">Dependable Rolling Cycles<br>
                    <span class="sub">Meet Your Structural Steel Needs</span></a>
            </div>
            <div class="slider nivoSlider mobile">
                <img src="images/home/sliders/sdi-structural-h-pile-mobile.jpg" title="#htmlcaption1" alt="Structural Products" />
                <img src="images/home/sliders/sdi-structural-shipping-mobile.jpg" title="#htmlcaption2" alt="Stacks of beams" />
                <img src="images/home/sliders/sdi-structural-rolling-mobile.jpg" title="#htmlcaption3" alt="Steel" />
            </div>
            <div id="htmlcaption1" class="nivo-html-caption"><a href="#">Wide Range of Structural Products</a></div>
            <div id="htmlcaption2" class="nivo-html-caption"><a href="#">Reliable Single-Source Supply</a></div>
            <div id="htmlcaption3" class="nivo-html-caption"><a href="#">Dependable Rolling Cycles</a></div>
        </div>
    </div>
    <!-- End Slider -->
    <br />
    <div class="clear"></div>
    <br />
    <!-- the content -->
    <div class="content">
        <div class="additionalNav">
            <ul>
                <li>
                    <h3 class="smaller">Quick Links:</h3>
                </li>
                <li><a href="resources/price-list.aspx">Price List</a></li>
                <li><a href="resources/inventory-list.aspx">Inventory List</a></li>
                <li><a href="resources/rolling-schedule.aspx">Rolling Schedule</a></li>
                <li><a href="resources/bundle-chart.aspx">Bundle Chart</a></li>
                <li><a href="resources/freight-rate.aspx">Get Freight Rate</a></li>
            </ul>
        </div>
        <div class="col1 floatleft margintop1">
            <h3 title="Building North America Together">Building North America Together</h3>
            <p style="width: 100%">
                With annual melting and rolling capacities over 2 million tons, short rolling cycles, and an operationally flexible mill in North America, we offer some of the shortest lead times and can accommodate challenging projects. It's our unmatched experience, can-do culture and the relationships we build that put our unique operational advantages to work for you. We are an American company and our products are made from recycled scrap. 
                You can rely on us to keep our promises and communicate updates and changes to our rolling schedule and your orders. We strive to consistently provide you with high quality products and better availability at competitive prices. Reliability and trust – that’s what you get with us.
            </p>
        </div>
        <div class="callouts margintop1">
            <ul>
                <li class="title"><a href="about/news-and-events.aspx">News &amp; Events</a></li>
                <li class="subline">New products coming soon!</li>
                <li>
                    <img src="images/angles-home.jpg" alt="Image of angled products" title="New Products Coming Soon" /></li>
            </ul>
        </div>
        <div class="clear spacer25"></div>


        <div class="boxes">
            <div class="box paddingright paddingleft" title="Structural Products">
                <a href="structural-products/products-overview.aspx" class="a">
                    <img src="images/home/structural-products-home.jpg" alt="Structural Products" /></a>
                <h2>Structural Products</h2>
                <ul>
                    <li title="Structural Products"><a href="structural-products/products-overview.aspx">Structural Products</a></li>
                </ul>
                <div class="more"><a href="structural-products/products-overview.aspx">Explore our wide range of shapes and sizes</a></div>
            </div>
            <div class="box paddingleft paddingright" title="Semi-Finished Products">
                <a href="structural-products/semi-finished.aspx" class="b">
                    <img src="images/home/semi-finished-bloom-home.jpg" alt="Semi-Finished Products" /></a>
                <h2>Semi-finished Products</h2>
                <ul>
                    <li title="Semi-Finished Products">
                        <a href="structural-products/semi-finished.aspx">Semi-Finished Products</a>
                    </li>
                </ul>
                <div class="more"><a href="structural-products/semi-finished.aspx">Learn more about our casting capabilities</a></div>
            </div>

            <div class="box paddingleft" title="Structural Products Video">
                <a href="about/structural-products-video..aspx" class="c">
                    <img src="images/home/structural-plant-tour-home.jpg" alt="Structural Products Video" /></a>

                <h2>Structural Products Video</h2>
                <ul>
                    <li title="Structural Products Video"><a href="about/structural-products-video.aspx">Structural Products Video</a></li>
                </ul>
                <div class="more"><a href="about/structural-products-video.aspx">Why we’re the faster growing supplier in North America</a></div>
            </div>
            <div class="clear"></div>
        </div>
    </div>
    <!-- End content -->
    <div class="clear"></div>
</asp:Content>
