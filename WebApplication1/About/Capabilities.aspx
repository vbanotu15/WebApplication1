<%@ Page Title="" Language="C#" MasterPageFile="~/Master/Site.Master" AutoEventWireup="true" CodeBehind="Capabilities.aspx.cs" Inherits="WebApplication1.About.Capabilities" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <link href="../Style/CSS/tier2-sdi-structural.css" rel="stylesheet" />
    <!--Modernizer-->
    <script>
        if (!Modernizr.svg) var i = document.getElementsByTagName("img"), j, y; for (j = i.length; j--;)y = i[j].src, y.match(/svg$/) && (i[j].src = y.slice(0, -3) + "png")</script>
    <!--EndModernizer-->

    <script src="https://code.jquery.com/jquery-1.12.0.min.js"></script>
    <script src="https://code.jquery.com/jquery-migrate-1.2.1.min.js"></script>

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
            background-image: url(../images/tier2/white-learn-arrow.png);
            background-repeat: none;
            background-position: 5px 15px;
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
    </style>
    <div class="mainheader company clear">
        <h3 title="About">About</h3>
    </div>

    <<div class="clear"></div>
    <!-- the content -->
    <div class="content">
        <!-- InstanceBeginEditable name="Area1" -->
        <div class="RightColumn">
            <div id="breadcrumbs">
                <ul>
                    <li><a href="company-overview.aspx">About</a></li>
                    <li><a href="capabilities.aspx" class="current">Capabilities</a></li>
                </ul>
            </div>
            <div class="clear"></div>

            <div class="col1 margintop1">
                <h4 title="Capabilities">Capabilities</h4>
                <img src="../images/eaf-charging-main.jpg" alt="Capabilities" title="Capabilities" class="main" />

                <p>Our operational advantages enable us to meet the most challenging project schedule, while maintaining the highest expectations in quality.</p>
                <p>Our mill produces a quality product line of structural beams, channels, H-pile, semi-finished blooms, along with standard and premium grade rails.</p>

                <div class="spacer1 clear"></div>

                <table class="One B desktop">
                    <tbody>
                        <tr>
                            <td class="grey right left bottom">
                                <p class="bold">Products</p>
                            </td>
                            <td class="grey right bottom">
                                <p class="bold">Description</p>
                            </td>
                            <td class="grey right bottom">
                                <p class="bold">Sizes</p>
                            </td>
                        </tr>
                        <tr>
                            <td rowspan="3" class="right left bottom">Beams</td>
                            <td class="right left bottom">W-Shapes</td>
                            <td class="right left bottom">W4 - W36</td>
                        </tr>
                        <tr>
                            <td class="right left bottom">S-Shapes</td>
                            <td class="right left bottom">S12 - S24</td>
                        </tr>
                        <tr>
                            <td class="right left bottom">M-Shapes</td>
                            <td class="right left bottom">M8 - M12.5</td>
                        </tr>
                        <tr>
                            <td rowspan="2" class="right left bottom">Channels</td>
                            <td class="right left bottom">C-Shapes</td>
                            <td class="right left bottom">C8 through C15</td>
                        </tr>
                        <tr>
                            <td class="right left bottom">MC-Shapes</td>
                            <td class="right left bottom">MC10 through MC12</td>
                        </tr>
                        <tr>
                            <td class="right left bottom">H-Pile</td>
                            <td class="right left bottom">Bearing</td>
                            <td class="right left bottom">HP8 through HP14</td>
                        </tr>
                        <tr>
                            <td class="right left bottom">Semi-Finished</td>
                            <td class="right left bottom">Blooms</td>
                            <td class="right left bottom">7x7, 8x8, 8x10, 10x14</td>
                        </tr>
                        <tr>
                            <td class="right left bottom">Rails</td>
                            <td class="right left bottom">Standard and Premium Grades</td>
                            <td class="right left bottom">115 RE, 136 RE, 141 RE, 60 E1, 100-8, 132RE, 122CB
                            </td>
                        </tr>
                    </tbody>
                </table>

                <div class="spacer25 clear"></div>

                <div class="spacer25"></div>
                <p>Our advanced and uniquely flexible mill operations bring a competitive advantage to structural and rail products, resulting in optimized project cost and performance.</p>
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
                    <li><a href="capabilities.aspx" title="Capabilities" class="current">Capabilities</a></li>
                    <li><a href="management.aspx" title="Leadership" class="">Our Management</a></li>
                    <li><a href="culture.aspx" title="Culture" class="">Culture</a></li>
                    <li><a href="safety.aspx" title="Safety" class="">Safety</a></li>
                    <li><a href="environment.aspx" title="Environment" class="">Environment</a></li>
                    <li><a href="community.aspx" title="Community" class="">Community</a></li>
                    <li><a href="structural-products-video.aspx" title="Video" class="">Video</a></li>
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
    <!-- End content -->

</asp:Content>
