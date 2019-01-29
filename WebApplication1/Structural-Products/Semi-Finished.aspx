<%@ Page Title="" Language="C#" MasterPageFile="~/Master/Site.Master" AutoEventWireup="true" CodeBehind="Semi-Finished.aspx.cs" Inherits="WebApplication1.Structural_Products.Semi_Finished" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <link rel="canonical" href="https://www.sdi-structural.com/about/company-overview.html" />
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
            /*/*/ * /*/*/ *background-position: 20px 15px;
            * /*/*/ * /*/*/
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

        .col1 ul.bullets li {
            display: block;
            font-size: 15px; /*15px ÷ 16px*/
            line-height: 20px; /*20px ÷ 15px*/
            font-family: 'Muli', sans-serif;
            font-weight: 400;
            color: #313131;
            padding-bottom: 8px;
            padding-left: 15px;
            background-image: url(../images/tier2/grey-bullet.png);
            background-repeat: no-repeat;
            background-position: 0px 12px;
            padding-top: 8px;
        }
    </style>

    <div class="mainheader structuralproducts clear">
        <h3 title="Structural Products">Structural Products</h3>
    </div>
    <div class="clear"></div>
    <!-- the content -->
    <div class="content">
        <!-- InstanceBeginEditable name="Area1" -->
        <div class="RightColumn">

            <div id="breadcrumbs">
                <ul>
                    <li><a href="products-overview.aspx">Products Overview</a></li>
                    <li><a href="semi-finished.aspx" class="current">Semi-Finished Blooms</a></li>
                </ul>
            </div>
            <div class="clear"></div>

            <div class="col1 margintop1">
                <img src="../images/semi-finished-bloom-main.jpg" alt="Semi-Finished Blooms" title="Semi-Finished Blooms" class="main" />

                <h4 title="Semi-Finished Blooms">Semi-Finished Blooms</h4>
                <p>Steel Dynamics Structural and Rail Division produces Semi-finished blooms that can be used for the rolling of structural shapes, rails, rods, seamless pipes, among their other uses.</p>

                <div class="spacer25"></div>
                <h5 title="Blooms available for sale:">Blooms available for sale:</h5>

                <ul class="bullets">
                    <li>7x7 in.</li>
                    <li>8x8 in.</li>
                    <li>8x10 in.</li>
                    <li>10x14 in.</li>
                    <li class="nobullet">*Other sizes potentially available</li>
                </ul>

                <ul class="bullets margintop1">
                    <li class="nobullet bold">For more information, contact:</li>
                    <li class="nobullet bold">Dave Tokos</li>
                    <li class="nobullet">Product Manager, Strategic Sales</li>
                    <li class="nobullet"><a href="mailto:dave.tokos@steeldynamics.com">dave.tokos@steeldynamics.com</a></li>
                    <li class="nobullet"><a href="tel:+12606258718" class="tel">Phone: 260-625-8718</a></li>
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
                    <li><a href="products-overview.aspx" title="Overview" class="">Products Overview</a></li>
                    <li><a href="beams/structural-beams-overview.aspx" title="Beams" class="">Beams</a></li>
                    <li><a href="h-pile.aspx" title="H-Pile" class="">H-Pile</a></li>
                    <li><a href="channels/channels-overview.aspx" title="Channels" class="">Channels</a></li>
                    <li><a href="angles.aspx" title="H-Pile" class="Angles">Angles</a></li>
                    <li><a href="semi-finished.aspx" title="Semi-Finished" class="current">Semi-Finished</a></li>
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



</asp:Content>

