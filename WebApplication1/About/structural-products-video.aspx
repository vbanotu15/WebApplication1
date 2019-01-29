<%@ Page Title="" Language="C#" MasterPageFile="~/Master/Site.Master" AutoEventWireup="true" CodeBehind="structural-products-video.aspx.cs" Inherits="WebApplication1.About.Video" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <script>
        if (!Modernizr.svg) var i = document.getElementsByTagName("img"), j, y; for (j = i.length; j--;)y = i[j].src, y.match(/svg$/) && (i[j].src = y.slice(0, -3) + "png")</script>
    <!--EndModernizer-->

    <script src="https://code.jquery.com/jquery-1.12.0.min.js"></script>
    <script src="https://code.jquery.com/jquery-migrate-1.2.1.min.js"></script>

    <link rel="canonical" href="https://www.sdi-structural.com/about/structural-products-video.html">
    <script src="//content.jwplatform.com/libraries/8k6phncY.js"></script>
    <!-- InstanceEndEditable -->
    <link href="../Style/css/tier2-sdi-structural.css" rel="stylesheet" type="text/css">
    <link href='//fonts.googleapis.com/css?family=Montserrat:400,700|Lora:400,400italic,700,700italic|Muli:400,300italic,300' rel='stylesheet' type='text/css'>
    <script src="../js/modernizr-custom.js"></script>
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
         .mainheader.company {
            background-image: url(../images/headers/company-header.jpg);
        }
        body {
    background-image: url(../images/body.jpg);
    }

        .sideNav ul li a:link, .sideNav ul li a:visited, .sideNav ul li a:active {
            background-image: url(../images/tier2/arrow-grey.png);
            background-repeat: no-repeat;
            display: block;
            font-size: 14px; /*14px ÷ 16px*/
            line-height: 18px; /*18px ÷ 14px*/
            font-family: 'Montserrat', sans-serif;
            font-weight: 400;
            /*color: #313131; Dark Grey*/
            text-decoration: none;
            padding-top: 12px;
            padding-bottom: 12px;
            padding-left: 19.56521739130435%; /*45px ÷ 230px*/
            padding-right: 2.1739130434782608%; /*5px ÷ 230px*/
            border-bottom: 1px solid #d0cfcf;
            background-position: 20px 15px;
        }

        .catalog a:link, .catalog a:visited, .catalog a:active {
            display: block;
            font-size: 16px; /*16px ÷ 16px*/
            font-family: 'Montserrat', sans-serif;
            font-weight: 400;
            /* color: #FFFFFF; Dark Grey*/
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
         .Items li a:link, .Items li a:visited, .Items li a:active {
            width: 145px;
            color: #FFFFFF;
            font-size: 16px;
            font-family: 'Montserrat', sans-serif;
            font-weight: 400;
            font-style: italic;
            text-decoration: none;
            display: block;
            padding-top: 15px;
            padding-bottom: 15px;
            padding-left: 25px;
            background-color: #c02e39;
            border-radius: 10px;
            background-image: url(../images/tier2/white-learn-arrow.png);
            background-repeat: none;
            background-position: 5px 15px;
        }

        #breadcrumbs ul li a:link, #breadcrumbs ul li a:active, #breadcrumbs ul li a:visited {
            display: block;
            color: #313131;
            text-decoration: none;
            background-image: url(../../images/tier2/small-red-arrow.png);
            background-repeat: no-repeat;
            background-position: 0px 1px;
            padding-left: 25px;
        }

        #breadcrumbs ul li a.current {
            color: #c02e39;
            cursor: default;
        }
    </style>


    <div class="mainheader company clear">
        <h3 title="About">About</h3>
    </div>
    <div class="clear"></div>

    <div class="content">
        <div class="RightColumn">
            <div id="breadcrumbs">
                <ul>
                    <li><a href="company-overview.aspx">About</a></li>
                    <li><a href="structural-products-video.aspx">Structural Products Video</a></li>
                </ul>
            </div>
            <div class="clear"></div>

            <div class="col1 margintop1">
                <h4 title="Structural Products Video">Structural Products Video</h4>

                <div class="videoContainer">
                    <div id="Structural">
                        <p>Loading the player...</p>
                    </div>
                    <script type="text/javascript">
                        var playerInstance = jwplayer("Structural");
                        playerInstance.setup({
                            image: "https://www.sdi-structural.com/images/poster/sdi-structural-poster.jpg",
                            sources: [{
                                file: "https://ea5d3a20901097a22510-d627137848e5ef9bc10c01d9422ba82a.ssl.cf2.rackcdn.com/SDI_StructuralProcessVideo-Mobile.mp4",
                                label: "850p SD",
                                "default": "true"
                            }, {
                                file: "https://ea5d3a20901097a22510-d627137848e5ef9bc10c01d9422ba82a.ssl.cf2.rackcdn.com/SDI_StructuralProcessVideo-HD.mp4",
                            }],
                            sharing: {
                                heading: "Share Structural Products Video",
                                link: "https://www.sdi-structural.com/about/structural-products-video.aspx"
                            }
                        });
                    </script>

                </div>
                <!--End Video Container-->

                <div class="clear spacer25"></div>
            </div>

            <div class="top"><a href="#top">TOP</a></div>
        </div>
        <!-- InstanceEndEditable -->

        <!-- the sidebar -->
        <aside class="sidebar">
            <h5>Side Navigation</h5>
            <div class="sideNav">
                <ul>
                    <li><a href="company-overview.aspx" title="About" class="">About</a></li>
                    <li><a href="capabilities.aspx" title="Capabilities" class="">Capabilities</a></li>
                    <li><a href="management.aspx" title="Leadership" class="">Our Management</a></li>
                    <li><a href="culture.aspx" title="Culture" class="">Culture</a></li>
                    <li><a href="safety.aspx" title="Safety" class="">Safety</a></li>
                    <li><a href="environment.aspx" title="Environment" class="">Environment</a></li>
                    <li><a href="community.aspx" title="Community" class="">Community</a></li>
                    <li><a href="structural-products-video.aspx" title="Video" class="current">Video</a></li>
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


</asp:Content>
