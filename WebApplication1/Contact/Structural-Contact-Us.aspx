<%@ Page Title="" Language="C#" MasterPageFile="~/Master/Site.Master" AutoEventWireup="true" CodeBehind="Structural-Contact-Us.aspx.cs" Inherits="WebApplication1.Contact.Contact_Us" %>

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

        body {
            background-image: url(../images/body.jpg);
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

        input, textarea, select, button {
            text-rendering: auto;
            color: initial;
            letter-spacing: normal;
            word-spacing: normal;
            text-transform: none;
            text-indent: 0px;
            text-shadow: none;
            display: inline-block;
            text-align: start;
            margin: 0em;
            font: 400 13.3333px Arial;
        }

        table.contact input.textfield1 {
            font-family: 'Montserrat', sans-serif !important;
            font-weight: 400 !important;
            width: 100%;
            height: 40px;
            padding-top: 5px;
            padding-right: 5px;
            padding-left: 5px;
            padding-bottom: 5px;
            font-size: 16px;
            color: #424242 !important;
            border: 1px solid #424242;
            background-color: #EAEAEA;
        }



        input, textarea, select, button, meter, progress {
            -webkit-writing-mode: horizontal-tb !important;
        }

        .-webkit-scrollbar {
            width: 14px;
            height: 14px;


        {
            background-color: rgb(250, 255, 189) !important;
            background-image: none !important;
            color: rgb(0, 0, 0) !important;
        }

        .top a:link, .top a:visited, .top a:active {
            display: block;
            width: 70px;
            background-color: #C4C4C4;
            clear: both;
            font-size: 16px;
            font-family: 'Montserrat', sans-serif;
            font-weight: 400;
            color: #424242;
            padding-top: 15px;
            padding-bottom: 15px;
            text-decoration: none;
            text-align: center;
            border-radius: 10px;
            margin-top: 35px;
        }

        }

        .auto-style1 {
            width: 338px;
        }
    </style>
    <div class="clear"></div>
    <div class="mainheader structuralcontact clear">
        <h3 title="Contact">Contact</h3>
    </div>
    <!-- End Header Image -->

    <div class="clear"></div>
    <!-- the content -->
    <div class="content">
        <!-- InstanceBeginEditable name="Area1" -->
        <div class="RightColumn">


            <div class="clear"></div>

            <div class="col1 margintop1">
                <h4 title="Contact Us">Contact Us</h4>

                <ul class="bullets margintop2">
                    <li class="nobullet bold">Steel Dynamics Structural and Rail Division</li>
                    <li class="nobullet">2601 S County Road 700 E</li>
                    <li class="nobullet">Columbia City, Indiana 46725</li>
                </ul>

                <ul class="bullets margintop1">
                    <li class="nobullet bold">Toll Free: <a href="tel:+18667408700" class="tel" id="bold">866-740-8700</a></li>
                    <li class="nobullet"><a href="tel:+12606258100" class="tel">Main: 260-625-8100</a></li>
                    <li class="nobullet">Fax: 260-625-8770</li>
                </ul>



                <div class="spacer25 clear"></div>

                <form action="structural-contact-us.aspx" method="post" id="contact-form">
                    <table class="contact">
                        <tbody>
                            <tr>
                                <td class="auto-style1">
                                    <p>*All Fields Required:</p>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style1">
                                    <input name="FirstName" type="text" class="textfield1" placeholder="*First Name:" required="required" style="width: 99%; height: 46px" />
                                    <span class="hp"></td>
                            </tr>

                            <tr>
                                <td class="auto-style1">
                                    <input name="LastName" type="text" class="textfield1" placeholder="*Last Name:" required="required" style="width: 99%; height: 46px" />
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style1">
                                    <input name="Title" type="text" class="textfield1" placeholder="*Title:" required="required" style="width: 99%; height: 46px" />
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style1">
                                    <input name="Email" type="email" class="textfield1" placeholder="*Email:" required="required" style="width: 99%; height: 46px" />
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style1">
                                    <input name="Phone" type="tel" class="textfield1" placeholder="*Phone:" required="required" style="width: 99%; height: 46px" />
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style1">
                                    <input name="Company" type="text" class="textfield1" placeholder="*Company:" required="required" style="width: 99%; height: 46px" /></td>
                            </tr>
                            <tr>
                                <td class="auto-style1">&nbsp;</td>
                            </tr>
                        </tbody>

                        <tr>
                            <td class="auto-style1">

                                <textarea name="Message" class="message1" placeholder="*Message:" style="width: 330px; height: 92px"></textarea></td>
                        </tr>

                    </table>
                    <div class="clear"></div>

                    <table class="contact2">
                        <tbody>
                            <tr>
                                <td class="description2">
                                    <input name="submit" type="submit" class="submit" value="Submit"></td>
                            </tr>
                        </tbody>
                    </table>
                </form>
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
                    <li><a href="structural-contact-us.aspx" title="Contact Us" class="current">Contact Us</a></li>
                    <li><a href="structural-sales-team.aspx" title="Sales Team" class="">Sales Team</a></li>
                    <li><a href="structural-request-quote.aspx" title="Request a Quote" class="">Request a Quote</a></li>
                    <li><a href="register-mysdi.aspx" title="Register for MySDI<" class="">Register for MySDI</a></li>
                    <li><a href="structural-driving-directions.aspx" title="Driving Directions" class="">Driving Directions</a></li>
                    <li><a href="structural-careers.aspx" title="Careers" class="">Careers</a></li>
                    <li><a href="structural-facilities.aspx" title="SDI Facilities" class="">SDI Facilities</a></li>
                </ul>
            </div>
            <div class="catalog">
                <a href="../resources/structural-product-guides.aspx" title="Product Guides">Product Guides</a>
            </div>

            <div class="extras">
                <ul>
                    Quick Links:
                    <li><a href="/resources/price-list.aspx">Price List</a></li>
                    <li><a href="/resources/inventory-list.aspx">Inventory List</a></li>
                    <li><a href="/resources/rolling-schedule.aspx">Rolling Schedule</a></li>
                    <li><a href="/resources/bundle-chart.aspx">Bundle Chart</a></li>
                    <li><a href="/resources/freight-rate.aspx">Get Freight Rate</a></li>
                </ul>
            </div>
        </aside>
        <div class="clear"></div>

    </div>
    <!-- End content -->

</asp:Content>
