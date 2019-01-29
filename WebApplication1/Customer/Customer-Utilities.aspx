<%@ Page Title="" Language="C#" MasterPageFile="~/Master/Site.Master" AutoEventWireup="true" CodeBehind="Customer-Utilities.aspx.cs" Inherits="WebApplication1.Customer.Customer_Utilities" %>

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
        .mainheader.structuralcontact {            
            background-image: url(../images/headers/structural-contact-header.jpg);
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


        element.style {
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
    <div class="mainheader structuralcontact clear">
        <h3 title="Customer Utilities">Customer Utilities</h3>       
        <h5 style="margin-left: 30px; color: white; font-weight: bold">&nbsp;Our resources at your fingertips.</h5>
    </div>
    <!-- End Header Image -->

    <div class="clear"></div>
    <!-- the content -->
    <div class="content">
        <!-- InstanceBeginEditable name="Area1" -->
        <div class="RightColumn">

            <div class="col1 margintop1">
                <h4 title="Customer Utilities">Customer Utilities</h4>                
            </div>

            <div class="col1 one">
                <div class="Items">

                    <ul>
                        <li>                            
                            <img src="../Style/images/office_report_sm.png" alt="Reporting" title="Reporting" class="square">
                            <img src="../Style/images/office_report_sm.png" alt="Reporting" title="Reporting" class="wide">
                            <div class="copy">
                                <p class="sub">Reporting</p>
                                <p>View current Customer Reporting on hand with a simple click.</p>
                                <a href="Reporting.aspx">Access</a>
                            </div>
                            <div class="clear"></div>
                        </li>

                        <li>                             
                            <img src="../Style/images/truck_button.png" alt="Freight Rate" title="Freight Rate" class="square">
                            <img src="../Style/images/truck_button.png" alt="Freight Rate" title="Freight Rate" class="wide">
                            <div class="copy">
                                <p class="sub">Freight Rate</p>
                                 <p>View current Freight Rate on hand with a simple click.</p>
                                <a href="Freight-Rate.aspx">Access</a>
                            </div>
                            <div class="clear"></div>
                        </li>
                        <li>
                            <img src="../Style/images/sample_user.png" alt="Profile" title="Profile" class="square">
                            <img src="../Style/images/sample_user.png" alt="Profile" title="Profile" class="wide">
                            <div class="copy">
                                <p class="sub">User Profile</p>
                                 <p>View Customer Profile on hand with a simple click.</p>
                                <a href="Profile.aspx">Access</a>
                            </div>
                            <div class="clear"></div>
                        </li>


                        <li>
                            <img src="../Style/images/manage_users.png" alt="User Management" title="User Management" class="square">
                            <img src="../Style/images/manage_users.png" alt="User Management" title="User Management" class="wide">
                            <div class="copy">
                                <p class="sub">Manage Users</p>
                                 <p>View User Management on hand with a simple click.</p>
                                <a href="User-Management.aspx">Access</a>
                            </div>
                            <div class="clear"></div>
                        </li>

                        <li>
                            <img src="../Style/images/web_maint.png" alt="Web Management" title="Web Management" class="square">
                            <img src="../Style/images/web_maint.png" alt="Web Management" title="Web Management" class="wide">
                            <div class="copy">
                                <p class="sub">Website Admin</p>
                                 <p>View Web Management on hand with a simple click.</p>
                                <a href="Web-Management.aspx">Access</a>
                            </div>
                            <div class="clear"></div>
                        </li>                          
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
                    <li><a href="Customer-Utilities.aspx" title="Overview" class="current">Customer Utilities</a></li>
                    <li><a href="Reporting.aspx" title="Price List" class="">Reporting</a></li>
                     <li><a href="Freight-Rate.aspx" title="Price List" class="">Freight Rate</a></li>
                     <li><a href="Profile.aspx" title="Price List" class="">User Profile</a></li>
                     <li><a href="User-Management.aspx" title="Price List" class="">Manage Users</a></li>
                     <li><a href="Web-Management.aspx" title="Price List" class="">Website Admin</a></li>
                    
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
