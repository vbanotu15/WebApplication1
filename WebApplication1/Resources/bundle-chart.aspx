<%@ Page Title="" Language="C#" MasterPageFile="~/Master/Site.Master" AutoEventWireup="true" CodeBehind="bundle-chart.aspx.cs" Inherits="WebApplication1.Resources.bundle_chart" %>

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


    <asp:ScriptManager runat="server"></asp:ScriptManager>

    <div class="mainheader structuralresources clear">
        <h3 title="Resources">Resources</h3>
    </div>
    <div class="clear"></div>

    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>
            <div class="content">
                <!-- InstanceBeginEditable name="Area1" -->
                <div class="RightColumn">

                    <div id="breadcrumbs">
                        <ul>
                            <li><a href="resources-overview.aspx">Resources Overview</a></li>
                            <li><a href="bundle-chart.aspx" class="current">Bundle Chart</a></li>
                        </ul>
                    </div>


                    <div class="clear"></div>

                    <%--<table id="Table1" runat="server"><tr><td>--%>
                    <div class="col1">
                        <div class="mysdiNav" style="text-align: left; margin-left: 0;">
                            <ul>
                                <li><a href="#beam" class="current">Beam</a></li>
                                <li><a href="#merchant">Merchant</a></li>
                            </ul>
                        </div>
                        <div class="col1 margintop1">
                            <table class="Date margintop1">
                                <tbody>
                                    <tr>
                                        <td class="width1">
                                            <p class="bold">
                                                <asp:Label ID="lblRepDate" runat="server" Text=" Bundle chart as reported:" Font-Bold="true"></asp:Label>
                                            </p>
                                        </td>
                                        <td class="width2">
                                            <p>
                                                <asp:Label ID="lblReportDate" runat="server" Font-Bold="true"></asp:Label>
                                            </p>
                                        </td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                        <br />
                        <table>
                            <tr>
                                <asp:ImageButton ID="btnPDFDownload" runat="server" ImageUrl="../Style/images/pdf_icon.png" OnClick="btnPDFDownload_Click" Style="width: 50px; border: 1px Ridge Silver; background-color: White" CssClass="auto-style1" />
                                <asp:ImageButton ID="btnXlsDownload" runat="server" ImageUrl="../Style/images/XLS_icon.png" OnClick="btnXlsDownload_Click" Style="width: 50px; border: 1px Ridge Silver; background-color: White" />
                            </tr>
                        </table>
                    </div>

                    <div id="beam" class="beam-list-panel">
                        <div class="col4 A">
                            <div class="mobilebutton" data-toggle="expandable-BW">
                                <b></b>
                                <h5><span class="sprite plus"></span><span class="sprite minus"></span><b>Beam Section</b></h5>
                                </b>
                            </div>
                            <div class="results">
                                <asp:GridView ID="GvBeamBundle" runat="server" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" AutoGenerateColumns="false"
                                    CellPadding="4" ForeColor="Black" GridLines="Vertical" ShowHeader="true">
                                    <AlternatingRowStyle BackColor="White" />
                                    <Columns>
                                        <asp:BoundField DataField="Product" HeaderStyle-Width="120px" HeaderText="Product" SortExpression="Product" />
                                        <asp:BoundField DataField="Bundle" HeaderStyle-Width="150px" HeaderText="Lb/Ft" SortExpression="Bundle" />
                                        <asp:BoundField DataField="bundle_pieces" HeaderText="PCS 30'-65'" SortExpression="bundle_pieces" />
                                        <asp:BoundField DataField="WxH" HeaderText="WxH" SortExpression="WxH" />
                                    </Columns>
                                    <FooterStyle BackColor="#CCCCCC" />
                                    <HeaderStyle BackColor="White" Font-Bold="True" ForeColor="Black" />
                                    <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Right" />
                                    <RowStyle BackColor="#dbdbd6" />
                                    <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                                    <SortedAscendingCellStyle BackColor="#F1F1F1" />
                                    <SortedAscendingHeaderStyle BackColor="#808080" />
                                    <SortedDescendingCellStyle BackColor="#CAC9C9" />
                                    <SortedDescendingHeaderStyle BackColor="#383838" />
                                </asp:GridView>
                            </div>
                        </div>

                        <div class="col4 B">
                            <div class="mobilebutton" data-toggle="expandable-BC">
                                <b></b>
                                <h5><span class="sprite plus"></span><span class="sprite minus"></span><b>BUNDLE CHART</b></h5>
                                </b>
                            </div>
                            <div class="results">
                                <asp:GridView ID="GvBundleChartBeam" runat="server" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" AutoGenerateColumns="false"
                                    CellPadding="4" ForeColor="Black" GridLines="Vertical" ShowHeader="true">
                                    <AlternatingRowStyle BackColor="White" />
                                    <Columns>
                                        <asp:BoundField DataField="Product" HeaderStyle-Width="120px" HeaderText="Product" SortExpression="Product" />
                                        <asp:BoundField DataField="Thickness" HeaderStyle-Width="120px" HeaderText="Thickness" SortExpression="Thickness" />
                                        <asp:BoundField DataField="LBFT" HeaderStyle-Width="120px" HeaderText="Lb/Ft" SortExpression="LBFT" />
                                        <asp:BoundField DataField="PCS_2040" HeaderText="PCS 20'-40'" SortExpression="PCS_2040" />
                                        <asp:BoundField DataField="PCS_4160" HeaderText="PCS 41'-60'" SortExpression="PCS_4160" />
                                    </Columns>
                                    <FooterStyle BackColor="#CCCCCC" />
                                    <HeaderStyle BackColor="White" Font-Bold="True" ForeColor="Black" />
                                    <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Right" />
                                    <RowStyle BackColor="#bdbdbd6" />
                                    <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                                    <SortedAscendingCellStyle BackColor="#F1F1F1" />
                                    <SortedAscendingHeaderStyle BackColor="#808080" />
                                    <SortedDescendingCellStyle BackColor="#CAC9C9" />
                                    <SortedDescendingHeaderStyle BackColor="#383838" />
                                </asp:GridView>
                            </div>
                        </div>

                    </div>
                    <div id="merchant" class="beam-list-panel" style="display: none">
                        <div class="col4 A">
                            <div class="mobilebutton" data-toggle="expandable-MB">
                                <h5><span class="sprite plus"></span><span class="sprite minus"></span><b>Merchant Section</b></h5>
                            </div>
                            <div class="results">
                                <asp:GridView ID="GvMerchantBundle" runat="server" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" AutoGenerateColumns="false"
                                    CellPadding="4" ForeColor="Black" GridLines="Vertical" ShowHeader="true">
                                    <AlternatingRowStyle BackColor="White" />
                                    <Columns>
                                        <asp:BoundField DataField="Product" HeaderStyle-Width="120px" HeaderText="Product" SortExpression="Product" />
                                        <asp:BoundField DataField="Bundle" HeaderStyle-Width="150px" HeaderText="Lb/Ft" SortExpression="Bundle" />
                                        <asp:BoundField DataField="bundle_pieces" HeaderText="PCS 20'-40'" SortExpression="bundle_pieces" />
                                        <asp:BoundField DataField="WxH" HeaderText="WxH" SortExpression="WxH" />
                                    </Columns>
                                    <FooterStyle BackColor="#CCCCCC" />
                                    <HeaderStyle BackColor="White" Font-Bold="True" ForeColor="Black" />
                                    <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Right" />
                                    <RowStyle BackColor="#dbdbd6" />
                                    <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                                    <SortedAscendingCellStyle BackColor="#F1F1F1" />
                                    <SortedAscendingHeaderStyle BackColor="#808080" />
                                    <SortedDescendingCellStyle BackColor="#CAC9C9" />
                                    <SortedDescendingHeaderStyle BackColor="#383838" />
                                </asp:GridView>
                            </div>
                        </div>
                        <div class="col4 B">
                            <div class="mobilebutton" data-toggle="expandable-MC">
                                <h5><span class="sprite plus"></span><span class="sprite minus"></span><b>BUNDLE CHART</b></h5>
                            </div>
                            <div class="results">
                                <asp:GridView ID="GvBundleChartMerchant" runat="server" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" AutoGenerateColumns="false"
                                    CellPadding="4" ForeColor="Black" GridLines="Vertical" ShowHeader="true">
                                    <AlternatingRowStyle BackColor="White" />
                                    <Columns>
                                        <asp:BoundField DataField="Product" HeaderStyle-Width="120px" HeaderText="Product" SortExpression="Product" />
                                        <asp:BoundField DataField="Thickness" HeaderStyle-Width="120px" HeaderText="Thickness" SortExpression="Thickness" />
                                        <asp:BoundField DataField="LBFT" HeaderStyle-Width="120px" HeaderText="Lb/Ft" SortExpression="LBFT" />
                                        <asp:BoundField DataField="PCS_2040" HeaderText="PCS 20'-40'" SortExpression="PCS_2040" />
                                        <asp:BoundField DataField="PCS_4160" HeaderText="PCS 41'-60'" SortExpression="PCS_4160" />
                                    </Columns>
                                    <FooterStyle BackColor="#CCCCCC" />
                                    <HeaderStyle BackColor="White" Font-Bold="True" ForeColor="Black" />
                                    <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Right" />
                                    <RowStyle BackColor="#bdbdbd6" />
                                    <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                                    <SortedAscendingCellStyle BackColor="#F1F1F1" />
                                    <SortedAscendingHeaderStyle BackColor="#808080" />
                                    <SortedDescendingCellStyle BackColor="#CAC9C9" />
                                    <SortedDescendingHeaderStyle BackColor="#383838" />
                                </asp:GridView>
                            </div>
                        </div>
                    </div>

                    <%-- </td></tr></table>--%>
                    <div class="clear"></div>

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
                            <li><a href="rolling-schedule.aspx" title="Rolling Schedule" class="">Rolling Schedule</a></li>
                            <li><a href="bundle-chart.aspx" title="Bundle Chart" class="current">Bundle Chart</a></li>
                            <li><a href="freight-rate.aspx" title="Get Freight Rate" class="">Get Freight Rate</a></li>
                            <li><a href="msds.aspx" title="MSDS" target="_blank" class="">MSDS</a></li>
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
        </ContentTemplate>
        <Triggers>
            <asp:PostBackTrigger ControlID="btnPDFDownload" />
            <asp:PostBackTrigger ControlID="btnXlsDownload" />
        </Triggers>
    </asp:UpdatePanel>
    <%--<asp:UpdateProgress ID="UpdateProgress1" runat="server">
        <ProgressTemplate>
            <div id="Background">
            </div>
            <div id="Progress">
                <img src="../Images/LoadingImage.gif" alt="" />
            </div>
        </ProgressTemplate>
    </asp:UpdateProgress>--%>
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
