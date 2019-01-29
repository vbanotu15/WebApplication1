<%@ Page Title="" Language="C#" MasterPageFile="~/Master/Site.Master" AutoEventWireup="true" CodeBehind="Structural-Beams-Overview.aspx.cs" Inherits="WebApplication1.Structural_Products.beams.Structural_Beams_Overview" %>

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

        .Items li a:link, .Items li a:visited, .Items li a:active {
            color: #c02e39; /*red*/
            font-size: 15px; /*15px ÷ 16px*/
            font-family: 'Montserrat', sans-serif;
            font-weight: 400;
            font-style: italic;
            text-decoration: none;
            background-image: url(../../images/tier2/small-red-arrow.png);
            background-position: 0px 7px;
            background-repeat: no-repeat;
            display: block;
            padding-top: 5px;
            padding-left: 20px;
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
    </style>
    <div class="mainheader structuralproducts clear">
        <h3 title="Beams">Beams</h3>
    </div>
    <div class="clear"></div>
    <div class="content">
        <div class="RightColumn">
            <div id="breadcrumbs">
                <ul>
                    <li><a href="../products-overview.aspx">Product Overview</a></li>
                    <li><a href="../../beams-overview.aspx" class="current">Beams Overview</a></li>
                </ul>
            </div>
            <div class="clear"></div>
            <div class="col1 margintop1">
                <h4 title="Structural Beams Overview">Structural Beams Overview</h4>
                <p>Since 2002, Steel Dynamics has been a world-class producer of hot-rolled structural steel beams. Throughout the United States and Canada, our beams have consistently demonstrated our commitment to producing high-quality steel products. We are the fastest growing supplier of wide flange beams in North America.</p>
            </div>
            <div class="col1 one">
                <div class="Items">
                    <ul>
                        <li>
                            <img src="../../images/wide-flange-beam-square.jpg" alt="Wide Flange Beams" title="Wide Flange Beams" class="square">
                            <img src="../../images/wide-flange-beam-wide.jpg" alt="Wide Flange Beams" title="Wide Flange Beams" class="wide">
                            <div class="copy">
                                <p class="sub">Wide Flange Beams</p>
                                <p>Wide Flange Beams are doubly-symmetric shapes in which the flange surfaces are substantially parallel. They are commonly referred to as W or H Beams.</p>
                                <a href="wide-flange-beams.aspx">Learn more</a>
                            </div>
                            <div class="clear"></div>
                        </li>

                        <li>
                            <img src="../../images/standard-i-beams-square.jpg" alt="Standard I-Beams" title="Standard I-Beams" class="square">
                            <img src="../../images/standard-i-beams-wide.jpg" alt="Standard I-Beams" title="Standard I-Beams" class="wide">
                            <div class="copy">
                                <p class="sub">Standard I-Beams</p>
                                <p>Standard I-Beams also known as S-Beams, I-Beams, Junior Beams, and American Standard Beams. The distinguishing feature of these shapes is that the inside flange surfaces have approximately a sixteen and two-thirds percent slope or taper, which results in increased strength of the flanges.</p>
                                <a href="standard-i-beams.aspx">Learn more</a>
                            </div>
                            <div class="clear"></div>
                        </li>

                        <li>
                            <img src="../../images/manufactured-housing-beams-square.jpg" alt="Manufactured Housing Beams" title="Manufactured Housing Beams" class="square">
                            <img src="../../images/manufactured-housing-beams-wide.jpg" alt="Manufactured Housing Beams" title="Manufactured Housing Beams" class="wide">
                            <div class="copy">
                                <p class="sub">Manufactured Housing Beams</p>
                                <p>Manufactured Housing Beams are doubly-symmetric shapes that are similar to standard beams but have wider flanges. They are also referred to as M Beams and Mobile Home Beams.</p>
                                <a href="manufactured-housing.aspx">Learn more</a>
                            </div>
                            <div class="clear"></div>
                        </li>

                    </ul>
                </div>
            </div>
            <div class="top"><a href="#top">TOP</a></div>
        </div>

        <aside class="sidebar">
            <h5>Side Navigation</h5>
            <div class="sideNav">
                <ul>
                    <li><a href="structural-beams-overview.aspx" title="Overview" class="current">Beams Overview</a></li>
                    <li><a href="wide-flange-beams.aspx" title="Wide Flange Beams" class="">Wide Flange Beams</a></li>
                    <li><a href="standard-i-beams.aspx" title="Standard I-Beams" class="">Standard I-Beams</a></li>
                    <li><a href="manufactured-housing.aspx" title="Manufactured  Housing Beams" class="">Manufactured Housing Beams</a></li>
                </ul>
            </div>
            <div class="catalog">
                <a href="../../resources/structural-product-guides.aspx" title="Product Guides">Product Guides</a>
            </div>

            <div class="extras">
                <ul>
                    Quick Links:
                    <li><a href="../../resources/price-list.aspx">Price List</a></li>
                    <li><a href="../../resources/inventory-list.aspx">Inventory List</a></li>
                    <li><a href="../../resources/rolling-schedule.aspx">Rolling Schedule</a></li>
                    <li><a href="../../resources/bundle-chart.aspx">Bundle Chart</a></li>
                    <li><a href="../../resources/freight-rate.aspx">Get Freight Rate</a></li>
                </ul>
            </div>
        </aside>
        <div class="clear"></div>

    </div>
</asp:Content>
