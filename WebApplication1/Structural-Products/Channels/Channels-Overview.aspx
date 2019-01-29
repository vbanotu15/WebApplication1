<%@ Page Title="" Language="C#" MasterPageFile="~/Master/Site.Master" AutoEventWireup="true" CodeBehind="Channels-Overview.aspx.cs" Inherits="WebApplication1.Structural_Products.Channels_Overview" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <link rel="canonical" href="https://www.sdi-structural.com/about/company-overview.aspx" />
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
        .mainheader.structuralproducts {
            background-image: url(../../images/headers/structural-products-header.jpg);
        }
        /*.Items li a:link, .Items li a:visited, .Items li a:active {
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
            background-image: url(../../images/tier2/white-learn-arrow.png);
            background-repeat: none;
            background-position: 5px 15px;
        }*/

        .sideNav ul li a:link, .sideNav ul li a:visited, .sideNav ul li a:active {
            background-image: url(../../images/tier2/arrow-grey.png);
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
            background-image: url(../../images/tier2/download-arrow.gif);
            background-repeat: no-repeat;
            background-position: left top;
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
            background-image: url(../../images/home/small-red-arrow.png);
            background-position: left 10px;
            background-repeat: no-repeat;
        }
    </style>
    <!-- the slider -->

    <div class="mainheader structuralproducts clear">
        <h3 title="Channels">Channels</h3>
    </div>
    <!-- End Header Image -->


    <div class="clear"></div>
    <!-- the content -->
    <div class="content">
        <!-- InstanceBeginEditable name="Area1" -->
        <div class="RightColumn">

            <div id="breadcrumbs">
                <ul>
                    <li><a href="../products-overview.aspx">Product Overview</a></li>
                    <li><a href="channels-overview.aspx" class="current">Channels Overview</a></li>
                </ul>
            </div>
            <div class="clear"></div>

            <div class="col1 margintop1">
                <h4 title="Channels Overview">Channels Overview</h4>
                <p>We produce a wide range of sizes of C Channels and MC Channels to meet your structural steel needs. Channels are commonly used to mount, brace, support, and connect lightweight structural loads in buildings, among their many other applications.</p>
            </div>

            <div class="col1 one">
                <div class="Items">

                    <ul>
                        <li>
                            <img src="../../images/c-channels-square.jpg" alt="C Channels" title="C Channels" class="square">
                            <img src="../../images/c-channels-wide.jpg" alt="C Channels" title="C Channels" class="wide">
                            <div class="copy">
                                <p class="sub">C Channels</p>
                                <p>C Channels consist of a vertical web and top and bottom horizontal flanges. The distinguishing feature of these channels is that the inside flange surface of C Channels have an approximate sixteen and two-thirds percent slope. They are also referred to as American Standard Channels.</p>
                                <a href="c-channels.aspx">Learn more</a>
                            </div>
                            <div class="clear"></div>
                        </li>

                        <li>
                            <img src="../../images/mc-channels-square.jpg" alt="MC Channels" title="MC Channels" class="square">
                            <img src="../../images/mc-channels-wide.jpg" alt="MC Channels" title="MC Channels" class="wide">
                            <div class="copy">
                                <p class="sub">MC Channels</p>
                                <p>Also known as junior channels, MC Channels are similar to C Channels, except they possess flange slopes that are less than that of C Channels.</p>
                                <a href="mc-channels.aspx">Learn more</a>
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
            <div class="sideNav">
                <ul>
                    <li><a href="channels-overview.aspx" title="Overview" class="current">Channels Overview</a></li>
                    <li><a href="c-channels.aspx" title="C Channels" class="">C Channels</a></li>
                    <li><a href="mc-channels.aspx" title="MC Channels" class="">MC Channels</a></li>
                </ul>
            </div>
            <div class="catalog">
                <a href="../../resources/structural-product-guides.aspx" title="Product Guides">Product Guides</a>
            </div>

            <div class="extras">
                <ul>
                    Quick Links:
                    <li><a href="../../resources/price-list.php">Price List</a></li>
                    <li><a href="../../resources/inventory-list.php">Inventory List</a></li>
                    <li><a href="../../resources/rolling-schedule.php">Rolling Schedule</a></li>
                    <li><a href="../../resources/bundle-chart.aspx">Bundle Chart</a></li>
                    <li><a href="../../resources/freight-rate.php">Get Freight Rate</a></li>
                </ul>
            </div>
        </aside>
        <div class="clear"></div>

    </div>
    <!-- End content -->
</asp:Content>
