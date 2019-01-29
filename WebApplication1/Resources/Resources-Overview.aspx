<%@ Page Title="" Language="C#" MasterPageFile="~/Master/Site.Master" AutoEventWireup="true" CodeBehind="Resources-Overview.aspx.cs" Inherits="WebApplication1.Resources.Respurce_Overview" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <link rel="canonical" href="https://www.sdi-structural.com/resources/resources-overview.html" />
    <link href='//fonts.googleapis.com/css?family=Montserrat:400,700|Lora:400,400italic,700,700italic|Muli:400,300italic,300' rel='stylesheet' type='text/css' />
    <script src="../JS/modernizr-custom.js"></script>
    <script>
        if (!Modernizr.svg) var i = document.getElementsByTagName("img"), j, y; for (j = i.length; j--;)y = i[j].src, y.match(/svg$/) && (i[j].src = y.slice(0, -3) + "png")</script>

    <link href="../Style/css/tier2-sdi-structural.css" rel="stylesheet" type="text/css">
    <link href="../Style/css/tools-sdi.css" rel="stylesheet" type="text/css">
    <link href="../Style/css/form-sdi.css" rel="stylesheet" type="text/css">
    <link href='//fonts.googleapis.com/css?family=Montserrat:400,700|Lora:400,400italic,700,700italic|Muli:400,300italic,300' rel='stylesheet' type='text/css'>
    <script>
        $(document).ready(function () {

            $('#menu-toggle').click(function () {
                $('#menu').toggleClass('open');
                e.preventDefault();
            });

        });
    </script>
    <style>
        .mainheader.structuralresources {
            background-image: url(../images/headers/strucutural-resources-header.jpg);
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


        .Items li a:link, .Items li a:visited, .Items li a:active {
            /*color: #c02e39; */
            font-size: 15px;
            font-family: 'Montserrat', sans-serif;
            font-weight: 400;
            font-style: italic;
            text-decoration: none;
            background-image: url(../images/tier2/small-red-arrow.png);
            background-position: 0px 7px;
            background-repeat: no-repeat;
            display: block;
            padding-top: 5px;
            padding-left: 20px;
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
        body {
            background-image: url(../images/body.jpg);
            background-position: left top;
            padding-right: 0px;
            background-color: #FFFFFF;
            background-repeat: repeat;
            margin-top: 0px;
            font-size: 1em; /* font size of the body based on the browser 16px **/
            font-size: 100%;
        }
    </style>
    <div class="mainheader structuralresources clear">
        <h3 title="Resources">Resources</h3>
    </div>
    <!-- End Header Image -->

    <div class="clear"></div>
    <!-- the content -->
    <div class="content">
        <!-- InstanceBeginEditable name="Area1" -->
        <div class="RightColumn">

            <div class="col1 margintop1">
                <h4 title="Resources Overview">Resources Overview</h4>
                <p>Our goal is to make Steel Dynamics the easiest and most professional supplier to do business with. To serve your needs, we have all the tools and documentation you need in one convenient location. And always feel free to contact us directly to answer any questions you may have.</p>
            </div>

            <div class="col1 one">
                <div class="Items">

                    <ul>
                        <li>
                            <img src="../images/resources-square-pricing.jpg" alt="Price List" title="Price List" class="square">
                            <img src="../images/resources-wide-pricing.jpg" alt="Price List" title="Price List" class="wide">
                            <div class="copy">
                                <p class="sub">Price List</p>
                                <p>See current pricing on virtually all products we produce.</p>
                                <a href="price-list.aspx">Access</a>
                            </div>
                            <div class="clear"></div>
                        </li>

                        <li>
                            <img src="../images/resources-square-inventory.jpg" alt="Inventory List" title="Inventory List" class="square">
                            <img src="../images/resources-wide-inventory.jpg" alt="Inventory List" title="Inventory List" class="wide">
                            <div class="copy">
                                <p class="sub">Inventory List</p>
                                <p>View current inventory on hand with a simple click.</p>
                                <a href="inventory-list.aspx">Access</a>
                            </div>
                            <div class="clear"></div>
                        </li>
                        <li>
                            <img src="../images/resources-square-rolling.jpg" alt="Rolling Schedule" title="Rolling Schedule" class="square">
                            <img src="../images/resources-wide-rolling.jpg" alt="Rolling Schedule" title="Rolling Schedule" class="wide">
                            <div class="copy">
                                <p class="sub">Rolling Schedule</p>
                                <p>Check out our current and upcoming production schedule.</p>
                                <a href="rolling-schedule.aspx">Download</a>
                            </div>
                            <div class="clear"></div>
                        </li>


                        <li>
                            <img src="../images/resources-square-bundle.jpg" alt="Bundle Chart" title="Bundle Chart" class="square">
                            <img src="../images/resources-wide-bundle.jpg" alt="Bundle Chart" title="Bundle Chart" class="wide">
                            <div class="copy">
                                <p class="sub">Bundle Chart</p>
                                <p>Everything you need, from pounds per foot, to pieces per bundle and dimensions.</p>
                                <a href="bundle-chart.aspx">Access</a>
                            </div>
                            <div class="clear"></div>
                        </li>

                        <li>
                            <img src="../images/resources-square-freight.jpg" alt="Get Freight Rate" title="Get Freight Rate" class="square">
                            <img src="../images/resources-wide-freight.jpg" alt="Get Freight Rate" title="Get Freight Rate" class="wide">
                            <div class="copy">
                                <p class="sub">Get Freight Rate</p>
                                <p>Quickly retrieve the shipping costs to your location.</p>
                                <a href="freight-rate.aspx">Access</a>
                            </div>
                            <div class="clear"></div>
                        </li>
                         <li>
                            <img src="../images/resources-square-msds.jpg" alt="MSDS" title="MSDS" class="square">
                            <img src="../images/resources-wide-msds.jpg" alt="MSDS" title="MSDS" class="wide">
                            <div class="copy">
                                <p class="sub">MSDS</p>
                                <p>Material Safety Data Sheet for hot rolled carbon steel products.</p>
                                <a href="MSDS.aspx">Access</a>
                            </div>
                            <div class="clear"></div>
                        </li>

                        <li>
                            <img src="../images/resources-square-credit.jpg" alt="Credit Application" title="Credit Application" class="square">
                            <img src="../images/resources-wide-credit.jpg" alt="Credit Application" title="Credit Application" class="wide">
                            <div class="copy">
                                <p class="sub">Credit Application</p>
                                <p>Download our credit application in PDF format.</p>
                                <a href="/download-pdf.aspx?document=credit-application" title="Credit Application" target="_blank">Download</a>
                            </div>
                            <div class="clear"></div>
                        </li>

                        <li>
                            <img src="../images/resources-square-terms.jpg" alt="Terms and Conditions" title="Terms and Conditions" class="square">
                            <img src="../images/resources-wide-terms.jpg" alt="Terms and Conditions" title="Terms and Conditions" class="wide">
                            <div class="copy">
                                <p class="sub">Terms and Conditions</p>
                                <p>Download our Standard Terms and Conditions of Sale.</p>
                                <a href="/download-pdf.aspx?document=terms-and-conditions" title="Terms and Conditions" target="_blank">Download</a>
                            </div>
                            <div class="clear"></div>
                        </li>

                        <li>
                            <img src="../images/resources-square-claims.jpg" alt="Claim Form" title="Claim Form" class="square">
                            <img src="../images/resources-wide-claims.jpg" alt="Claim Form" title="Claim Form" class="wide">
                            <div class="copy">
                                <p class="sub">Claim Forms</p>
                                <p>Download our Customer Claim Form and Procedures.</p>
                                <a href="/download-pdf.aspx?document=structural-claim-form" title="Claim Form" target="_blank">Download</a>
                            </div>
                            <div class="clear"></div>
                        </li>

                        <li>
                            <img src="../images/resources-square-leed.jpg" alt="LEED Letter" title="LEED Letter" class="square">
                            <img src="../images/resources-leed-leed.jpg" alt="LEED Letter" title="LEED Letter" class="wide">
                            <div class="copy">
                                <p class="sub">LEED Letter</p>
                                <p>Method of manufacture, source materials and recycled content.</p>
                                <a href="/download-pdf.aspx?document=leed-letter" title="LEED Letter" target="_blank">Download</a>
                            </div>
                            <div class="clear"></div>
                        </li>

                        <li>
                            <img src="../images/resources-square-abs.jpg" alt="ABS Certificate" title="ABS Certificate" class="square">
                            <img src="../images/resources-wide-abs.jpg" alt="ABS Certificate" title="ABS Certificate" class="wide">
                            <div class="copy">
                                <p class="sub">ABS Certificate</p>
                                <p>Download our certificate of quality assurance for our rolled steel products.</p>
                                <a href="/download-pdf.aspx?document=abs-certificate" title="ABS Certificate" target="_blank">Download</a>
                            </div>
                            <div class="clear"></div>
                        </li>

                        <li>
                            <img src="../images/resources-square-iso.jpg" alt="ISO 9001:2008" title="ISO 9001:2008" class="square">
                            <img src="../images/resources-wide-iso.jpg" alt="ISO 9001:2008" title="ISO 9001:2008" class="wide">
                            <div class="copy">
                                <p class="sub">ISO 9001:2008</p>
                                <p>Registered as a manufacturer of steel blooms, billets, rails and structural products.</p>
                                <a href="/download-pdf.aspx?document=iso-9001-2008" title="ISO 9001:2008" target="_blank">Download</a>
                            </div>
                            <div class="clear"></div>
                        </li>
                        <li>
                            <img src="../images/resources-square-aar.jpg" alt="AAR Certification" title="AAR Certification" class="square">
                            <img src="../images/resources-wide-aar.jpg" alt="AAR Certification" title="AAR Certification" class="wide">
                            <div class="copy">
                                <p class="sub">AAR Certification</p>
                                <p>Download Our AAR certification in pdf format.</p>
                                <a href="/download-pdf.aspx?document=AAR-Certification"title="AAR Certification" target="_blank" ">Download</a>
                            </div>
                            <div class="clear"></div>                                                                                                                             
                    </ul>
                </div>
            </div>

            <div class="top"><a href="#top">TOP</a></div>
        </div>
        <!-- InstanceEndEditable -->

        <!-- the sidebar -->
        <aside class="sidebar">
            <h5>Side Navigation</h5>
            <div class="sideNav">
                <ul>
                    <li><a href="resources-overview.aspx" title="Overview" class="current">Resources Overview</a></li>
                    <li><a href="price-list.aspx" title="Price List" class="">Price List</a></li>
                    <li><a href="inventory-list.aspx" title="Inventory List" class="">Inventory List</a></li>
                    <li><a href="rolling-schedule.aspx" title="Rolling Schedule" class="">Rolling Schedule</a></li>
                    <li><a href="bundle-chart.aspx" title="Bundle Chart" class="">Bundle Chart</a></li>
                    <li><a href="freight-rate.aspx" title="Get Freight Rate" class="">Get Freight Rate</a></li>
                    <li><a href="msds.aspx" title="MSDS"class="">MSDS</a></li>
                    <li><a href="/download-pdf.aspx?document=credit-application" title="Credit Application" target="_blank" class="">Credit Application</a></li>
                    <li><a href="/download-pdf.aspx?document=terms-and-conditions" title="Terms and Conditions" target="_blank" class="">Terms and Conditions</a></li>
                    <li><a href="/download-pdf.aspx?document=structural-claim-form" title="Claim Forms" target="_blank" class="">Claim Forms</a></li>
                    <li><a href="/download-pdf.aspx?document=leed-letter" title="LEED Letter" target="_blank" class="">LEED Letter</a></li>
                    <li><a href="/download-pdf.aspx?document=abs-certificate" title="ABS Certificate" target="_blank" class="">ABS Certificate</a></li>
                    <li><a href="/download-pdf.aspx?document=iso-9001-2008" title="ISO 9001:2008" target="_blank" class="">ISO 9001:2008</a></li>
                   
                    <li><a href="/download-pdf.aspx?document=AAR-Certification" title="AAR Certification" target="_blank" class="">AAR Certification</a></li>
                </ul>
            </div>
            <div class="catalog">
                <a href="structural-product-guides.aspx" title="Product Guides" class="">Product Guides</a>
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
