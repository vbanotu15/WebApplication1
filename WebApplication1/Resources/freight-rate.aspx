<%@ Page Title="" Language="C#" MasterPageFile="~/Master/Site.Master" AutoEventWireup="true" CodeBehind="freight-rate.aspx.cs" Inherits="WebApplication1.Resources.Get_freight_rate" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <link rel="canonical" href="https://www.sdi-structural.com/resources/resources-overview.html" />
    <link href='//fonts.googleapis.com/css?family=Montserrat:400,700|Lora:400,400italic,700,700italic|Muli:400,300italic,300' rel='stylesheet' type='text/css' />
    <script src="/JS/modernizr-custom.js"></script>
    <script src="../js/jquery.floatThead.min.js"></script>
    <script src="../js/jquery.tablesorter.min.js"></script>
    <script src="../js/global.js">
    </script>
    <script>
        if (!Modernizr.svg) var i = document.getElementsByTagName("img"), j, y; for (j = i.length; j--;)y = i[j].src, y.match(/svg$/) && (i[j].src = y.slice(0, -3) + "png")</script>

    <link href="/Style/css/tier2-sdi-structural.css" rel="stylesheet" type="text/css">
    <link href="../Style/css/tools-sdi.css" rel="stylesheet" type="text/css">
    <link href="../Style/css/form-sdi.css" rel="stylesheet" type="text/css">
    <link href='//fonts.googleapis.com/css?family=Montserrat:400,700|Lora:400,400italic,700,700italic|Muli:400,300italic,300' rel='stylesheet' type='text/css'>
    <script src="../js/modernizr-custom.js"></script>
    <link rel="stylesheet" href="../Style/css/tables.css" />

    <style>
        .mainheader.structuralresources {
            background-image: url(../images/headers/strucutural-resources-header.jpg);
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

        .sideNav ul li a:link, .sideNav ul li a:visited, .sideNav ul li a:active {
            background-image: url(../images/tier2/arrow-grey.png);
            background-repeat: no-repeat;
            display: block;
            font-size: 14px; /*14px ÷ 16px*/
            line-height: 18px; /*18px ÷ 14px*/
            font-family: 'Montserrat', sans-serif;                              b
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

        th {
            border-bottom: 1px solid #000;
            padding: 0px 7px;
        }
    </style>
    <div class="mainheader structuralresources clear">
        <h3 title="Resources">Resources</h3>
    </div>
    <div class="clear"></div>
    <!-- the content -->
    <div class="content">
        <!-- InstanceBeginEditable name="Area1" -->
        <div class="RightColumn">
            <div id="breadcrumbs">
                <ul>
                    <li><a href="resources-overview.aspx">Resources Overview</a></li>
                    <li><a href="freight-rate.aspx" class="current">Freight Rate</a></li>
                </ul>
            </div>
            <div class="clear"></div>
            <div class="FullColumn centered">
                <div class="col1 margintop2 aligncenter">
                    <h4 title="Get Freight Rate">Get Freight Rate</h4>

                    <p>Please provide as much information as possible.</p>

                    <p class="aligncenter">
                        + Rates for RAIL, TRUCK (52' and UNDER), and TRUCK (52'1" to 60') are currently available.<br>
                        Please contact your sales representative regarding other lengths.
                    </p>

                    <table class="contact full">
                        <tr>
                            <td>CITY :
                            </td>
                            <td class="description2" style="height: 65px">
                                <asp:TextBox ID="txtCity" runat="server" CssClass="textfield1"></asp:TextBox>
                            </td>
                        </tr>

                        <tr style="display: none">
                            <td>STATE :
                            </td>
                            <td class="description2" style="height: 65px">
                                <asp:DropDownList runat="server" ID="ddlState" CssClass="textfield1" Style="margin-left: 0em">
                                </asp:DropDownList>
                            </td>
                        </tr>

                        <tr>
                            <td>ZIP :
                            </td>
                            <td class="description2">
                                <asp:TextBox ID="txtZip" runat="server" CssClass="textfield1"></asp:TextBox>
                            </td>
                        </tr>
                    </table>

                    <div class="clear"></div>
                    <table class="contact2 full">

                        <tr>
                            <td class="description2">
                                <%--<input name="retrieve" type="submit" class="submit full" value="Get Rate">--%>
                                <asp:Button ID="btnGetRate" runat="server" CssClass="red button" Text="Get Rate" OnClick="btnGetRate_Click" />
                            </td>
                        </tr>
                        <tr>
                            <td>&nbsp;</td>
                        </tr>
                    </table>
                    <br />
                    <br />

                    <table style="width: 100%">
                        <tr>
                            <td runat="server" id="pdf_td" align="left">
                                <asp:Button ID="btnPDFDownload" runat="server" Text="Download PDF" OnClick="btnPDFDownload_Click" CssClass="red button" />
                            </td>
                            <td runat="server" id="Excel_td" align="left">
                                <asp:Button ID="btnXlsDownload" runat="server" Text="Download Excel" OnClick="btnXlsDownload_Click" CssClass="red button" />
                            </td>
                        </tr>
                    </table>

                    <asp:Panel ID="pan1" runat="server" ScrollBars="Both" BorderWidth="1px" Visible="false" Height="613px" class="col1 margintop1">
                        <table style="width: 100%; border-style: none; border-color: inherit; border-width: 2px; padding-top: 0px; vertical-align: top" class="col1 margintop1">
                            <tr style="padding-top: 0px; vertical-align: top; border: 1px solid #000; text-align: right">
                                <td style="text-wrap: normal; font-weight: bold" colspan="2">Current Fuel Surcharge (Truck):<asp:TextBox ID="txtSurchageRate" Font-Bold="true" Width="50px" runat="server"></asp:TextBox></td>
                            </tr>
                            <tr>
                                <td style="font-size: xx-large; font-weight: bold; color: brown; text-wrap: normal">Freight Rates
                                </td>
                                <td>&nbsp;</td>
                            </tr>
                            <tr>
                                <td colspan="2">
                                    <table id="Table1" runat="server" style="width: 100%">
                                        <tr>
                                            <td>
                                                <asp:GridView ID="GvFreight" runat="server" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="0px" AutoGenerateColumns="false"
                                                    CellPadding="4" ForeColor="Black" GridLines="Vertical" ShowHeader="true">
                                                    <AlternatingRowStyle BackColor="White" />
                                                    <Columns>
                                                        <asp:BoundField DataField="LOCATION" HeaderStyle-Width="120px" HeaderText="LOCATION" SortExpression="LOCATION" />
                                                        <asp:BoundField DataField="VEHICLE_ID" HeaderStyle-Width="150px" HeaderText="VEHICLE TYPE" SortExpression="VEHICLE_ID" />
                                                        <asp:BoundField DataField="RATE" HeaderText="RATE($/cwt)*" SortExpression="RATE" />
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
                                            </td>
                                        </tr>
                                    </table>
                                </td>
                            </tr>
                            <tr>
                                <td colspan="2" style="text-align: right; font-weight: bold">* Rates do NOT include fuel surcharges.
                                </td>
                            </tr>
                        </table>
                    </asp:Panel>
                    <asp:Panel ID="PanNoRecord" runat="server" ScrollBars="Both" BorderWidth="1px" Visible="false" Height="613px" class="col1 margintop1">
                        <p style="color: red; font-weight: bold; text-align: center">
                            This query returned no results. You might return and try different criteria.
                        </p>
                    </asp:Panel>


                </div>
                <!--End col1-->

            </div>
            <div class="clear"></div>
            <div class="spacer25 clear"></div>

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
                    <li><a href="bundle-chart.aspx" title="Bundle Chart" class="">Bundle Chart</a></li>
                    <li><a href="freight-rate.aspx" title="Get Freight Rate" class="current">Get Freight Rate</a></li>
                    <li><a href="msds.aspx" title="MSDS" target="_blank" class="">MSDS</a></li>
                    <li><a href="/download-pdf.aspx?document=credit-application" title="Credit Application" target="_blank" class="">Credit Application</a></li>
                    <li><a href="/download-pdf.aspx?document=terms-and-conditions" title="Terms and Conditions" target="_blank" class="">Terms and Conditions</a></li>
                    <li><a href="/download-pdf.aspx?document=structural-claim-form" title="Claim Forms" target="_blank" class="">Claim Forms</a></li>
                    <li><a href="/download-pdf.aspx?document=leed-letter" title="LEED Letter" target="_blank" class="">LEED Letter</a></li>
                    <li><a href="/download-pdf.aspx?document=abs-certificate" title="ABS Certificate" target="_blank" class="">ABS Certificate</a></li>
                    <li><a href="/download-pdf.aspx?document=iso-9001-2008" title="ISO 9001:2008" target="_blank" class="">ISO 9001:2008</a></li>

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
</asp:Content>
