﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Master/Site.Master" AutoEventWireup="true" CodeBehind="manufactured-housing.aspx.cs" Inherits="WebApplication1.Structural_Products.Beams.Manufactured_Housing_Beams" %>

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
        <h3 title="Beams">Beams</h3>
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
                    <li><a href="structural-beams-overview.aspx">Beams Overview</a></li>
                    <li><a href="manufactured-housing.aspx" class="current">Manufactured Housing Beams</a></li>
                </ul>
            </div>
            <div class="clear"></div>

            <div class="col1 margintop1">
                <img src="../../images/manufactured-housing-beams-main.jpg" alt="Manufactured Housing Beams" title="Manufactured Housing Beams" class="main" />
                <h4 title="Manufactured Housing Beams">Manufactured Housing Beams</h4>
                <p>At our Columbia City, IN location, we produce Manufactured Housing Beams. Also known as M beams, Manufactured Housing Beams are doubly-symmetric shapes and are similar to Standard I-Beams but have wider flanges. Manufactured Housing Beams are commonly used on the undercarriage frame of manufactured houses and recreational vehicles. </p>


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
                            <td class="right left bottom">8 - 12.5 in.</td>
                            <td class="right bottom">Depth</td>
                        </tr>
                        <tr>
                            <td class="right left bottom">6.5 - 12.4 Lbs./Ft.</td>
                            <td class="right bottom">Weight</td>
                        </tr>
                    </tbody>
                </table>

                <div class="clear spacer25"></div>

                <h5 title="Available Grades" class="margintop1">Available Grades</h5>
                <table class="One desktop">
                    <tbody>
                        <tr>
                            <td class="grey right left bottom">
                                <p class="bold">ASTM</p>
                            </td>
                            <td class="grey right bottom">
                                <p class="bold">ABS</p>
                            </td>
                        </tr>
                        <tr>
                            <td class="right left bottom">A36</td>
                            <td class="right left bottom">Grade A</td>
                        </tr>
                        <tr>
                            <td class="right left bottom">A572</td>
                            <td class="right left bottom">Grade B</td>
                        </tr>
                        <tr>
                            <td class="right left bottom">A588-B</td>
                            <td class="right left bottom">Grade AH32</td>
                        </tr>
                        <tr>
                            <td class="right left bottom">A690</td>
                            <td class="right left bottom">Grade AH36</td>
                        </tr>
                        <tr>
                            <td class="right left bottom">A709</td>
                            <td class="right left bottom">&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="right left bottom">A992</td>
                            <td class="right left bottom">&nbsp;</td>
                        </tr>
                    </tbody>
                </table>

                <table class="One desktop">
                    <tbody>
                        <tr>
                            <td class="grey right bottom">
                                <p class="bold">CSA G40.21</p>
                            </td>
                            <td class="grey right bottom">
                                <p class="bold">AASHTO</p>
                            </td>
                        </tr>
                        <tr>
                            <td class="right bottom">50A (350A)</td>
                            <td class="right bottom">M270</td>
                        </tr>
                        <tr>
                            <td class="right bottom">50AT (350AT)</td>
                            <td class="right bottom">&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="right bottom">50W (350W)</td>
                            <td class="right bottom">&nbsp;</td>
                        </tr>
                        <tr class="bottom-border">
                            <td class="right bottom">50WMT (350WMT)</td>
                            <td class="right bottom">&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="right bottom">50WM (350WM)</td>
                            <td class="right bottom">&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="right bottom">44W (300W)</td>
                            <td class="right bottom">&nbsp;</td>
                        </tr>
                    </tbody>
                </table>
                <div class="clear spacer25"></div>
                <p class="caption">Note: All structural products are made to ASTM A6 standard specification. Standard covers terminology, ordering information, testing information, quality information, nominal dimensions and permitted variations.</p>
                <p class="caption">
                    *Additional grades may be available upon request.
                    <br>
                    *Charpy Testing is available upon request.​​
                </p>

            </div>

            <div class="clear spacer25"></div>

            <h5>Additional Information</h5>
            <div class="More">
                <ul>

                    <li>
                        <p>
                            SDI Steel of West Virginia Division produces Manufactured Housing Beams ranging from M6x3.7# to M10x9.0#.<br>
                            For more information visit the SDI Steel of West Virginia site.
                        </p>
                        <a href="http://www.swvainc.com/merchant.html" title="SDI Steel of West Virginia" target="_blank">Learn More</a>
                    </li>
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
                    <li><a href="structural-beams-overview.aspx" title="Overview" class="">Beams Overview</a></li>
                    <li><a href="wide-flange-beams.aspx" title="Wide Flange Beams" class="">Wide Flange Beams</a></li>
                    <li><a href="standard-i-beams.aspx" title="Standard I-Beams" class="">Standard I-Beams</a></li>
                    <li><a href="manufactured-housing.aspx" title="Manufactured  Housing Beams" class="current">Manufactured Housing Beams</a></li>
                </ul>
            </div>
            <div class="catalog">
                <a href="../../resources/structural-product-guides.aspx" title="Product Guides">Product Guides</a>
            </div>

            <div class="extras">
                <ul>
                    Quick Links:
                    <li><a href="price-list.aspx">Price List</a></li>
                    <li><a href="inventory-list.aspx">Inventory List</a></li>
                    <li><a href="rolling-schedule.aspx">Rolling Schedule</a></li>
                    <li><a href="bundle-chart.aspx">Bundle Chart</a></li>
                    <li><a href="freight-rate.aspx">Get Freight Rate</a></li>
                </ul>
            </div>
        </aside>
        <div class="clear"></div>

    </div>
    <!-- End content -->

</asp:Content>