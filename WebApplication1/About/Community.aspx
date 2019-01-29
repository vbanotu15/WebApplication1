<%@ Page Title="" Language="C#" MasterPageFile="~/Master/Site.Master" AutoEventWireup="true" CodeBehind="Community.aspx.cs" Inherits="WebApplication1.About.Community" %>

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
    </style>
    <%--<style>
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
    </style>--%>
    <div class="mainheader company clear">
        <h3 title="About">About</h3>
    </div>
    <!-- End Header Image -->
    <div class="clear"></div>
    <!-- the content -->
    <div class="content">
        <!-- InstanceBeginEditable name="Area1" -->
        <div class="RightColumn">
            <div id="breadcrumbs">
                <ul>
                    <li><a href="company-overview.aspx">About</a></li>
                    <li><a href="community.aspx" class="current">Community</a></li>
                </ul>
            </div>
            <div class="clear"></div>

            <div class="col1 margintop1">
                <h4 title="Community">Community</h4>
                <h5 title="We care about our community">We care about our community</h5>
                <img src="../images/culture-main.jpg" alt="Community" title="Community" class="main" />

                <p>The Steel Dynamics Structural and Rail Division is a leading employer and contributor to the northeastern Indiana economy. We are vitally supportive of the communities where we work and live.</p>
                <p>The Steel Dynamics Foundation (SDF) supports a range of causes in our communities, especially education. In March 2014, SDF contributed $1 million to the University of Saint Francis to establish a scholarship program. The foundation has also extended scholarships to several other educational institutions in the region. If you are the leader of a community service organization and are looking for caring and energetic volunteers, you have a friend in us.</p>
                <p>Many of us are privileged to participate in local community causes such as the United Way of Whitley County, Toys for Tots, Big Brothers Big Sisters, Boys and Girls Club of Goshen, Boy Scouts of America, Habitat For Humanity, Camp Whitley, the Center for Whitley County Youth, and many more. Our mill contributed the steel for the construction of a new bridge along the Blue River Trail, supporting a popular recreation area in northwest Indiana.</p>

                <p>Our purpose goes beyond selling steel. We believe in making our community, our industry, our country, and the world better. We also believe that together, we can do that. We’ll do our part. You have our word.</p>

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
                    <li><a href="community.aspx" title="Community" class="current">Community</a></li>
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
