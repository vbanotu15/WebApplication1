<%@ Page Title="" Language="C#" MasterPageFile="~/Master/Site.Master" AutoEventWireup="true" CodeBehind="Structural-Facilities.aspx.cs" Inherits="WebApplication1.Contact.Structural_Facilities" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <link rel="canonical" href="https://www.sdi-structural.com/contact/company-overview.aspx" />
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
        .mainheader.structuralcontact {
            background-image: url(../images/headers/structural-contact-header.jpg);
        }

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

        select {
            background-color: #eee;
            font-size: 108%;
            width: 300px;
            height: 36px;
            border: 1px solid #ccc;
            webkit-border-radius: 6px;
            -moz-border-radius: 6px;
            border-radius: 6px
        }
    </style>

    <div class="mainheader structuralcontact clear">
        <h3 title="Contact">Contact</h3>
    </div>
    <!-- End Header Image -->

    <div class="clear"></div>
    <!-- the content -->
    <div class="content">
        <!-- InstanceBeginEditable name="Area1" -->
        <div class="RightColumn">

            <div id="breadcrumbs">
                <ul>
                    <li><a href="structural-contact-us.aspx">Contact Us</a></li>
                    <li><a href="structural-facilities.aspx" class="current">SDI Facilities</a></li>
                </ul>
            </div>
            <div class="clear"></div>

            <div class="col1 margintop1">
                <h4 title="SDI Facilities">SDI Facilities</h4>
                <img src="../images/facilities-main.jpg" alt="SDI Facilities" title="SDI Facilities" class="main" />
                <p>
                    We are a division of Steel Dynamics, Inc. – one of the largest domestic steel producers and metals recyclers in the United States based on estimated annual steelmaking and metals recycling capability, with annual sales of $7.6 billion in 2015 and approximately 7,500 employees. SDI consists of manufacturing facilities primarily located throughout the United States (including six electric-arc-furnace steel mills, ten steel coating lines, an iron production facility, approximately 75 metals recycling locations and eight steel fabrication plants).
                </p>

                <ul class="bullets margintop2">
                    <li class="nobullet bold">Corporate Office</li>
                    <li class="nobullet">7575 West Jefferson Boulevard</li>
                    <li class="nobullet">Fort Wayne, Indiana 46804</li>
                    <li class="nobullet"><a href="tel:+12609693500" class="tel">Phone: 260-969-3500</a></li>
                    <li class="nobullet tel">Fax: 260-969-3590</li>
                    <li class="nobullet"><a href="http://www.steeldynamics.com/" target="_blank">www.steeldynamics.com</a></li>
                </ul>
                <ul class="bullets margintop2">
                    <li class="nobullet bold">Flat Roll Butler Division</li>
                    <li class="nobullet">4500 County Road 59</li>
                    <li class="nobullet">Butler, Indiana 46721</li>
                    <li class="nobullet"><a href="tel:+12608688000" class="tel">Phone: 260-868-8000</a></li>
                    <li class="nobullet tel">Fax: 260-868-8055</li>
                    <li class="nobullet"><a href="http://www.stld.com/" target="_blank">www.stld.com</a></li>
                </ul>


                <ul class="bullets margintop2">
                    <li class="nobullet bold">Flat Roll Columbus Division</li>
                    <li class="nobullet">1945 Airport Road</li>
                    <li class="nobullet">P.O. Box 1467 Columbus, Mississippi 39701</li>
                    <li class="nobullet"><a href="tel:+16622454200" class="tel">Phone: 662-245-4200</a></li>
                    <li class="nobullet"><a href="http://www.steeldynamics.com/Columbus/Home.aspx" target="_blank">www.steeldynamics.com/Columbus</a></li>
                </ul>

                <ul class="bullets margintop2">
                    <li class="nobullet bold">Structural and Rail Division</li>
                    <li class="nobullet">2601 County Road 700 East</li>
                    <li class="nobullet">Columbia City, Indiana 46725</li>
                    <li class="nobullet"><a href="tel:+18667408700" class="tel">Toll Free: 866-740-8700</a></li>
                    <li class="nobullet"><a href="tel:+12606258100" class="tel">Phone: 260-625-8100</a></li>
                    <li class="nobullet tel">Fax: 260-625-8770</li>
                    <li class="nobullet"><a href="https://www.sdisrd.com/" target="_blank">www.sdisrd.com</a></li>
                </ul>


                <ul class="bullets margintop2">
                    <li class="nobullet bold">Jeffersonville Finishing Complex</li>
                    <li class="nobullet">5134 Loop Road</li>
                    <li class="nobullet">Jeffersonville, Indiana 47130	</li>
                    <li class="nobullet"><a href="tel:+18122181490" class="tel">Phone: 812-218-1490</a></li>
                    <li class="nobullet tel">Fax: 260-625-8770</li>
                </ul>


                <ul class="bullets margintop2">
                    <li class="nobullet bold">The Techs</li>
                    <li class="nobullet">Southwest Pennsylvania</li>
                    <li class="nobullet">Multiple Locations</li>
                    <li class="nobullet"><a href="tel:+14124645000" class="tel">Phone: 412-464-5000</a></li>
                    <li class="nobullet"><a href="http://www.thetechs.com/" target="_blank">www.thetechs.com</a></li>
                </ul>


                <ul class="bullets margintop2">
                    <li class="nobullet bold">Engineered Bar Products Division</li>
                    <li class="nobullet">8000 N County Road 225 E</li>
                    <li class="nobullet">Pittsboro, IN 46167-9094</li>
                    <li class="nobullet"><a href="tel:+18776832277" class="tel">Phone: 877-683-BARS</a></li>
                    <li class="nobullet tel">Fax: 260-625-8770</li>
                    <li class="nobullet"><a href="http://www.sdi-pit.com/barproducts/default.jsp" target="_blank">www.sdi-pit.com/barproducts</a></li>
                </ul>


                <ul class="bullets margintop2">
                    <li class="nobullet bold">Roanoke Bar Division	</li>
                    <li class="nobullet">102 Westside Blvd. NW</li>
                    <li class="nobullet">Roanoke, VA 24017</li>
                    <li class="nobullet"><a href="tel:+18007656567" class="tel">Toll Free: 800-765-6567</a></li>
                    <li class="nobullet"><a href="tel:+15403421831" class="tel">Phone: 540-342-1831</a></li>
                    <li class="nobullet tel">Fax: 260-625-8770</li>
                    <li class="nobullet"><a href="http://www.roanokesteel.com/" target="_blank">www.roanokesteel.com</a></li>
                </ul>


                <ul class="bullets margintop2">
                    <li class="nobullet bold">Steel of West Virginia, Inc. </li>
                    <li class="nobullet">17th Street &amp; 2nd Avenue</li>
                    <li class="nobullet">Huntington, West Virginia 25703</li>
                    <li class="nobullet"><a href="tel:+13046968200" class="tel">Toll Free: 304-696-8200</a></li>
                    <li class="nobullet tel">Fax: 304-529-1479</li>
                    <li class="nobullet"><a href="http://www.swvainc.com/" target="_blank">www.swvainc.com</a></li>
                </ul>


                <ul class="bullets margintop2">
                    <li class="nobullet bold">New Millennium Building Systems	</li>
                    <li class="nobullet">Plants in Indiana, Florida, Virginia, Arkansas, Nevada, and Mexico.</li>
                    <li class="nobullet">7575 W. Jefferson Blvd.</li>
                    <li class="nobullet">Fort Wayne, IN 46804</li>
                    <li class="nobullet"><a href="tel:+12609693500" class="tel">Phone: 260-969-3500</a></li>
                    <li class="nobullet tel">Fax: 260-969-3590</li>
                    <li class="nobullet"><a href="http://www.newmill.com/" target="_blank">www.newmill.com</a></li>
                </ul>


            </div>

            <div class="clear spacer25"></div>

            <div class="top"><a href="#top">TOP</a></div>
        </div>
        <!-- InstanceEndEditable -->

        <!-- the sidebar -->
        <aside class="sidebar">
            <h5>Side Navigation</h5>
            <div class="sideNav">
                <ul>
                    <li><a href="structural-contact-us.aspx" title="Contact Us" class="">Contact Us</a></li>
                    <li><a href="structural-sales-team.aspx" title="Sales Team" class="">Sales Team</a></li>
                    <li><a href="structural-request-quote.aspx" title="Request a Quote" class="">Request a Quote</a></li>
                    <li><a href="register-mysdi.aspx" title="Register for MySDI<" class="">Register for MySDI</a></li>
                    <li><a href="structural-driving-directions.aspx" title="Driving Directions" class="">Driving Directions</a></li>
                    <li><a href="structural-careers.aspx" title="Careers" class="">Careers</a></li>
                    <li><a href="structural-facilities.aspx" title="SDI Facilities" class="current">SDI Facilities</a></li>
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
