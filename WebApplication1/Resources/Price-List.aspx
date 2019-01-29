<%@ Page Title="" Language="C#" MasterPageFile="~/Master/Site.Master" AutoEventWireup="true" CodeBehind="Price-List.aspx.cs" Inherits="WebApplication1.Resources.Price_List" %>

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

        .auto-style1 {
            width: 3px;
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
                            <li><a href="price-list.aspx" class="current">Price List</a></li>
                        </ul>
                    </div>
                    <br />
                    <br />
                    <div class="clear spacer25">
                    </div>
                    <h4 title="Price List">Price List</h4>
                    <div class="col1">
                        <div class="mysdiNav" style="text-align: left; margin-left: 0">
                            <ul>
                                <li><a class="current" href="#beam">Beam</a></li>
                                <li><a href="#merchant">Merchant</a></li>
                                <li><a href="/download-pdf.aspx?document=PriceAnnouncement">Price Announcement</a></li>
                            </ul>
                        </div>
                        <div class="col1 margintop1">
                            <table class="Date margintop1">
                                <tbody>
                                    <tr>
                                        <td class="width1">
                                            <p class="bold">
                                                <asp:Label ID="lblRepDate" runat="server" Font-Bold="true" Text=" Price List as reported:"></asp:Label>
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
                        <table class="col1 margintop1">
                            <tr>
                                <td runat="server" id="pdf_td" align="left" class="auto-style1">
                                    <asp:Button ID="btnPDFDownload" runat="server" Text="Download PDF" OnClick="btnPDFDownload_Click" CssClass="red button" />
                                </td>
                                <td>
                                    <asp:Button ID="btnXlsDownload" runat="server" Text="Download Excel" OnClick="btnXlsDownload_Click" CssClass="red button" Style="margin-left: 0px" />
                                </td>
                            </tr>
                        </table>
                        <br />
                    </div>
                    <div id="beam" class="price-list-panel">
                        <div class="col4 A">
                            <div class="mobilebutton" data-toggle="expandable-W">
                                <h5><span class="sprite plus"></span><span class="sprite minus"></span><b>Wide Flange Sections</b></h5>
                            </div>
                            <div class="results">
                                <asp:GridView ID="GvWideFlange" runat="server" AutoGenerateColumns="false" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Vertical" ShowHeader="true">
                                    <AlternatingRowStyle BackColor="White" />
                                    <Columns>
                                        <asp:BoundField DataField="BASE_SIZE_DESC" HeaderStyle-Width="120px" HeaderText="Size" ItemStyle-Width="120px" SortExpression="BASE_SIZE_DESC" />
                                        <asp:BoundField DataField="WTFT" HeaderStyle-Width="100px" HeaderText="WT/FT" ItemStyle-Width="120px" SortExpression="WTFT" />
                                        <asp:BoundField DataField="PRICE" HeaderText="Price/Cwt" ItemStyle-Width="120px" SortExpression="PRICE" />
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
                            </div>
                        </div>
                        <div class="col4 B">
                            <div class="group">
                                <div class="mobilebutton" data-toggle="expandable-HP">
                                    <b></b>
                                    <h5><span class="sprite plus"></span><span class="sprite minus"></span><b>Piling Sections</b></h5>
                                    </b>
                                </div>
                                <div class="results">
                                    <asp:GridView ID="GvHPileSection" runat="server" AutoGenerateColumns="false" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Vertical">
                                        <AlternatingRowStyle BackColor="White" />
                                        <Columns>
                                            <asp:BoundField DataField="BASE_SIZE_DESC" HeaderStyle-Width="120px" HeaderText="Size" SortExpression="BASE_SIZE_DESC" />
                                            <asp:BoundField DataField="WTFT" HeaderStyle-Width="100px" HeaderText="WT/FT" SortExpression="WTFT" />
                                            <asp:BoundField DataField="PRICE" HeaderText="Price/Cwt" SortExpression="PRICE" />
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
                                </div>
                            </div>
                            <div class="clear spacer25">
                            </div>
                            <div class="group">
                                <div class="mobilebutton" data-toggle="expandable-S">
                                    <h5><span class="sprite plus"></span><span class="sprite minus"></span><b>Standard Beams</b></h5>
                                </div>
                                <div class="results">
                                    <asp:GridView ID="GvSB" runat="server" AutoGenerateColumns="false" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Vertical">
                                        <AlternatingRowStyle BackColor="White" />
                                        <Columns>
                                            <asp:BoundField DataField="BASE_SIZE_DESC" HeaderStyle-Width="120px" HeaderText="Size" SortExpression="BASE_SIZE_DESC" />
                                            <asp:BoundField DataField="WTFT" HeaderStyle-Width="100px" HeaderText="WT/FT" SortExpression="WTFT" />
                                            <asp:BoundField DataField="PRICE" HeaderText="Price/Cwt" SortExpression="PRICE" />
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
                                </div>
                            </div>
                            <div class="clear spacer25">
                            </div>
                            <div class="group">
                                <div class="mobilebutton" data-toggle="expandable-M">
                                    <h5><span class="sprite plus"></span><span class="sprite minus"></span><b>Manufactured Housing Beams</b></h5>
                                </div>
                                <div class="results	">
                                    <asp:GridView ID="gvMHB" runat="server" AutoGenerateColumns="false" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Vertical">
                                        <AlternatingRowStyle BackColor="White" />
                                        <Columns>
                                            <asp:BoundField DataField="BASE_SIZE_DESC" HeaderStyle-Width="120px" HeaderText="Size" SortExpression="BASE_SIZE_DESC" />
                                            <asp:BoundField DataField="WTFT" HeaderStyle-Width="100px" HeaderText="WT/FT" SortExpression="WTFT" />
                                            <asp:BoundField DataField="PRICE" HeaderText="Price/Cwt" SortExpression="PRICE" />
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
                                </div>
                            </div>
                        </div>
                    </div>
                    <div id="merchant" class="price-list-panel" style="display: none">
                        <div class="col4 A">
                            <div class="group">
                                <div class="mobilebutton" data-toggle="expandable-W">
                                    <h5><span class="sprite plus"></span><span class="sprite minus"></span><b>Structural Channel C Channels</b></h5>
                                </div>
                                <div class="results">
                                    <asp:GridView ID="GvMerchantC" runat="server" AutoGenerateColumns="false" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Vertical">
                                        <AlternatingRowStyle BackColor="White" />
                                        <Columns>
                                            <asp:BoundField DataField="BASE_SIZE_DESC" HeaderStyle-Width="120px" HeaderText="Size" SortExpression="BASE_SIZE_DESC" />
                                            <asp:BoundField DataField="WTFT" HeaderStyle-Width="100px" HeaderText="WT/FT" SortExpression="WTFT" />
                                            <asp:BoundField DataField="PRICE" HeaderText="Price/Cwt" SortExpression="PRICE" />
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
                                </div>
                            </div>
                            <div class="clear spacer25">
                            </div>
                            <div class="group">
                                <div class="mobilebutton" data-toggle="expandable-W">
                                    <h5><span class="sprite plus"></span><span class="sprite minus"></span><b>Miscellaneous Channel MC Channel</b></h5>
                                </div>
                                <div class="results">
                                    <asp:GridView ID="GvMerchantMC" runat="server" AutoGenerateColumns="false" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Vertical">
                                        <AlternatingRowStyle BackColor="White" />
                                        <Columns>
                                            <asp:BoundField DataField="BASE_SIZE_DESC" HeaderStyle-Width="120px" HeaderText="Size" SortExpression="BASE_SIZE_DESC" />
                                            <asp:BoundField DataField="WTFT" HeaderStyle-Width="100px" HeaderText="WT/FT" SortExpression="WTFT" />
                                            <asp:BoundField DataField="PRICE" HeaderText="Price/Cwt" SortExpression="PRICE" />
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
                                </div>
                            </div>
                            <div class="clear spacer25">
                            </div>
                            <div class="group">
                                <div class="mobilebutton" data-toggle="expandable-W">
                                    <h5><span class="sprite plus"></span><span class="sprite minus"></span><b>Equal Leg Angles</b></h5>
                                </div>
                                <div class="results">
                                    <asp:GridView ID="GvMerchantL_equal" runat="server" AutoGenerateColumns="false" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Vertical">
                                        <AlternatingRowStyle BackColor="White" />
                                        <Columns>
                                            <asp:BoundField DataField="Product" HeaderStyle-Width="120px" HeaderText="Size" SortExpression="Product" />
                                            <asp:BoundField DataField="Thickness" HeaderStyle-Width="100px" HeaderText="Thickness" SortExpression="Thickness" />
                                            <%-- <asp:BoundField DataField="LBFT" HeaderStyle-Width="200px" HeaderText="LBFT" SortExpression="LBFT" />--%>
                                            <asp:BoundField DataField="PRICE" HeaderText="price/Cwt" SortExpression="PRICE" />
                                            <%--<asp:BoundField DataField="PCS_4160" HeaderText="PCS 40'-60'" SortExpression="PCS_4160" />--%>
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
                                </div>
                            </div>
                        </div>
                        <div class="col4 B">
                            <div class="mobilebutton" data-toggle="expandable-W">
                                <h5><span class="sprite plus"></span><span class="sprite minus"></span><b>Unequal Leg Angles</b></h5>
                            </div>
                            <div class="results">
                                <asp:GridView ID="GvMerchantL_Unequal" runat="server" AutoGenerateColumns="false" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Vertical">
                                    <AlternatingRowStyle BackColor="White" />
                                    <Columns>
                                        <asp:BoundField DataField="Product" HeaderStyle-Width="120px" HeaderText="Size" SortExpression="Product" />
                                        <asp:BoundField DataField="Thickness" HeaderStyle-Width="100px" HeaderText="Thickness" SortExpression="Thickness" />
                                        <%-- <asp:BoundField DataField="LBFT" HeaderStyle-Width="200px" HeaderText="LBFT" SortExpression="LBFT" />--%>
                                        <asp:BoundField DataField="PRICE" HeaderText="Price/Cwt" SortExpression="PRICE" />
                                        <%-- <asp:BoundField DataField="PCS_4160" HeaderText="PCS 40'-60'" SortExpression="PCS_4160" />--%>
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
                            </div>
                        </div>
                    </div>
                    <div class="clear">
                    </div>
                    <div class="col1">
                        <div class="clear spacer25">
                        </div>
                        <p>
                            MELTED AND MANUFACTURED IN THE UNITED STATES AND ASTM COMPLIANT
                        </p>
                        <ul class="bullets margintop1">
                            <li>Truck Fuel Surcharge for </li>
                            <li>Rail Fuel Surcharge for </li>
                            <li>*Prices in effect at time of shipment
                            <li>*Prices listed are for ASTM A992 except M Beams &amp; H Pile which are A57250</li>
                                <li>*All listed prices are per hundred weight (cwt) EXW</li>
                                <li>*Minimum shipment by Truck is 20 tons</li>
                                <li>*Minimum shipment by Rail is 80 tons</li>
                            </li>
                        </ul>
                        <div class="greybar">
                        </div>
                        <h5>Length, Grade, Cutting, Testing &amp; Materials Handling Extras / Bundle &amp; Piece Count Restrictions</h5>
                        <h5 class="margintop1" style="font-weight: 600">Length &amp; Cutting Extras:</h5>
                        <table class="One B">
                            <tbody>
                                <tr>
                                    <td class="large">A) Stock lengths 30&#39; - 80&#39; inclusive</td>
                                    <td class="small">No Extra</td>
                                </tr>
                                <tr>
                                    <td class="large">B) Non-standard lengths greater than 30&#39; and in 6 inch increments (no extra charged on stock) </td>
                                    <td class="small">$0.25/cwt</td>
                                </tr>
                                <tr>
                                    <td class="large">C) Non-standard lengths greater than 30&#39; and in 4 inch increments (no extra charged on stock) </td>
                                    <td class="small">$1.50/cwt</td>
                                </tr>
                                <tr>
                                    <td class="large">D) Non-standard lengths under 30&#39; down to 20&#39; and in 6 inch increments (no extra charged on stock) </td>
                                    <td class="smal">$1.00/cwt</td>
                                </tr>
                                <tr>
                                    <td class="large">E) Non-standard lengths under 30&#39; down to 20&#39; and in 4 inch increments (no extra charged on stock) </td>
                                    <td class="small">$2.25/cwt</td>
                                </tr>
                                <tr>
                                    <td class="large">F) Cutting Stock (i.e. 40&#39; to 20&#39;)</td>
                                    <td class="small">$1.00/cwt</td>
                                </tr>
                            </tbody>
                        </table>
                        <ul class="bullets margintop1 clear">
                            <li>*Most products are available in 30&#39;, 35&#39;, 40&#39;, 45&#39;, 50&#39;, 55&#39;, 60&#39;, 65&#39;, 70&#39;, 75&#39;, 80&#39; lengths </li>
                            <li>*Other lengths subject to inquiry and may require a 20 ton minimum per length</li>
                        </ul>
                        <div class="greybar">
                        </div>
                        <h5 class="margintop1" style="font-weight: 600">Bundle and piece count restrictions:</h5>
                        <p>
                            Exact piece count for channel or 4&quot; flange sizes are unavailable as we cannot meet this requirement. Standard lengths (30&#39;, 35&#39;, 40&#39;, 45&#39;, 50&#39;, 55&#39;, 60&#39;, 65&#39;, 70&#39;, 75&#39;, 80&#39;) are available in bundle quantities only. Exact piece count is not guaranteed on standard lengths. Exact piece count on non-standard lengths can be specified once the minimum bundle requirement has been met. All lengths will be subject to a -0&quot; / +4&quot; cutting tolerance on all sections. The minimum total order acceptance is 20 tons. Non-standard length availability is limited to 4 inch or 6 inch increments. (see pricing above)
                        </p>
                        <div class="greybar">
                        </div>
                        <h5 class="margintop1" style="font-weight: 600">Grade Extras:</h5>
                        <table class="One B">
                            <tbody>
                                <tr>
                                    <td class="large">ASTM A588 - all foot weights</td>
                                    <td class="small">$4.00/cwt</td>
                                </tr>
                                <tr>
                                    <td class="large">ABS Grade AH32 and AH36: Grade and Certification Extras (CVN Testing not included) </td>
                                    <td class="small"></td>
                                </tr>
                                <tr>
                                    <td class="large indent">A) sections to 150 lbs/ft. inclusive</td>
                                    <td class="small">$1.25/cwt</td>
                                </tr>
                                <tr>
                                    <td class="large indent">B) sections over 150 lbs/ft.</td>
                                    <td class="smal">$1.50/cwt</td>
                                </tr>
                                <tr>
                                    <td class="large">ABS Grade A and B (CVN testing not included)</td>
                                    <td class="small">$1.25/cwt</td>
                                </tr>
                                <tr>
                                    <td class="large">CSA G40.21 50WT/350WT (Grade CSA350WT CAT 1, 2, or 3; CVN Testing extra) </td>
                                    <td class="small">$1.25/cwt</td>
                                </tr>
                                <tr>
                                    <td class="large">CSA50WM - Dual certs with A992</td>
                                    <td class="small">no charge</td>
                                </tr>
                                <tr>
                                    <td class="large">CSA50WMT Category 1, 2, or 3: Standard CVN test charges apply</td>
                                    <td class="small">no charge</td>
                                </tr>
                                <tr>
                                    <td class="large">ASTM A36, A572 grades 55 through 65, and any other grades not stated</td>
                                    <td class="small">Inquire</td>
                                </tr>
                                <tr>
                                    <td class="large" style="font-weight: 600">Grade quantity minimum requirements:</td>
                                    <td class="small"></td>
                                </tr>
                                <tr>
                                    <td class="large indent">A) ABS Grade AH32 and AH36</td>
                                    <td class="small">20 Tons</td>
                                </tr>
                                <tr>
                                    <td class="large indent">B) ABS Grade A and B</td>
                                    <td class="small">10 Tons</td>
                                </tr>
                            </tbody>
                        </table>
                        <div class="clear">
                        </div>
                        <div class="greybar">
                        </div>
                        <h5 class="margintop1" style="font-weight: 600">Testing Extras:</h5>
                        <table class="One B">
                            <tbody>
                                <tr>
                                    <td class="large">Charpy V-Notch impact testing (test frequency determined by specification) </td>
                                    <td class="small"></td>
                                </tr>
                                <tr>
                                    <td class="large indent">A) Flange Test (ASTM A673 Location):</td>
                                    <td class="small">$0.75/cwt</td>
                                </tr>
                                <tr>
                                    <td class="large indent">B) Core Test (AISC CVN Location):</td>
                                    <td class="small">$1.00/cwt</td>
                                </tr>
                                <tr>
                                    <td class="large indent">C) Tests with temperature requirements of 20 degrees (F) or lower </td>
                                    <td class="smal">$1.00/cwt Additional</td>
                                </tr>
                                <tr>
                                    <td class="large indent">Column Straightness Tolerance for NON-Column Sizes (excluding 8x8, 10x10,12x12 &amp; 14x14) </td>
                                    <td class="small">$0.50/cwt</td>
                                </tr>
                                <tr>
                                    <td class="large indent">Nuclear Projects</td>
                                    <td class="small">Inquire</td>
                                </tr>
                                <tr>
                                    <td class="large indent">Quality Assurance Certification</td>
                                    <td class="small">No Charge</td>
                                </tr>
                                <tr>
                                    <td class="large indent">MTR&#39;s &amp; Notarization</td>
                                    <td class="small">No Charge</td>
                                </tr>
                            </tbody>
                        </table>
                        <div class="clear">
                        </div>
                        <div class="greybar">
                        </div>
                        <h5 class="margintop1" style="font-weight: 600">Handling &amp; Loading Extras:</h5>
                        <table class="One B">
                            <tbody>
                                <tr>
                                    <td class="large">Tarped truckloads</td>
                                    <td class="small">$50.00 per load</td>
                                </tr>
                                <tr>
                                    <td class="large">Vertically blocked truckloads</td>
                                    <td class="small">$50.00 per load</td>
                                </tr>
                                <tr>
                                    <td class="large">Non-standard shipping practice</td>
                                    <td class="small">Inquire for charge</td>
                                </tr>
                                <tr>
                                    <td class="large">Special handling, loading requests and non-standard blocking/dunnage requirements are subject to inquiry &amp; extras may apply. </td>
                                    <td class="small"></td>
                                </tr>
                            </tbody>
                        </table>
                        <div class="clear">
                        </div>
                    </div>
                    <div class="clear spacer25">
                    </div>
                    <div class="top">
                        <a href="#top">TOP</a>
                    </div>

                </div>
                <!-- InstanceEndEditable -->
                <!-- the sidebar -->
                <aside class="sidebar">
                    <h5>Side Navigation</h5>

                    <div class="sideNav">
                        <ul>
                            <li><a href="resources-overview.aspx" title="Overview" class="">Resources Overview</a></li>
                            <li><a href="price-list.aspx" title="Price List" class="current">Price List</a></li>
                            <li><a href="inventory-list.aspx" title="Inventory List" class="">Inventory List</a></li>
                            <li><a href="rolling-schedule.aspx" title="Rolling Schedule" class="">Rolling Schedule</a></li>
                            <li><a href="bundle-chart.aspx" title="Bundle Chart" class="">Bundle Chart</a></li>
                            <li><a href="freight-rate.aspx" title="Get Freight Rate" class="">Get Freight Rate</a></li>
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
