<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Master/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="WebApplication1._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">


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
            font-family: 'Montserrat', sans-serif;
            font-weight: 400;
            font-size: 0.875em; /*14px ÷ 16px*/
            color: #c02e39;
            display: block;
            cursor: pointer;
            background-color: none;
            padding-top: 10px;
            padding-left: 25px;
            padding-bottom: 10px;
            padding-right: 10px;
            text-decoration: none;
            background-image: url(../images/home/small-red-arrow.png);
            background-position: left 10px;
            background-repeat: no-repeat;
        }
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


    <div class="clear"></div>
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
            <p>With annual melting and rolling capacities over 2 million tons, short rolling cycles, and an operationally flexible mill in North America, we offer some of the shortest lead times and can accommodate challenging projects. It's our unmatched experience, can-do culture and the relationships we build that put our unique operational advantages to work for you. We are an American company and our products are made from recycled scrap. You can rely on us to keep our promises and communicate updates and changes to our rolling schedule and your orders. We strive to consistently provide you with high quality products and better availability at competitive prices. Reliability and trust – that’s what you get with us.</p>
        </div>

        <div class="callouts margintop1">
            <ul>
                <li class="title"><a href="about/news-and-events.html">News &amp; Events</a></li>
                <li class="subline">New products coming soon!</li>
                <li>
                    <img src="images/angles-home.jpg" alt="Image of angled products" title="New Products Coming Soon" /></li>
            </ul>
        </div>

        <div class="clear spacer25"></div>


        <div class="boxes">
            <div class="box paddingright paddingleft" title="Structural Products">
                <a href="structural-products/products-overview.html" class="a">
                    <img src="images/home/structural-products-home.jpg" alt="Structural Products" /></a>
                <h2>Structural Products</h2>
                <ul>
                    <li title="Structural Products"><a href="structural-products/products-overview.html">Structural Products</a></li>
                </ul>
                <div class="more"><a href="structural-products/products-overview.html">Explore our wide range of shapes and sizes</a></div>
            </div>


            <div class="box paddingleft paddingright" title="Semi-Finished Products">
                <a href="structural-products/semi-finished.html" class="b">
                    <img src="images/home/semi-finished-bloom-home.jpg" alt="Semi-Finished Products" /></a>
                <h2>Semi-finished Products</h2>
                <ul>
                    <li title="Semi-Finished Products">
                        <a href="structural-products/semi-finished.html">Semi-Finished Products</a>
                    </li>
                </ul>
                <div class="more"><a href="structural-products/semi-finished.html">Learn more about our casting capabilities</a></div>
            </div>

            <div class="box paddingleft" title="Structural Products Video">
                <a href="about/structural-products-video.html" class="c">
                    <img src="images/home/structural-plant-tour-home.jpg" alt="Structural Products Video" /></a>
                <h2>Structural Products Video</h2>
                <ul>
                    <li title="Structural Products Video"><a href="about/structural-products-video.html">Structural Products Video</a></li>
                </ul>
                <div class="more"><a href="about/structural-products-video.html">Why we’re the faster growing supplier in North America</a></div>
            </div>
            <div class="clear"></div>
        </div>


    </div>
    <!-- End content -->

    <div class="clear"></div>

    <!-- the sidebar -->


    <!--End Wrapper-->

</asp:Content>
