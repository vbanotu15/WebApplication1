<%@ Page Title="" Language="C#" MasterPageFile="~/Master/Site.Master" AutoEventWireup="true" CodeBehind="company-overview.aspx.cs" Inherits="WebApplication1.About.company_overview" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <link rel="canonical" href="https://www.sdi-structural.com/about/company-overview.html" />
    <!-- InstanceEndEditable -->
    <link href="../Style/css/tier2-sdi-structural.css" rel="stylesheet" type="text/css" />
    <link href='//fonts.googleapis.com/css?family=Montserrat:400,700|Lora:400,400italic,700,700italic|Muli:400,300italic,300' rel='stylesheet' type='text/css' />

    <script src="../JS/modernizr-custom.js"></script>
    <!--Modernizer-->
    <script>
        if (!Modernizr.svg) var i = document.getElementsByTagName("img"), j, y; for (j = i.length; j--;)y = i[j].src, y.match(/svg$/) && (i[j].src = y.slice(0, -3) + "png")</script>
    <!--EndModernizer-->

    <script src="https://code.jquery.com/jquery-1.12.0.min.js"></script>
    <script src="https://code.jquery.com/jquery-migrate-1.2.1.min.js"></script>

    <!--Mobile Navigation-->
    <script>
        $(document).ready(function () {

            $('#menu-toggle').click(function () {
                $('#menu').toggleClass('open');
                e.preventDefault();
            });

        });
    </script>
    <style>
        .sidebar {
            width: 20.390070921985815%; /*230px ÷ 1128px*/
            float: left;
            background-color: #f7f7f7;
            -webkit-box-shadow: -10px 10px 10px rgba(0, 0, 0, 0.1);
            box-shadow: -10px 10px 10px rgba(0, 0, 0, 0.1);
            margin-top: 8px;
            padding-bottom: 15px;
        }

            .sidebar h5 {
                display: none;
                text-indent: -5000px;
            }

        .sideNav ul {
            margin-bottom: 25px;
        }

            .sideNav ul li a:link, .sideNav ul li a:visited, .sideNav ul li a:active {
                display: block;
                font-size: 14px; /*14px ÷ 16px*/
                line-height: 18px; /*18px ÷ 14px*/
                font-family: 'Montserrat', sans-serif;
                font-weight: 400;
                color: #313131; /*Dark Grey*/
                text-decoration: none;
                padding-top: 12px;
                padding-bottom: 12px;
                padding-left: 19.56521739130435%; /*45px ÷ 230px*/
                padding-right: 2.1739130434782608%; /*5px ÷ 230px*/
                border-bottom: 1px solid #d0cfcf;
                background-image: url(../images/tier2/arrow-grey.png);
                background-repeat: no-repeat;
                background-position: 20px 15px;
            }

            .sideNav ul li a:hover {
                color: #c02e39; /*red*/
            }

            .sideNav ul li a.current {
                color: #FFFFFF; /*Dark Grey*/
                background-image: url(../images/tier2/arrow-white.png);
                background-color: #c02e39; /*red*/
                cursor: default;
            }

        Items li p {
            line-height: 22px;
        }

        .Items li p.sub {
            font-size: 18px; /*18px ÷ 16px*/
            padding-bottom: 15px;
            padding-top: 0px;
            line-height: 20px;
        }

        .Items li img.square {
            width: 19.230769230769232%; /*130px ÷ 676px*/
            height: auto;
            border: #C7C7C7;
            border: 3px solid #CECECE;
            display: block;
            float: left;
            margin-right: 1.282051282051282%; /*10px ÷ 780px*/
        }

        .Items li img.wide {
            display: none;
        }

        .Items .copy {
            width: 72.8448275862069%; /*507px ÷ 696px*/
            float: left;
        }

        .Items li a:link, .Items li a:visited, .Items li a:active {
            width: 145px;
            color: #FFFFFF;
            font-size: 16px; /*16px ÷ 16px*/
            font-family: 'Montserrat', sans-serif;
            font-weight: 400;
            font-style: italic;
            text-decoration: none;
            display: block;
            padding-top: 15px;
            padding-bottom: 15px;
            padding-left: 25px;
            background-color: #c02e39; /*red*/
            border-radius: 10px;
            background-image: url(../images/tier2/white-learn-arrow.png);
            background-repeat: none;
            background-position: 5px 15px;
        }

        .Items li a:hover, .Items li a:focus {
            background-color: #B1B1B2;
        }

        .col2 {
            width: 60%; /*300px ÷ 850px*/
            float: none;
            clear: both;
        }

        .catalog a:link, .catalog a:visited, .catalog a:active {
            display: block;
            font-size: 16px; /*16px ÷ 16px*/
            font-family: 'Montserrat', sans-serif;
            font-weight: 400;
            color: #FFFFFF; /*Dark Grey*/
            background-color: #505050; /*Dark Grey*/
            text-decoration: none;
            padding-top: 12px;
            padding-bottom: 11px;
            padding-left: 23.91304347826087%; /*55px ÷ 230px*/
            padding-right: 2.1739130434782608%; /*5px ÷ 230px*/
            border-bottom: 1px solid #d0cfcf;
            background-image: url(../images/tier2/download-arrow.gif);
            background-repeat: no-repeat;
            background-position: left top;
        }

        .catalog a:hover {
            color: #979797;
        }

        .catalog a.current {
            color: #979797;
        }

        .mainheader.company {
            background-image: url(../images/headers/company-header.jpg);
        }
    </style>

    <h1>Steel Dynamics Structural Rail Division</h1>
    <div id="wrapper">
        <a id="top"></a>

        <!-- the slider -->

        <div class="mainheader company clear">
            <h3 title="About">About</h3>
        </div>
        <!-- End Header Image -->


        <div class="clear"></div>
        <!-- the content -->
        <div class="content">
            <!-- InstanceBeginEditable name="Area1" -->
            <div class="RightColumn">
                <div class="col1 margintop1">
                    <h4 title="About Steel Dynamics Structural and Rail Division">About Steel Dynamics Structural and Rail Division</h4>
                    <p>Commissioned in 2002 and located in Columbia City, Indiana, we are SDI's third-largest steel operation and proudly serve the structural and rail markets.</p>
                    <p>Our structural products are used primarily in construction: commercial, industrial, and institutional buildings including skyscrapers, hospitals, airport terminals, stadiums, parking garages, office buildings, and distribution centers. They are also used in bridges, energy projects such as bio-diesel and ethanol plants, and in the manufacturing of truck, trailer, and RV frames.</p>
                    <p>In 2009, we entered the rail market and have never looked back, shipping our one millionth ton of rail in 2015. Due to our unique capabilities, we are the only mill in the Western Hemisphere that produces rail in lengths of 320 feet. Our rail products are used in railway track by Class 1 railroads, short and commuter lines, and industrial plants. With the addition of a state-of-the-art SDI Research and Development Center, we are actively pursuing product development initiatives to bring the next generation of quality rail products to market.</p>
                </div>

                <div class="col1 one">
                    <div class="Items">

                        <ul>
                            <li>
                                <img src="../images/eaf-charging-square.jpg" alt="EAF Charging" title="EAF Charging" class="square">
                                <img src="../images/eaf-charging-wide.jpg" alt="EAF Charging" title="EAF Charging" class="wide">
                                <div class="copy">
                                    <p class="sub">Capabilities</p>
                                    <p>Discover how our mill is uniquely designed to meet your steel product needs, resulting in optimized project cost and performance.</p>
                                    <a href="capabilities.aspx">Learn more</a>
                                </div>
                                <div class="clear"></div>
                            </li>

                            <li>
                                <img src="../images/management-square.jpg" alt="Our Management" title="Our Management" class="square">
                                <img src="../images/management-wide.jpg" alt="Our Management" title="Our Management" class="wide">
                                <div class="copy">
                                    <p class="sub">Our Management</p>
                                    <p>We value your business and are determined to provide you with the best products, with the best service and support. Meet the people who help lead our organization to deliver on that promise.</p>
                                    <a href="management.aspx">Learn more</a>
                                </div>
                                <div class="clear"></div>
                            </li>

                            <li>
                                <img src="../images/safety-square.jpg" alt="Safety" title="Safety" class="square">
                                <img src="../images/safety-wide.jpg" alt="Safety" title="Safety" class="wide">
                                <div class="copy">
                                    <p class="sub">Safety</p>
                                    <p>We have a company-wide commitment to safety and continuously strive to ensure the safety of our people throughout our division.</p>
                                    <a href="safety.aspx">Learn more</a>
                                </div>
                                <div class="clear"></div>
                            </li>

                            <li>
                                <img src="../images/environment-square.jpg" alt="Environment" title="Environment" class="square">
                                <img src="../images/environment-wide.jpg" alt="Environment" title="Environment" class="wide">
                                <div class="copy">
                                    <p class="sub">Environment</p>
                                    <p>Steel Dynamics is one the largest steel recyclers in North America, sourcing 96% of our scrap from within a 500 mile radius. Our products can be used toward LEED credits.</p>
                                    <a href="environment.aspx">Learn more</a>
                                </div>
                                <div class="clear"></div>
                            </li>

                            <li>
                                <img src="../images/culture-2-mill-workers-square.jpg" alt="Culture" title="Culture" class="square">
                                <img src="../images/culture-2-mill-workers-wide.jpg" alt="Culture" title="Culture" class="wide">
                                <div class="copy">
                                    <p class="sub">Culture</p>
                                    <p>We are proud of our people and of the ways we conduct ourselves as we strive to make a difference in the lives of our customers.</p>
                                    <a href="culture.aspx">Learn more</a>
                                </div>
                                <div class="clear"></div>
                            </li>

                            <li>
                                <img src="../images/culture-square.jpg" alt="Community" title="Community" class="square">
                                <img src="../images/culture-wide.jpg" alt="Community" title="Community" class="wide">
                                <div class="copy">
                                    <p class="sub">Community</p>
                                    <p>As a leading employer and contributor to the northeastern Indiana economy, we believe in vitally supporting the communities where we work and live.</p>
                                    <a href="community.aspx">Learn more</a>
                                </div>
                                <div class="clear"></div>
                            </li>

                            <li>
                                <img src="../images/video-square.jpg" alt="Community" title="Community" class="square">
                                <img src="../images/video-wide.jpg" alt="Community" title="Community" class="wide">
                                <div class="copy">
                                    <p class="sub">Structural Products Video</p>
                                    <a href="structural-products-video.aspx">Learn More</a>
                                </div>
                                <div class="clear"></div>
                            </li>

                            <li>
                                <img src="../images/sdi-ships-rail-square.jpg" alt="News & Events" title="News & Events" class="square">
                                <img src="../images/sdi-ships-rail-wide.jpg" alt="News & Events" title="News & Events" class="wide">
                                <div class="copy">
                                    <p class="sub">News &amp; Events</p>
                                    <p>Keep current with all things related to Steel Dynamics Structural and Rail Division. Here you will find the latest products, new developments, upcoming events and achievements.</p>
                                    <a href="news-and-events.aspx">Go to news</a>
                                </div>
                                <div class="clear"></div>
                            </li>

                        </ul>
                    </div>
                </div>

                <div class="top"><a href="#top">TOP</a></div>
            </div>
            <!-- InstanceEndEditable -->

            <!-- the sidebar -->
            <aside class="sidebar">
                <h5>Side Navigation</h5>
                <div class="sideNav" style="background-image: url('../Images/tier2/arrow-grey.png'); background-repeat: no-repeat">
                    <ul>
                        <li><a href="../About/company-overview.aspx" title="About" class="current">About</a></li>
                        <li><a href="capabilities.aspx" title="Capabilities" class="">Capabilities</a></li>
                        <li><a href="management.aspx" title="Leadership" class="">Our Management</a></li>
                        <li><a href="culture.aspx" title="Culture" class="">Culture</a></li>
                        <li><a href="safety.aspx" title="Safety" class="">Safety</a></li>
                        <li><a href="environment.aspx" title="Environment" class="">Environment</a></li>
                        <li><a href="community.aspx" title="Community" class="">Community</a></li>
                        <li><a href="structural-products-video.aspx" title="Video" class="">Video</a></li>
                        <li><a href="news-and-events.aspx" title="News & Events" class="">News &amp; Events</a></li>
                        <li><a href="web-policy.aspx" title="Web Policy" class="">Web Policy</a></li>
                    </ul>
                </div>
                <div class="catalog">
                    <a href="../resources/structural-product-guides.aspx" title="Product Guides">Product Guides</a>
                </div>
                <div class="extras">
                    <ul>
                        Quick Links:
                            <li><a href="../resources/price-list.aspx">Price List</a></li>
                        <li><a href="../resources/inventory-list.aspx">Inventory List</a></li>
                        <li><a href="../resources/rolling-schedule.aspx">Rolling Schedule</a></li>
                        <li><a href="../resources/bundle-chart.aspx">Bundle Chart</a></li>
                        <li><a href="../resources/freight-rate.aspx">Get Freight Rate</a></li>
                    </ul>
                </div>
            </aside>
            <div class="clear"></div>

        </div>
        <!-- End content -->



        <div class="spacer25 clear"></div>
    </div>
    <!--End Wrapper-->

</asp:Content>
