<%@ Page Title="" Language="C#" MasterPageFile="~/Master/Site.Master" AutoEventWireup="true" CodeBehind="rolling-schedule.aspx.cs" Inherits="WebApplication1.Resources.rolling_schedule" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <link rel="canonical" href="https://www.sdi-structural.com/resources/resources-overview.aspx" />
    <link href='//fonts.googleapis.com/css?family=Montserrat:400,700|Lora:400,400italic,700,700italic|Muli:400,300italic,300' rel='stylesheet' type='text/css' />
    <script src="../JS/modernizr-custom.js"></script>
    <script>
        if (!Modernizr.svg) var i = document.getElementsByTagName("img"), j, y; for (j = i.length; j--;)y = i[j].src, y.match(/svg$/) && (i[j].src = y.slice(0, -3) + "png")</script>

    <link href="../Style/css/tier2-sdi-structural.css" rel="stylesheet" type="text/css">
    <link href="../Style/css/tools-sdi.css" rel="stylesheet" type="text/css">
    <link href="../Style/css/form-sdi.css" rel="stylesheet" type="text/css">
    <link href='//fonts.googleapis.com/css?family=Montserrat:400,700|Lora:400,400italic,700,700italic|Muli:400,300italic,300' rel='stylesheet' type='text/css'>
    <script src="../js/modernizr-custom.js"></script>
    <link rel="stylesheet" href="../Style/css/tables.css" />

    <style>
        #Background {
            position: fixed;
            top: 0px;
            bottom: 0px;
            left: 0px;
            right: 0px;
            background-color: Gray;
            filter: alpha(opacity=40);
            opacity: 0.4;
            z-index: 1006;
        }

        #Progress {
            position: fixed;
            top: 30%;
            left: 48%;
            z-index: 1006;
        }

        body {
            background-image: url(../images/body.jpg);
            background-position: left top;
            padding-right: 0px;
            background-color: #FFFFFF;
            background-repeat: repeat;
            margin-top: 0px;
            font-size: 16px; /* font size of the body based on the browser 16px **/
            font-size: 100%;
        }

        .mainheader.structuralresources {
            background-image: url(../images/headers/strucutural-resources-header.jpg);
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
            background-image: url(../../images/tier2/small-red-arrow.png);
            background-repeat: no-repeat;
            background-position: 0px 1px;
            padding-left: 25px;
        }

        .col1 ul.bullets li {
            display: block;
            font-size: 15px; /*15px ÷ 16px*/
            line-height: 20px; /*20px ÷ 15px*/
            font-family: 'Muli', sans-serif;
            font-weight: 400;
            color: #313131;
            padding-bottom: 8px;
            padding-left: 15px;
            background-image: url(../images/tier2/grey-bullet.png);
            background-repeat: no-repeat;
            background-position: 0px 12px;
            padding-top: 8px;
        }

        .content h5 {
            font-size: 17px;
            font-family: 'Montserrat', sans-serif;
            font-weight: 400;
            color: #424242;
            padding-bottom: 10px;
        }

        .contet h4 {
            font-family: arial, sans-serif;
            border-collapse: collapse;
            width: 100%;
        }

        td {
            border: 1px solid #d9d9d9bd;
            text-align: left;
            padding: 0px;
        }

        th {
            border: 1px solid #585858;
            text-align: left;
            padding: 4px;
        }


        .mobilebutton .sprite {
            display: none;
            background-image: url(../images/sdi-sprites.png);
        }

        .close {
            display: block;
            float: right;
            width: 30px;
            height: 28px;
            margin-right: 8px;
            background-image: url(../images/sdi-sprites.png);
            background-position: 0px 60px;
            margin-top: 10px;
        }

        .sprite.plus {
            background-position: 0px 90px;
            display: block;
        }

        .expanded .results {
            height: auto;
            padding: 10px 0;
            -webkit-transition: padding .6s ease-in-out;
            -moz-transition: padding .6s ease-in-out;
            -ms-transition: padding .6s ease-in-out;
            -o-transition: padding .6s ease-in-out;
            transition: padding .6s ease-in-out;
        }
    </style>

    <style>
        @media screen and (max-width: 956px) and (min-width: 767px) {

            input.textfield3 {
                width: 470px;
                margin-top: 0px;
            }

            table.fullColumn,
            table.twoColumn {
                width: 60%;
            }

            td p.white {
                padding-bottom: 0px;
            }

            td p.grey {
                padding-bottom: 0px;
            }

            table.fullColumn td,
            table.twoColumn td {
                padding: 0px 8px 8px 8px;
                height: 0px;
            }
        }


        @media screen and (max-width: 625px) {
            .desktopchart {
                display: none;
            }

            .mobilechart {
                display: block;
            }


            table.threeColumn {
                width: 100%;
                margin-right: 0px;
            }

            m

            table.fullColumn,
            table.twoColumn {
                width: 100%;
                margin-bottom: 15px;
            }

            m
            .mobilebutton {
                display: block;
                background-color: #CECECE;
                padding-left: 15px;
                padding-right: 15px;
                padding-top: 15px;
                padding-bottom: 8px;
                cursor: pointer;
            }

            .mobilebutton .sprite {
                display: block;
                width: 30px;
                height: 28px;
                float: left;
                margin-right: 8px;
                margin-top: -5px;
            }

            .sprite.plus {
                background-position: 0px 90px;
                display: block;
            }

            .sprite.minus {
                background-position: 30px 90px;
                display: none;
            }

            .expanded .sprite.plus {
                display: none;
            }

            .expanded .sprite.minus {
                display: block;
            }

            .results {
                height: 0;
                overflow: hidden;
                -webkit-transition: padding .6s ease-in-out;
                -moz-transition: padding .6s ease-in-out;
                -ms-transition: padding .6s ease-in-out;
                -o-transition: padding .6s ease-in-out;
                transition: padding .6s ease-in-out;
            }

            .expanded .results {
                height: auto;
                padding: 10px 0;
                -webkit-transition: padding .6s ease-in-out;
                -moz-transition: padding .6s ease-in-out;
                -ms-transition: padding .6s ease-in-out;
                -o-transition: padding .6s ease-in-out;
                transition: padding .6s ease-in-out;
            }




            .mobilebutton h5 span.fa.fa-plus-circle {
                display: inline-block;
                vertical-align: middle;
                padding-right: 10px;
                font-size: 35px;
            }

            .mobilebutton h5 span.fa.fa-minus-circle {
                display: inline-block;
                vertical-align: middle;
                padding-right: 10px;
                font-size: 35px;
            }
        }
    </style>

    <div class="mainheader structuralresources clear">
        <h3 title="Resources">Resources</h3>
    </div>
    <div class="clear"></div>

    <div class="content">
        <!-- InstanceBeginEditable name="Area1" -->
        <div class="RightColumn">

<div id="breadcrumbs">
<ul>
<li><a href="resources-overview.html">Resources Overview</a></li>
<li><a href="rolling-schedule.php" class="current">Rolling Schedule</a></li>
</ul>
</div>
<div class="clear"></div>

<div class="col1 margintop1">
    <h4 title="Rolling Schedule">Rolling Schedule</h4>
    <div class="clear spacer25"></div>

    <p>Rolling Order changes beginning week 24</p>
   
    <p><input type="button" class="button" value="Download PDF" onclick="window.open('/download-pdf.aspx?document=rolling-schedule');"></p>

</div>

<!--Begin Desktop Chart-->
<div class="col1" id="rolling-schedule-container">

    <h4>Medium Section Mill Products</h4>
    <p>All cast dates are subject to change without notice.</p>

    <div class="columns">
        <div class="column">
           <%--<p style="margin: 0 0 5px 0; padding: 0;  color: red !important;"> CommentData</p>--%>
           <%-- <?php if( count($msmComments)) : ?>
                <?php foreach($msmComments as $comment) : ?>
                    <p style="margin: 0 0 5px 0; padding: 0;  color: red !important;"><?php echo $comment->CommentData ?></p>
                <?php endforeach; ?>
            <?php endif; ?>--%>
        </div>

        <div class="column">
            <span style="max-width: 200px;">
                <p style=" color:#009;">Numbers following code letters indicate week product will roll.</p>
            </span>
        </div>

    </div>

    <p>&nbsp;</p>


    <div class="horizontal-scroll">

        <div class="key">
            <table class="data">

                <tr>
                    <td style="color: #ff0000">C = Closed</td>
                    <td style="color: #ff0000">CC = Cast</td>
                    <td style="color: #ff0000">CR = Cast/Rolled</td>
                    <td style="color: #0000ff">O = Open</td>
                    <td style="color: #0000ff">I = Inquire</td>
                    <td style="color: #0000ff">STA = Subject to Accumulation</td>
                </tr>

            </table>
        </div>

       <%-- <?php echo $msmTable; ?>--%>
        
    </div>

    <div class="clear spacer25"></div>

    <h4>Heavy Section Mill Products</h4>
    <p>All cast dates are subject to change without notice.</p>

    <div style="overflow: hidden;">
        <div style="display: inline-block; vertical-align: middle; padding: 0 5% 0 0; width: 49.5%; box-sizing: border-box">
             <%--<p style="margin: 0 0 5px 0; padding: 0;  color: red !important;"> CommentData    </p>--%>
          <%--  <?php if( count($hsmComments)) : ?>
                <?php foreach($hsmComments as $comment) : ?>
                    <p style="margin: 0 0 5px 0; padding: 0;  color: red !important;"><?php echo $comment->CommentData ?></p>
                <?php endforeach; ?>
            <?php endif; ?>--%>
        </div>

        <div style="display: inline-block; vertical-align: middle; padding: 0 0 0 5%; width: 49.5%; box-sizing: border-box">
            <span style="max-width: 200px;">
                <p style=" color:#009;">Numbers following code letters indicate week product will roll.</p>
            </span>
        </div>

    </div>
    <div class="key">
        <table class="data">

            <tr>
                <td style="color: #ff0000">C = Closed</td>
                <td style="color: #ff0000">CC = Cast</td>
                <td style="color: #ff0000">CR = Cast/Rolled</td>
                <td style="color: #0000ff">O = Open</td>
                <td style="color: #0000ff">I = Inquire</td>
            </tr>

        </table>
    </div>

    <div class="clear spacer25"></div>

    <div class="horizontal-scroll">

        <%--<?php echo $hsmTable; ?>--%>
    </div>


</div>
<!--End Desktop Chart-->


<div class="clear spacer25"></div>

<div class="top"><a href="#top">TOP</a></div> 

</div>
        <!-- InstanceEndEditable -->
        <!-- the sidebar -->
        <aside class="sidebar">
            <h5>Side Navigation</h5>

            <div class="sideNav">
                <ul>
                    <li><a href="resources-overview.aspx" title="Overview" class="">Resources Overview</a></li>
                    <li><a href="price-list.aspx" title="Price List" class="">Price List</a></li>
                    <li><a href="inventory-list.aspx" title="Inventory List" class="">Inventory List</a></li>
                    <li><a href="rolling-schedule.aspx" title="Rolling Schedule" class="current">Rolling Schedule</a></li>
                    <li><a href="bundle-chart.aspx" title="Bundle Chart" class="">Bundle Chart</a></li>
                    <li><a href="freight-rate.aspx" title="Get Freight Rate" class="">Get Freight Rate</a></li>
                    <li><a href="msds.aspx" title="MSDS" target="_blank" class="">MSDS</a></li>
                    <li><a href="/download-pdf.aspx?document=credit-application" title="Credit Application"
                        target="_blank" class="">Credit Application</a></li>
                    <li><a href="/download-pdf.aspx?document=terms-and-conditions" title="Terms and Conditions"
                        target="_blank" class="">Terms and Conditions</a></li>
                    <li><a href="/download-pdf.aspx?document=structural-claim-form" title="Claim Forms" target="_blank"
                        class="">Claim Forms</a></li>
                    <li><a href="/download-pdf.aspx?document=leed-letter" title="LEED Letter" target="_blank" class="">LEED
							Letter</a></li>
                    <li><a href="/download-pdf.aspx?document=abs-certificate" title="ABS Certificate" target="_blank"
                        class="">ABS Certificate</a></li>
                    <li><a href="/download-pdf.aspx?document=iso-9001-2008" title="ISO 9001:2008" target="_blank"
                        class="">ISO 9001:2008</a></li>
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

    <script>
        if (!Modernizr.svg) var i = document.getElementsByTagName("img"), j, y;
        for (j = i.length; j--;)y = i[j].src, y.match(/svg$/) && (i[j].src = y.slice(0, -3) + "png")</script>
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
    <!--Add Scripts here-->
    <!-- InstanceBeginEditable name="Scripts" -->
    <script src="/js/enquire.min.js"></script>
    <script src="/js/jquery.floatThead.min.js"></script>
    <script src="/js/jquery.tablesorter.min.js"></script>
    <script src="/js/global.js"></script>
    <div>
        <script>
            $(function () {
                var $toggles = $('.mysdiNav').find('a');

                var $activeToggle = null;
                var $activePanel = null;

                $toggles.each(function (index) {
                    var $toggle = $(this);
                    var href = $toggle.attr('href');
                    var $panel = $(href);
                    $toggle.data('$panel', $panel);

                    if ($activePanel === null) {
                        $activePanel = $panel;
                        $activeToggle = $toggle;
                    }

                    $toggle.on('click', function (e) {
                        e.preventDefault();
                        var $toggle = $(this);

                        $activeToggle.removeClass('current');
                        $activePanel.hide();

                        $activeToggle = $toggle.addClass('current');
                        $activePanel = $toggle.data('$panel').show();
                    });
                });


            })
        </script>
    </div>

</asp:Content>
