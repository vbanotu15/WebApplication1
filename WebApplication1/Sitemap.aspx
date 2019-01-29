<%@ Page Title="" Language="C#" MasterPageFile="~/Master/Site.Master" AutoEventWireup="true" CodeBehind="Sitemap.aspx.cs" Inherits="WebApplication1.Sitemap" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <link rel="canonical" href="https://www.sdi-structural.com/index.html" />
    <link href='//fonts.googleapis.com/css?family=Montserrat:400,700|Lora:400,400italic,700,700italic|Muli:400,300italic,300' rel='stylesheet' type='text/css' />
    <script src="/JS/modernizr-custom.js"></script>
    <script src="../js/jquery.floatThead.min.js"></script>
    <script src="../js/jquery.tablesorter.min.js"></script>
    <script src="../js/global.js">
    </script>
    <script>
        if (!Modernizr.svg) var i = document.getElementsByTagName("img"), j, y; for (j = i.length; j--;)y = i[j].src, y.match(/svg$/) && (i[j].src = y.slice(0, -3) + "png")</script>

    <link href="/Style/css/tier2-sdi-structural.css" rel="stylesheet" type="text/css">
    <link href="../Style/css/tools-sdi.css" rel="stylesheet" type="text/css">
    <link href="../Style/css/form-sdi.css" rel="stylesheet" type="text/css">
    <link href='//fonts.googleapis.com/css?family=Montserrat:400,700|Lora:400,400italic,700,700italic|Muli:400,300italic,300' rel='stylesheet' type='text/css'>
    <script src="../js/modernizr-custom.js"></script>
    <link rel="stylesheet" href="../Style/css/tables.css" />

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
            background-image: url(../images/tier2/small-red-arrow.png);
            background-repeat: no-repeat;
            background-position: 0px 1px;
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

        #breadcrumbs ul li a:link, #breadcrumbs ul li a:active, #breadcrumbs ul li a:visited {
            display: block;
            color: #313131;
            text-decoration: none;
            background-image: url(../images/tier2/small-red-arrow.png);
            background-repeat: no-repeat;
            background-position: 0px 1px;
            padding-left: 25px;
        }

        body {
            background-image: url(../images/body.jpg);
    </style>
    <div class="mainheader company clear">
        <h3 title="About">About</h3>
    </div>
    <div class="clear"></div>
    <!-- the content -->
    <div class="content">
        <!-- InstanceBeginEditable name="Area1" -->
        <div class="RightColumn">

            <div class="col1 margintop1">
                <h4 title="Site Map">Site Map</h4>

                <ul class="bullets margintop1">
                    <li class="nobullet"><a href="https://www.sdi-structural.com/">www.sdi-structural.com</a></li>
                    <li class="nobullet"><a href="index.aspx">Home</a></li>
                </ul>

                <ul class="bullets margintop1">
                    <h5>About</h5>
                    <li class="nobullet"><a href="about/company-overview.aspx">About Overview</a></li>
                    <li class="nobullet"><a href="about/capabilities.aspx">Capabilities</a></li>
                    <li class="nobullet"><a href="about/management.aspx">Our Management</a></li>
                    <li class="nobullet"><a href="about/culture.aspx">Culture</a></li>
                    <li class="nobullet"><a href="about/safety.aspx">Safety</a></li>
                    <li class="nobullet"><a href="about/environment.aspx">Environment</a></li>
                    <li class="nobullet"><a href="about/community.aspx">Community</a></li>
                    <li class="nobullet"><a href="about/structural-products-video.aspx">Structural Products Video</a></li>
                    <li class="nobullet"><a href="about/news-and-events.aspx">News &amp; Events</a></li>
                    <li class="nobullet"><a href="about/web-policy.aspx">Web Policy</a></li>
                </ul>

                <ul class="bullets margintop1">
                    <h5>Structural Products</h5>
                    <li class="nobullet"><a href="structural-products/products-overview.aspx">Steel Dynamics Structural Products</a></li>
                    <li class="nobullet"><a href="structural-products/beams/structural-beams-overview.aspx">Beams Overview</a></li>
                    <li class="nobullet indent"><a href="structural-products/beams/wide-flange-beams.aspx">Wide Flange Beams</a></li>
                    <li class="nobullet indent"><a href="structural-products/beams/standard-i-beams.aspx">Standard I-Beams</a></li>
                    <li class="nobullet indent"><a href="structural-products/beams/manufactured-housing.aspx">Manufactured Housing Beams</a></li>

                    <li class="nobullet"><a href="structural-products/h-pile.aspx">H-Pile</a></li>

                    <li class="nobullet"><a href="structural-products/channels/channels-overview.aspx">Channels Overview</a></li>
                    <li class="nobullet indent"><a href="structural-products/channels/c-channels.aspx">C Channels</a></li>
                    <li class="nobullet indent"><a href="structural-products/channels/mc-channels.aspx">MC Channels</a></li>

                    <li class="nobullet"><a href="structural-products/angles.aspx">Angles</a></li>

                    <li class="nobullet"><a href="structural-products/semi-finished.aspx">Semi-Finished Blooms</a></li>
                </ul>

                <ul class="bullets margintop1">
                    <h5>Resources</h5>
                    <li class="nobullet"><a href="resources/resources-overview.aspx">Resources Overview</a></li>
                    <li class="nobullet"><a href="resources/price-list.aspx">Price List</a></li>
                    <li class="nobullet"><a href="resources/inventory-list.aspx">Inventory List</a></li>
                    <li class="nobullet"><a href="resources/rolling-schedule.aspx">Rolling Schedule</a></li>
                    <li class="nobullet"><a href="resources/bundle-chart.aspx">Bundle Chart</a></li>
                    <li class="nobullet"><a href="resources/freight-rate.aspx">Get Freight Rate</a></li>
                    <li class="nobullet"><a href="pdfs/Credit-Application.pdf" target="_blank">Credit Application</a></li>
                    <li class="nobullet"><a href="pdfs/Standard-Terms-and-Conditions-US.pdf" target="_blank">Terms and Conditions</a></li>
                    <li class="nobullet"><a href="pdfs/Structural-Claim-Form.pdf" target="_blank">Claim Forms</a></li>
                    <li class="nobullet"><a href="pdfs/SDI-Recycled-Content-Letter.pdf" target="_blank">Leed Letter</a></li>
                    <li class="nobullet"><a href="pdfs/d-ABS.pdf" target="_blank">ABS Certificate</a></li>
                    <li class="nobullet"><a href="pdfs/d-ISO-9001-2008.pdf" target="_blank">ISO 9001:2008</a></li>
                    <li class="nobullet"><a href="pdfs/Get-Safety-Data-Sheet.pdf" target="_blank">MSDS</a></li>
                    <li class="nobullet"><a href="resources/structural-product-guides.aspx">Products Guides</a></li>
                </ul>

                <ul class="bullets margintop1">
                </ul>

                <ul class="bullets margintop1">
                    <h5>Contact Us</h5>
                    <li class="nobullet"><a href="contact/structural-contact-us.aspx">Contact Us</a></li>
                    <li class="nobullet"><a href="contact/structural-sales-team.aspx">Sales Team</a></li>
                    <li class="nobullet"><a href="contact/structural-request-quote.aspx">Request a Quote</a></li>
                    <li class="nobullet"><a href="contact/register-mysdi.aspx">Register for MySDI</a></li>
                    <li class="nobullet"><a href="contact/structural-driving-directions.aspx">Driving Directions</a></li>
                    <li class="nobullet"><a href="contact/structural-careers.aspx">Careers</a></li>
                    <li class="nobullet"><a href="contact/structural-facilities.aspx">SDI Facilities</a></li>
                </ul>

                <ul class="bullets margintop1">
                    <li class="nobullet"><a href="mysdi/mysdi-login.aspx">MySDI Login</a></li>
                </ul>

            </div>

            <div class="top"><a href="#top">TOP</a></div>
        </div>
        <!-- InstanceEndEditable -->

        <!-- the sidebar -->
        <aside class="sidebar">
            <h5>Side Navigation</h5>
            <div class="sideNav">
                <ul>
                    <li><a href="about/company-overview.aspx" title="About" class="">About</a></li>
                    <li><a href="about/capabilities.aspx" title="Capabilities" class="">Capabilities</a></li>
                    <li><a href="about/management.aspx" title="Leadership" class="">Our Management</a></li>
                    <li><a href="about/culture.aspx" title="Culture" class="">Culture</a></li>
                    <li><a href="about/safety.aspx" title="Safety" class="">Safety</a></li>
                    <li><a href="about/environment.aspx" title="Environment" class="">Environment</a></li>
                    <li><a href="about/community.aspx" title="Community" class="">Community</a></li>
                    <li><a href="about/structural-products-video.aspx" title="Video" class="">Video</a></li>
                    <li><a href="about/news-and-events.aspx" title="News & Events" class="">News &amp; Events</a></li>
                    <li><a href="about/web-policy.aspx" title="Web Policy" class="">Web Policy</a></li>
                </ul>
            </div>
            <div class="catalog">
                <a href="resources/structural-product-guides.aspx" title="Product Guides">Product Guides</a>
            </div>
            <div class="extras">
                <ul>
                    Quick Links:
                    <li><a href="resources/price-list.aspx">Price List</a></li>
                    <li><a href="resources/inventory-list.aspx">Inventory List</a></li>
                    <li><a href="resources/rolling-schedule.aspx">Rolling Schedule</a></li>
                    <li><a href="resources/bundle-chart.aspx">Bundle Chart</a></li>
                    <li><a href="resources/freight-rate.aspx">Get Freight Rate</a></li>
                </ul>
            </div>
        </aside>
        <div class="clear"></div>

    </div>
    <!-- End content -->
    <!--Mobile Navigation-->
    <script>
        $(document).ready(function () {

            $('#menu-toggle').click(function () {
                $('#menu').toggleClass('open');
                e.preventDefault();
            });

        });
    </script>
    <!--Add Scripts here-->
    <!-- InstanceBeginEditable name="Scripts" -->
    <script src="/js/enquire.min.js"></script>
    <script src="/js/jquery.floatThead.min.js"></script>
    <script src="/js/jquery.tablesorter.min.js"></script>
    <script src="/js/global.js"></script>
    <div>
        <script>
            $(function () {
                var $toggles = $('.mysdiNav').find('a');

                var $activeToggle = null;
                var $activePanel = null;

                $toggles.each(function (index) {
                    var $toggle = $(this);
                    var href = $toggle.attr('href');
                    var $panel = $(href);
                    $toggle.data('$panel', $panel);

                    if ($activePanel === null) {
                        $activePanel = $panel;
                        $activeToggle = $toggle;
                    }

                    $toggle.on('click', function (e) {
                        e.preventDefault();
                        var $toggle = $(this);

                        $activeToggle.removeClass('current');
                        $activePanel.hide();

                        $activeToggle = $toggle.addClass('current');
                        $activePanel = $toggle.data('$panel').show();
                    });
                });


            })
        </script>
    </div>
</asp:Content>
