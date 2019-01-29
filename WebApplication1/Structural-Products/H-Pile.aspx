<%@ Page Title="" Language="C#" MasterPageFile="~/Master/Site.Master" AutoEventWireup="true" CodeBehind="H-Pile.aspx.cs" Inherits="WebApplication1.Structural_Products.H_Pile" %>

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
            background-color: #c02e39;            
            border-radius: 10px;
            background-image: url(../images/tier2/white-learn-arrow.png);
            background-repeat: no-repeat;
            background-position: 5px 15px;
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
                    <li><a href="h-pile.aspx" class="current">H-Pile</a></li>
                </ul>
            </div>
            <div class="clear"></div>

            <div class="col1 margintop1">
                <img src="../images/h-pile-main.jpg" alt="H-Pile" title="H-Pile" class="main" />

                <h4 title="H-Pile">H-Pile</h4>
                <p>Our facility is capable of producing a wide range of H-Pile. These are dimensionally square-structural beams, typically driven deep into the soil to support structures in commercial construction, such as buildings and bridges. As a result of their unique design and strength, H-Pile can be driven deep into the ground, where other pilings would struggle to penetrate. To attain the appropriate load resistance, a deep foundation system often is designed to transfer the structural loads down through the H-Piles, as the top ground layer often does not possess the necessary soil properties to support a tall structure. H-Pile is also frequently used for Soldier Beam and Secant Pile Walls, and for lagging construction in braced excavations to create earth retention, among its many other uses.</p>

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
                            <td class="right left bottom">8 - 14 in.</td>
                            <td class="right bottom">Depth</td>
                        </tr>
                        <tr>
                            <td class="right left bottom">36 - 117 Lbs./Ft.</td>
                            <td class="right bottom">Weight</td>
                        </tr>
                    </tbody>
                </table>

                <div class="clear spacer25"></div>

                <div class="RedButton">
                    <ul>
                        <li>
                            <a href="../resources/bundle-chart.aspx" target="_blank">Bundle Chart</a>
                        </li>
                    </ul>
                </div>

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
                            <td class="right bottom">44W</td>
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
                    <li><a href="h-pile.aspx" title="H-Pile" class="current">H-Pile</a></li>
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
    <!-- End content -->
</asp:Content>
