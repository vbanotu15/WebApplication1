<%@ Page Title="" Language="C#" MasterPageFile="~/Master/Site.Master" AutoEventWireup="true" CodeBehind="Inventory-List.aspx.cs" Inherits="WebApplication1.Resources.Inventory_List" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <!-- InstanceEndEditable -->
    <link href="../Style/css/tier2-sdi-structural.css" rel="stylesheet" type="text/css">
    <link href="../Style/css/tools-sdi.css" rel="stylesheet" type="text/css">
    <link href="../Style/css/form-sdi.css" rel="stylesheet" type="text/css">
    <link href='//fonts.googleapis.com/css?family=Montserrat:400,700|Lora:400,400italic,700,700italic|Muli:400,300italic,300' rel='stylesheet' type='text/css'>
    <script src="../js/modernizr-custom.js"></script>
    <link rel="stylesheet" href="../Style/css/tables.css" />

    <asp:ScriptManager runat="server"></asp:ScriptManager>

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

        .red {
            color: red;
        }

        .black {
            color: black;
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

        .margintop1 {
            margin-top: 2.857142857142857%; /*25px ÷ 875px*/
        }

        .content p {
            color: #424242;
            line-height: 22px; /*22px ÷ 15px*/
            font-size: 15px; /*15px ÷ 16px*/
        }

            .content p span.bold {
                font-weight: 700;
            }

        table {
            border-collapse: collapse;
            border-spacing: 0;
        }

        select {
            height: 45px;
            border-radius: 4px;
            display: inline-block;
            outline: none;
            cursor: pointer;
            background-color: #E5E5E5;
            color: #424242;
            border: none;
            padding-left: 10px;
            font-size: 15px;
            font-family: 'Montserrat', sans-serif;
            font-weight: 400;
            -webkit-appearance: none;
        }


            select.width2 {
                width: 100%; /*500px ÷ 850px*/
            }

        .auto-style1 {
            width: 80px;
            margin-left: 68;
        }

        .modal {
            position: fixed;
            top: 0;
            left: 0;
            background-color: black;
            z-index: 99;
            opacity: 0.8;
            filter: alpha(opacity=80);
            /*-moz-opacity: 0.8;*/
            min-height: 100%;
            width: 100%;
        }

        .loading {
            font-family: Arial;
            font-size: 10pt;
            border: 5px solid #67CFF5;
            width: 200px;
            height: 100px;
            display: none;
            position: fixed;
            background-color: White;
            z-index: 999;
        }

        element.style {
            position: absolute;
            left: 1.000in;
            top: 1.385in;
            width: 0.875in;
            height: 0.375in;
        }

        .auto-style2 {
            width: 100%;
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

        td, {
            border: 1px solid #d9d9d9bd;
            text-align: left;
            padding: 0px;
        }

        th {
            border: 1px solid #585858;
            text-align: left;
            padding: 4px;
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

    </style>

    <%--<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.8.3/jquery.min.js"></script>
    <script type="text/javascript">
        function ShowProgress() {
            setTimeout(function () {
                var modal = $('<div />');
                modal.addClass("modal");
                $('body').append(modal);
                var loading = $(".loading");
                loading.show();
                var top = Math.max($(window).height() / 2 - loading[0].offsetHeight / 2, 0);
                var left = Math.max($(window).width() / 2 - loading[0].offsetWidth / 2, 0);
                loading.css({ top: top, left: left });
            }, 200);
        }
        $('form').live("submit", function () {
            ShowProgress();
        });
    </script>--%>
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
                            <li><a href="inventory-list.aspx" class="current">Inventory List</a></li>
                        </ul>
                    </div>
                    <div class="clear">
                    </div>
                    <div class="col1 margintop1">
                        <h4 title="Inventory List">Inventory List</h4>
                        <table class="Date margintop1">
                            <tbody>
                                <tr>
                                    <td class="width1">
                                        <p class="bold">
                                            <asp:Label ID="lblRepDate" runat="server" Text="Inventory as reported:" Font-Bold="true"></asp:Label>
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
                        <div class="clear spacer25"></div>
                        <p>We have the following products in stock:</p>
                        <table style="width: 90%" class="col1 margintop1">
                            <tr>
                                <td style="text-align: center; font-weight: bold">Class</td>
                                <td style="text-align: center; font-weight: bold">Size</td>
                                <td style="text-align: center; font-weight: bold">Length</td>
                                <td style="text-align: center; font-weight: bold">Grade</td>
                            </tr>
                            <tr>
                                <td style="width: 25%">
                                    <asp:DropDownList runat="server" ID="ddlProdClass" Width="90%" CssClass="dropdown_class" AutoPostBack="true" OnSelectedIndexChanged="ddlProdClass_SelectedIndexChanged">
                                        <asp:ListItem Text="All" Value="" />
                                        <asp:ListItem Text="Wide Flange Sections" Value="WIDEFLANGE" />
                                        <asp:ListItem Text="Miscellaneous Channel" Value="MC-CHANNEL" />
                                        <asp:ListItem Text="Blooms and Beam Blanks" Value="BB-BLANK" />
                                        <asp:ListItem Text="American Standard Channel" Value="C-CHANNEL" />
                                        <asp:ListItem Text="Miscellaneous Shapes" Value="M-SHAPE" />
                                        <asp:ListItem Text="Angles" Value="ANGLE" />
                                        <asp:ListItem Text="American Standard Beams" Value="S-BEAM" />
                                        <asp:ListItem Text="H-Piling Sections" Value="H-PILE" />
                                    </asp:DropDownList>
                                </td>
                                <td style="width: 25%">

                                    <asp:DropDownList runat="server" ID="ddlProdSize" Width="90%" CssClass="dropdown_class">
                                        <asp:ListItem Text="(All)" Value="%" />
                                    </asp:DropDownList>
                                </td>
                                <td style="width: 25%">

                                    <asp:DropDownList runat="server" ID="ddlProdLength" Width="90%" CssClass="dropdown_class">
                                        <asp:ListItem Text="(All)" Value="%" />
                                    </asp:DropDownList>

                                </td>
                                <td style="width: 25%">

                                    <asp:DropDownList runat="server" ID="ddlProdGrade" Width="90%" CssClass="dropdown_class">
                                        <asp:ListItem Text="(All)" Value="%" />
                                    </asp:DropDownList>

                                </td>
                            </tr>
                        </table>
                        <br />
                        <table>
                            <tr>
                                <td>
                                    <asp:Button runat="server" CssClass="gray button" ID="btnReset1" OnClick="btnReset1_Click" Text="Reset" /></td>
                                <td style="border: 0; border-right: 2px Solid Silver">&nbsp;</td>
                                <td>
                                    <asp:Button runat="server" CssClass="red button" ID="btnSearch" Text="Search" Style="margin-left: 5px" OnClick="btnSearch_Click" /></td>
                            </tr>
                        </table>
                        <br />

                        <hr />

                        <asp:Panel ID="PanNoRecord" runat="server" ScrollBars="Both" BorderWidth="1px" Visible="false" Height="613px" class="col1 margintop1">
                            <p style="color: red; font-weight: bold; text-align: center">
                                This query returned no results. You might return and try different criteria.
                            </p>
                        </asp:Panel>

                        <asp:Panel ID="pan1" runat="server" ScrollBars="Both" BorderWidth="1px" Visible="false" Height="613px" class="col1 margintop1">
                            <%--<div runat="server" id="report_header" style="position: fixed; height: 50px; width: 100%; top: 0px; z-index: 1000" visible="true">--%>
                            <table>
                                <tr>
                                    <td runat="server" id="pdf_td" align="left">
                                        <asp:ImageButton ID="btnPDFDownload" runat="server" ImageUrl="../Style/images/pdf_icon.png" OnClick="btnPDFDownload_Click" Style="width: 50px; border: 1px Ridge Silver; background-color: White" CssClass="auto-style1" />
                                        <asp:ImageButton ID="btnXlsDownload" runat="server" ImageUrl="../Style/images/XLS_icon.png" OnClick="btnDownloadExce_Click" Style="width: 50px; border: 1px Ridge Silver; background-color: White" />
                                    </td>
                                </tr>
                            </table>
                            <%-- </div>--%>

                            <table runat="server" id="TableHTml" class="col1 margintop1">
                                <tr>
                                    <td style="text-align: center; vertical-align: top">
                                        <div runat="server" id="report_body" style="text-align: left; vertical-align: top">
                                            <table style="border-style: none; border-color: inherit; border-width: 2px; padding-top: 0px; vertical-align: top" class="col1 margintop1">
                                                <tr style="padding-top: 0px; vertical-align: top; border: 1px solid #000;">
                                                    <td>
                                                       <%-- <div style="width: 500px; height: 100px;">
                                                            <asp:Image ID="LogImg" runat="server" ImageUrl="~/Style/SDI_SALES_LOGO.jpg" Width="70%" />
                                                        </div>
                                                        <br />
                                                        <asp:Label ID="lblTitle" runat="server" Text="Inventory Available for Sale for " Style="font-weight: bold; font-size: medium; font-family: Arial;"></asp:Label>--%>
                                                        <asp:Label ID="lblTitleDate" runat="server" Style="display:none; font-size: medium; font-weight: bold; font-family: Arial" Font-Overline="False"></asp:Label>
                                                       
                                                         <p style="color:red;resize:both;font-size:medium">$1/CWT EXTRA FOR STOCK SALES ON INVENTORY PRICE LIST SIZES - EFFECTIVE                                                       
                                                        <asp:Label ID="lblTt1" runat="server" Style="font-size: medium;font-weight:bold; font-family: Arial"></asp:Label>  </p>
                                                    </td>
                                                   <%-- <td style="text-align: center; width: 500%; height: 100px; padding-top: 0px; vertical-align: top">
                                                        <b><strong>Structural and Rail Division</strong></b>
                                                        <br />
                                                        2601 South 700 East                                 
                                                    Columbia City, Indiana 46725<br />
                                                        Phone (260) 625-8100<br />
                                                        Fax: (260) 625-8770<br />
                                                        Toll Free: (866) 740-8700<br />
                                                        Sales office hours:
                                                        <br />
                                                        M - F 7:30 am - 5:30 pm EST                                             
                                                    </td>--%>
                                                </tr>
                                            </table>
                                            <br />
                                            <table runat="server" id="Table1" class="col1 margintop1">
                                                <tr>
                                                    <td rowspan="1">

                                                        <asp:GridView ID="gvInventoryList" runat="server" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" AutoGenerateColumns="false"
                                                            CellPadding="4"  ForeColor="Black" GridLines="Vertical" >
                                                            <AlternatingRowStyle BackColor="White" />
                                                            <Columns>
                                                                <asp:BoundField DataField="C_PROD_SIZE_ID" HeaderStyle-Width="100px" HeaderText="Size" SortExpression="C_PROD_SIZE_ID" />
                                                                <asp:BoundField DataField="C_EXT_GRD_ID" HeaderStyle-Width="100px" HeaderText="Grade" SortExpression="C_EXT_GRD_ID" />
                                                                <asp:BoundField DataField="LENGTH_IN_FEET" HeaderStyle-Width="100px" HeaderText="Length" SortExpression="LENGTH_IN_FEET" />
                                                                <asp:BoundField DataField="J_SECTIONS_IN_BUNDLE" HeaderText="Pieces per Bundle" SortExpression="J_SECTIONS_IN_BUNDLE" />
                                                                <asp:BoundField DataField="F_BUNDLE_WEIGHT" HeaderText="Bundle Weight(t)" SortExpression="F_BUNDLE_WEIGHT" />
                                                                <asp:BoundField DataField="J_TOT_BUNDLES_UNSOLD" HeaderText="Bundles Available" SortExpression="J_TOT_BUNDLES_UNSOLD" />
                                                                <asp:BoundField DataField="Q_NEXT_ROLL_DATE" HeaderText="Next OpenRoll Week" SortExpression="Q_NEXT_ROLL_DATE" />
                                                             </Columns>
                                                                            <FooterStyle BackColor="#CCCC99" />
                                                                            <HeaderStyle BackColor="White" Font-Bold="True" ForeColor="Black" />
                                                                            <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
                                                                            <RowStyle BackColor="#eeeeee" />
                                                                            <SelectedRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
                                                                            <SortedAscendingCellStyle BackColor="#FBFBF2" />
                                                                            <SortedAscendingHeaderStyle BackColor="#848384" />
                                                                            <SortedDescendingCellStyle BackColor="#EAEAD3" />
                                                                            <SortedDescendingHeaderStyle BackColor="#575357" />
                                                                        </asp:GridView>
                                                    </td>
                                                </tr>
                                            </table>
                                        </div>
                                    </td>
                                </tr>
                            </table>
                        </asp:Panel>
                    </div>
                    <div class="clear spacer25"></div>
                    <!--Begining Refresh Data Message-->
                    <asp:Panel ID="PanRefreshed" runat="server" BorderWidth="1px" Visible="false">
                        <div class="col1 message" id="dataRefreshed" runat="server">
                            <div class="close floatright"></div>
                            <p>Data has been refreshed to provide you our latest information.</p>
                            <div class="clear"></div>
                        </div>
                    </asp:Panel>
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
                            <li><a href="inventory-list.aspx" title="Inventory List" class="current">Inventory List</a></li>
                            <li><a href="rolling-schedule.aspx" title="Rolling Schedule" class="">Rolling Schedule</a></li>
                            <li><a href="bundle-chart.aspx" title="Bundle Chart" class="">Bundle Chart</a></li>
                            <li><a href="freight-rate.aspx" title="Get Freight Rate" class="">Get Freight Rate</a></li>
                            <li><a href="/download-pdf.aspx?document=credit-application" title="Credit Application" target="_blank" class="">Credit Application</a></li>
                            <li><a href="/download-pdf.aspx?document=terms-and-conditions" title="Terms and Conditions" target="_blank" class="">Terms and Conditions</a></li>
                            <li><a href="/download-pdf.aspx?document=structural-claim-form" title="Claim Forms" target="_blank" class="">Claim Forms</a></li>
                            <li><a href="/download-pdf.aspx?document=leed-letter" title="LEED Letter" target="_blank" class="">LEED Letter</a></li>
                            <li><a href="/download-pdf.aspx?document=abs-certificate" title="ABS Certificate" target="_blank" class="">ABS Certificate</a></li>
                            <li><a href="/download-pdf.aspx?document=iso-9001-2008" title="ISO 9001:2008" target="_blank" class="">ISO 9001:2008</a></li>
                            <li><a href="/download-pdf.aspx?document=msds" title="MSDS" target="_blank" class="">MSDS</a></li>
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
    <asp:UpdateProgress ID="UpdateProgress1" runat="server">
        <ProgressTemplate>
            <div id="Background">
            </div>
            <div id="Progress">
                <img src="../Images/LoadingImage.gif" alt="" />
            </div>
        </ProgressTemplate>
    </asp:UpdateProgress>

    <!-- End content -->

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
    <!--Add Scripts here-->
    <!-- InstanceBeginEditable name="Scripts" -->
    <script src="../js/js.cookies.js"></script>
    <script src="../js/enquire.min.js"></script>
    <script src="../js/jquery.floatThead.min.js"></script>
    <script src="../js/global.js"></script>
    <script>   
        var refreshCookie = false;
        var $dataRefreshedNotice = $('#dataRefreshed');

        setTimeout(function () {
            Cookies.set('refreshDate', new Date().getTime());
            window.location.reload();
        }, 1000 * 60 * 5);

        if ((refreshCookie = Cookies.get('refreshDate'))) {
            $dataRefreshedNotice.show();
            Cookies.remove('refreshDate');
        }

        $dataRefreshedNotice.find('.close').on('click', function () {
            $(this).parent().slideUp();
        });
    </script>
    <script src="../js/inventory.js"></script>

</asp:Content>
