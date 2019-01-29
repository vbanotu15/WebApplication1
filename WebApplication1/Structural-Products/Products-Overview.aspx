<%@ Page Title="" Language="C#" MasterPageFile="~/Master/Site.Master" AutoEventWireup="true" CodeBehind="Products-Overview.aspx.cs" Inherits="WebApplication1.Structural_Products.Products_Overview" %>

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
            background-image: url(../images/headers/structural-products-header.jpg);
        }

        .sideNav ul li a.current {
            color: #FFFFFF;
            background-image: url(../images/tier2/arrow-white.png);
            background-color: #c02e39;
            cursor: default;
        }

        .Items li a:link, .Items li a:visited, .Items li a:active {
            color: #c02e39;
            font-size: 15px;
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
            font-size: 16px;
            font-family: 'Montserrat', sans-serif;
            font-weight: 400;
            background-color: #505050;
            text-decoration: none;
            padding-top: 12px;
            padding-bottom: 11px;
            padding-left: 23.91304347826087%;
            padding-right: 2.1739130434782608%;
            border-bottom: 1px solid #d0cfcf;
            background-image: url(../../images/tier2/download-arrow.gif);
            background-repeat: no-repeat;
            background-position: left top;
        }



        .sideNav ul li a:link, .sideNav ul li a:visited, .sideNav ul li a:active {
            display: block;
            font-size: 14px;
            line-height: 18px;
            font-family: 'Montserrat', sans-serif;
            font-weight: 400;
            text-decoration: none;
            padding-top: 12px;
            padding-bottom: 12px;
            padding-left: 19.56521739130435%;
            padding-right: 2.1739130434782608%;
            border-bottom: 1px solid #d0cfcf;
            background-repeat: no-repeat;
            background-image: url(../images/tier2/arrow-grey.png);
            background-position: 20px 15px;
        }

        body {
            background-image: url(../images/body.jpg);
            background-position: left top;
            padding-right: 0px;
            background-color: #FFFFFF;
            background-repeat: repeat;
            margin-top: 0px;
            font-size: 16px;
            font-size: 100%;
        }

        body {
            background-image: url(../images/body.jpg);
            background-position: left top;
            padding-right: 0px;
            background-color: #FFFFFF;
            background-repeat: repeat;
            margin-top: 0px;
            font-size: 16px;
            font-size: 100%;
        }

        body {
            display: block;
        }
    </style>

    <div class="mainheader structuralproducts clear">
        <h3 title="Structural Products">Structural Products</h3>
    </div>

    <div class="clear"></div>
    <div class="content">
        <div class="RightColumn">

            <div class="col1 margintop1">
                <h4 title="Steel Dynamics Structural Products">Steel Dynamics Structural Products</h4>
                <p>We produce a wide range of hot-rolled carbon steel structural products at competitive prices, making us your primary source for structural steel. By using recycled scrap steel, our structural products are used to build the world around us in North America primarily through the commercial, industrial, and institutional segments of the construction market. The scrap used to make our steel is 100% melted and manufactured in the United States of America.</p>
                <p>Our team knows how important it is that you to get your structural steel products on time. To ensure your projects succeed, we have short rolling cycles and are the most operationally flexible structural steel mill in the United States. Our dedicated and friendly customer service representatives are the most experienced in the industry – Just tell them what you need and we’ll work together to create a solution.</p>
            </div>
            <div class="col1 One">
                <div class="Items">
                    <ul>
                        <li>
                            <img src="../images/beams-square.jpg" alt="Beams" title="Beams" class="square">
                            <img src="../images/beams-wide.jpg" alt="Beams" title="Beams" class="wide">
                            <div class="copy">
                                <p class="sub">Beams</p>
                                <p>Our division produces 3 types of beams in a wide range of sizes – Wide Flange Beams, Standard I-Beams, and Manufactured Housing Beams. Beams are typically used in a wide variety of construction projects – most commonly in the support and framework of commercial, industrial, and institutional buildings.</p>
                                <a href="beams/structural-beams-overview.aspx">Learn more</a>
                            </div>
                            <div class="clear"></div>
                        </li>

                        <li>
                            <img src="../images/h-pile-square.jpg" alt="H-Pile" title="H-Pile" class="square">
                            <img src="../images/h-pile-wide.jpg" alt="H-Pile" title="H-Pile" class="wide">
                            <div class="copy">
                                <p class="sub">H-Pile</p>
                                <p>H-Piles are dimensionally square beams that are commonly driven deep into the ground and used for deep foundations to support structures in commercial construction, such as buildings and bridges.</p>
                                <a href="h-pile.aspx">Learn more</a>
                            </div>
                            <div class="clear"></div>
                        </li>

                        <li>
                            <img src="../images/c-channels-square.jpg" alt="Channels" title="Channels" class="square">
                            <img src="../images/c-channels-wide.jpg" alt="Channels" title="Channels" class="wide">
                            <div class="copy">
                                <p class="sub">Channels</p>
                                <p>We produce C channels and MC channels. Channels are commonly used to mount, brace, support, and connect lightweight structural loads in buildings, among their many other applications.</p>
                                <a href="channels/channels-overview.aspx">Learn more</a>
                            </div>
                            <div class="clear"></div>
                        </li>

                        <li>
                            <img src="../images/angles-square.jpg" alt="Angles" title="Angles" class="square">
                            <img src="../images/angles-wide.jpg" alt="Angles" title="Angles" class="wide">
                            <div class="copy">
                                <p class="sub">Angles</p>
                                <p>Our division produces both equal and unequal angles. Angle has an L shape cross-section. Angle can be used in many diverse applications such as reinforcing materials, bridges, ships, frames and several other applications. </p>
                                <a href="angles.aspx">Learn more</a>
                            </div>
                            <div class="clear"></div>
                        </li>

                        <li>
                            <img src="../images/semi-fin-bloom-square.jpg" alt="Semi-finished blooms" title="Semi-finished blooms" class="square">
                            <img src="../images/semi-fin-bloom-wide.jpg" alt="Semi-finished blooms" title="Semi-finished blooms" class="wide">
                            <div class="copy">
                                <p class="sub">Semi-Finished Blooms</p>
                                <p>Semi-Finished Blooms can be used for the rolling of structural shapes, rails, rods, seamless pipes, among their other uses.</p>
                                <a href="semi-finished.aspx">Learn more</a>
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
                    <li><a href="products-overview.aspx" title="Overview" class="current">Products Overview</a></li>
                    <li><a href="beams/structural-beams-overview.aspx" title="Beams" class="">Beams</a></li>
                    <li><a href="h-pile.aspx" title="H-Pile" class="">H-Pile</a></li>
                    <li><a href="channels/channels-overview.aspx" title="Channels" class="">Channels</a></li>
                    <li><a href="angles.aspx" title="H-Pile" class="">Angles</a></li>
                    <li><a href="semi-finished.aspx" title="Semi-Finished" class="">Semi-Finished</a></li>
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
