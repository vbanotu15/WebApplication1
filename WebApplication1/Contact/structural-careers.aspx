<%@ Page Title="" Language="C#" MasterPageFile="~/Master/Site.Master" AutoEventWireup="true" CodeBehind="structural-careers.aspx.cs" Inherits="WebApplication1.Contact.Structural_Careers" %>

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
                    <li><a href="structural-careers.aspx" class="current">Careers</a></li>
                </ul>
            </div>
            <div class="clear"></div>

            <div class="col1 margintop1">
                <h4 title="Careers">Careers</h4>
                <h5 title="Our people are our greatest assets">Our people are our greatest assets</h5>
                <img src="../images/careers-main.jpg" alt="Careers" title="Careers" class="main" />
                <p>Steel Dynamics offers a competitive compensation package, an exciting work environment, and advancement opportunities. Benefits include medical and dental plans, life insurance, retirement plan, paid vacation, profit sharing, and stock award plan.</p>
                <p>
                    From time to time, production, technical, or office positions become available. To apply for employment at Steel Dynamics, please send a cover letter stating the type of position you seek and a resume that includes your work experience, qualifications, and references. 
Please mail your letter and resume to:
                </p>
                <div class="spacer25 clear"></div>

                <ul class="bullets">
                    <li class="nobullet bold">Steel Dynamics, Inc.</li>
                    <li class="nobullet bold">Structural and Rail Division</li>
                    <li class="nobullet">Personnel Department</li>
                    <li class="nobullet">2601 South County Road 700 East</li>
                    <li class="nobullet">Columbia City, Indiana 46725</li>
                    <li class="nobullet"><a href="mailto:srdapplications@steeldynamics.com">srdapplications@steeldynamics.com</a></li>
                </ul>

                <div class="spacer25 clear"></div>

                <p>No phone calls, please. Due to the high volume of resumes Steel Dynamics receives, we are unable to acknowledge or respond to each submission. If you do not hear from us within 90 days, you may wish to resubmit your resume.</p>
                <p>If you would like to apply to other Steel Dynamics locations, please send a copy of your letter and resume to each Steel Dynamics location to which you wish to apply; hiring for other locations is handled separately.</p>
                <p>Steel Dynamics, Inc. is an equal opportunity employer. </p>

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
                    <li><a href="structural-careers.aspx" title="Careers" class="current">Careers</a></li>
                    <li><a href="structural-facilities.aspx" title="SDI Facilities" class="">SDI Facilities</a></li>
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
