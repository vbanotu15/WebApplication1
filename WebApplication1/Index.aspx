<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="WebApplication1.Index" %>

<!DOCTYPE html>

<html id="test">
<head runat="server">
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width,initial-scale=1.0">
    <title>Structural Steel – Beams and Channel Supply – Steel Dynamics</title>
    <link rel="canonical" href="https://www.sdi-structural.com/index.html">
    <link href="Style/css/main-sdi-structural.css" rel="stylesheet" type="text/css">
    <link href="Style/css/nivo-slider-sdi.css" rel="stylesheet" type="text/css">
    <link href="//fonts.googleapis.com/css?family=Montserrat:400,700|Lora:400,400italic,700,700italic|Muli:400,300italic,300" rel="stylesheet" type="text/css">
    <!--[if lt IE 9]>
<script src="http://html5shiv.googlecode.com/svn/trunk/html5.js"></script>
<![endif]-->
    <script src="js/modernizr-custom.js"></script>
    <link rel="shortcut icon" href="https://www.sdi-structural.com/favicon.ico">
</head>

<body>
    <form id="form1" runat="server">
        <h1>Steel Dynamics Structural Rail Division</h1>
        <div id="wrapper">
            <!-- the header and navigation -->
            <header>
                <div class="logowrapper">
                    <div class="logocontainer">
                        <div class="logo" title="Steel Dynamics Structural and Rail Division">
                            <a href="../index.aspx">
                                <img src="Images/home/steel-dynamics-rail-division-logo.svg" alt="Steel Dynamics Structural and Rail Division" /></a>                            
                        </div>
                    </div>

                    <div class="topnav">
                        <ul>
                            <li><a href="mysdi/mysdi-login.aspx">MySDI Login</a></li>
                        </ul>
                    </div>

                    <div class="clear"></div>
                </div>

                <nav class="nav">
                    <h2>Main Navigation</h2>
                    <a id="menu-toggle" class="anchor-link" href="#">Menu</a>
                    <ul class="simple-toggle" id="menu">
                        <li><a href="about/company-overview.aspx">About</a></li>
                        <li><a href="structural-products/products-overview.aspx">Structural Products</a></li>
                        <li><a href="resources/resources-overview.aspx">Resources</a></li>
                        <li><a href="contact/structural-contact-us.aspx">Contact</a></li>
                        <li><a href="contact/structural-request-quote.aspx">Request Quote</a></li>
                    </ul>
                </nav>
            </header>

            <!-- the slider -->

            <div class="slidercontainer clear">
                <div class="slider-wrapper theme-default">
                    <div class="slider nivoSlider desktop">
                        <img src="images/home/sliders/sdi-structural-h-pile-desktop.jpg" title="#htmlcaption1" alt="Structural Products" />
                        <img src="images/home/sliders/sdi-structural-shipping-desktop.jpg" title="#htmlcaption2" alt="Stacks of beams" />
                        <img src="images/home/sliders/sdi-structural-rolling-desktop.jpg" title="#htmlcaption3" alt="Steel" />
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

                <div class="additionalNav margintop1">
                    <ul>
                        <li>
                            <h3 class="smaller">Quick Links:</h3>
                        </li>
                        <li><a href="resources/price-list.aspx">Price List</a></li>
                        <li><a href="resources/inventory-list.php">Inventory List</a></li>
                        <li><a href="resources/rolling-schedule.php">Rolling Schedule</a></li>
                        <li><a href="resources/bundle-chart.html">Bundle Chart</a></li>
                        <li><a href="resources/freight-rate.php">Get Freight Rate</a></li>
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
            <!-- the footer -->
            <footer>
                <div class="LeftColumn">
                    <ul>
                        <li><a href="about/web-policy.html">Web Policy/Fwd Look</a></li>
                        <li><a href="sitemap.html">Site Map</a></li>
                    </ul>
                </div>

                <div class="RightColumn">
                    <a href="http://www.steeldynamics.com/" target="_blank">
                        <img src="images/home/sdi-steel-dynamics-logo.png" alt="SDI Steel Dynamics, Inc" title="SDI Steel Dynamics, Inc" /></a>
                </div>
                <div class="clear"></div>

                <div class="LeftColumn">
                    <p>
                        <script type="text/javascript">
                            copyright = new Date();
                            update = copyright.getFullYear();
                            document.write("© " + update);
                        </script>
                        Steel Dynamics, Inc.    &nbsp;&nbsp;All rights reserved.
                    </p>
                </div>


                <div class="clear"></div>
            </footer>
            <div class="spacer25 clear"></div>
        </div>
        <!--End Wrapper-->

        <!--Modernizer-->
        <script>
            if (!Modernizr.svg) var i = document.getElementsByTagName("img"), j, y; for (j = i.length; j--;)y = i[j].src, y.match(/svg$/) && (i[j].src = y.slice(0, -3) + "png")</script>
        <!--EndModernizer-->
        <script src="https://code.jquery.com/jquery-1.12.0.min.js"></script>
        <script src="https://code.jquery.com/jquery-migrate-1.2.1.min.js"></script>

        <!--NivoSlider-->
        <script type="text/javascript" src="js/jquery-1.9.0.min.js"></script>
        <script type="text/javascript" src="js/jquery.nivo.slider.min.js"></script>

        <!--Mobile Navigation-->
        <script>
            $(document).ready(function () {

                $('#menu-toggle').click(function () {
                    $('#menu').toggleClass('open');
                    e.preventDefault();
                });

            });
        </script>

        <!--Slideshow Script-->
        <script type="text/javascript">
            $(window).load(function () {
                $('.slider').nivoSlider({
                    effect: 'fade', // Specify sets like: 'fold,fade,sliceDown'
                    directionNav: false,// Next & Prev navigation
                    controlNav: false, // 1,2,3... navigation
                    pauseOnHover: false, // Stop animation while hovering
                    slices: 15, // For slice animations
                    animSpeed: 500, // Slide transition speed
                    pauseTime: 5000, // How long each slide will show
                });
            });
        </script>
        <!--End Slideshow Script-->

    </form>
</body>

</html>
