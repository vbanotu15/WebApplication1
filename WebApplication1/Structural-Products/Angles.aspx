<%@ Page Title="" Language="C#" MasterPageFile="~/Master/Site.Master" AutoEventWireup="true" CodeBehind="Angles.aspx.cs" Inherits="WebApplication1.Structural_Products.Angles" %>

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
            background-image: url(../Images/tier2/small-red-arrow.png);
            background-repeat: no-repeat;
            background-position: 0px 1px;
            padding-left: 25px;
        }
    </style>
    <!-- the slider -->

    <div class="mainheader structuralproducts clear">
        <h3 title="Structural Products">Structural Products</h3>
    </div>
    <!-- End Header Image -->


    <div class="clear"></div>
    <!-- the content -->
    <div class="content">
        <!-- InstanceBeginEditable name="Area1" -->
        <div class="RightColumn">

            <div id="breadcrumbs">
                <ul>
                    <li><a href="products-overview.aspx">Products Overview</a></li>
                    <li><a href="angles.aspx" class="current">Angles</a></li>
                </ul>
            </div>
            <div class="clear"></div>

            <div class="col1 margintop1">
                <img src="../images/angles-main.jpg" alt="Angles" title="Angles" class="main" />

                <h4 title="Equal and Unequal Angles">Equal and Unequal Angles</h4>
                <p>We produce equal and unequal angle. Angle is a 90-degree right angle shape that adds strength. Equal angles have legs of equal length and thickness, while unequal angles have legs of equal thickness but unequal length. Unequal angles can also be produced with legs of unequal thickness and unequal length. One of the most common uses of angle is framing. Angle is also used in reinforcements, towers, ships, bridges, brackets, and trim.</p>

                <div class="spacer25"></div>
                <h5 title="Available Sizes">Available Sizes</h5>
                <table class="One desktop">
                    <tbody>
                        <tr>
                            <td class="grey right left bottom">
                                <p class="bold">Size Range</p>
                            </td>
                            <td class="grey right bottom">
                                <p class="bold">Measurement</p>
                            </td>
                        </tr>
                        <tr>
                            <td class="right left bottom">5 - 8 in.</td>
                            <td class="right bottom">Width</td>
                        </tr>
                        <tr>
                            <td class="right left bottom">1/4 - 1 1/8 in.</td>
                            <td class="right bottom">Thickness</td>
                        </tr>
                    </tbody>
                </table>

                <div class="clear spacer25"></div>

                <h5 title="Available Grades" class="margintop1">Available Grades</h5>
                <table class="One desktop">
                    <tbody>
                        <tr>
                            <td class="grey right left bottom">
                                <p class="bold">SDI</p>
                            </td>
                            <td class="grey right bottom">
                                <p class="bold">ASTM</p>
                            </td>
                        </tr>
                        <tr>
                            <td class="right left bottom">SDI-MULTI¹</td>
                            <td class="right left bottom">A36</td>
                        </tr>
                        <tr>
                            <td class="right left bottom">&nbsp;</td>
                            <td class="right left bottom">A572</td>
                        </tr>
                        <tr>
                            <td class="right left bottom">&nbsp;</td>
                            <td class="right left bottom">A588-B</td>
                        </tr>
                        <tr>
                            <td class="right left bottom">&nbsp;</td>
                            <td class="right left bottom">A690</td>
                        </tr>
                        <tr>
                            <td class="right left bottom">&nbsp;</td>
                            <td class="right left bottom">A709</td>
                        </tr>
                        <tr>
                            <td class="right left bottom">&nbsp;</td>
                            <td class="right left bottom">A992</td>
                        </tr>
                    </tbody>
                </table>

                <table class="One desktop">
                    <tbody>
                        <tr>
                            <td class="grey right bottom">
                                <p class="bold">ABS</p>
                            </td>
                            <td class="grey right bottom">
                                <p class="bold">CSA G40.21</p>
                            </td>
                            <td class="grey right bottom">
                                <p class="bold">AASHTO</p>
                            </td>
                        </tr>
                        <tr>
                            <td class="right bottom">Grade A</td>
                            <td class="right bottom">50A (350A)</td>
                            <td class="right bottom">M270</td>
                        </tr>
                        <tr>
                            <td class="right bottom">Grade B</td>
                            <td class="right bottom">50AT (350AT)</td>
                            <td class="right bottom">&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="right bottom">Grade AH32</td>
                            <td class="right bottom">50W (350W)</td>
                            <td class="right bottom">&nbsp;</td>
                        </tr>
                        <tr class="bottom-border">
                            <td class="right bottom">Grade AH36</td>
                            <td class="right bottom">50WMT (350WMT)</td>
                            <td class="right bottom">&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="right bottom">&nbsp;</td>
                            <td class="right bottom">50WM (350WM)</td>
                            <td class="right bottom">&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="right bottom">&nbsp;</td>
                            <td class="right bottom">44W (300W)</td>
                            <td class="right bottom">&nbsp;</td>
                        </tr>
                    </tbody>
                </table>
                <div class="clear spacer25"></div>
                <p class="caption">Note:  All structural products are made to ASTM A6 standard specification. Standard covers terminology, ordering information, testing information, quality information, nominal dimensions and permitted variations. ¹ SDI-MULTI meets the requirements of A992, A572-50, A529-50, A709-50, M270-50, A36, A709-36, M270-36, CSA300W, CSA345WM, CSA350W.</p>
                <p class="caption">
                    *Additional grades may be available upon request.
                    <br>
                    *Charpy Testing is available upon request.​​
                </p>

            </div>

            <div class="clear spacer25"></div>

            <!--
<h5>Additional Information</h5>
<div class="More">
<ul>

</ul>
</div>
-->

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
                    <li><a href="angles.aspx" title="H-Pile" class="current">Angles</a></li>
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
    <!-- End content -->



</asp:Content>
