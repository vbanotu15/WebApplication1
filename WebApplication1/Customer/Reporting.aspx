<%@ Page Title="" Language="C#" MasterPageFile="~/Master/Site.Master" AutoEventWireup="true" CodeBehind="Reporting.aspx.cs" Inherits="WebApplication1.Customer.Reporting" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <link rel="canonical" href="https://www.sdi-structural.com/resources/resources-overview.aspx" />
    <link href='//fonts.googleapis.com/css?family=Montserrat:400,700|Lora:400,400italic,700,700italic|Muli:400,300italic,300' rel='stylesheet' type='text/css' />
    <script src="../JS/modernizr-custom.js"></script>
    <script>
        if (!Modernizr.svg) var i = document.getElementsByTagName("img"), j, y; for (j = i.length; j--;)y = i[j].src, y.match(/svg$/) && (i[j].src = y.slice(0, -3) + "png")</script>
    <!--EndModernizer-->
    <link href="../Style/css/tier2-sdi-structural.css" rel="stylesheet" type="text/css">
    <link href="../Style/css/tools-sdi.css" rel="stylesheet" type="text/css">
    <link href="../Style/css/form-sdi.css" rel="stylesheet" type="text/css">
    <link href='//fonts.googleapis.com/css?family=Montserrat:400,700|Lora:400,400italic,700,700italic|Muli:400,300italic,300' rel='stylesheet' type='text/css'>
    <script src="../js/modernizr-custom.js"></script>
    <link rel="stylesheet" href="../Style/css/tables.css" />

    <style>
        .emailHeader {
            background-image: url( ../Style/images/truck_icon.png );
            background-repeat: repeat-x;
        }

        body {
            background-image: url(../images/body.jpg);
        }

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

        .mainheader.structuralcontact {
            background-image: url(../images/headers/structural-contact-header.jpg);
        }

        .mainheader.structuralcontactText {
            border: none;
            color: white;
            font-weight: bold;
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
            padding: 0px;
        }

        th {
            border: 1px solid #585858;
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


        .center {
            text-align: center;
        }

        .maroonColor {
            color: Maroon;
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
    <script type="text/javascript">
        function hide_report(new_tab) {
            if (new_tab != last_tab) {
                var reportDiv = document.getElementById("main_report");
                if (null != reportDiv)
                    reportDiv.style.visibility = "hidden";
                reportDiv = document.getElementById("button_div");
                if (null != reportDiv)
                    reportDiv.style.visibility = "hidden";
                //
                last_tab = new_tab;
            }
        }


        function OpenMyPopUp() { openPopup('../Report_Container.aspx', 530, 800, 'Page Title'); }

        function openPopup(url, h, w, t) {
            if (url != null && h != null && w != null && t != null) {

                urlBase = location.href.substring(0, location.href.lastIndexOf("/") + 1);
                url = urlBase + url;
                $('#MyDialog').html('<iframe border=0 width="100%" height ="100%" src="' + url + '"> </iframe>');
                $("#MyDialog").dialog({
                    title: t,
                    modal: true,
                    autoOpen: true,
                    height: h,
                    width: w,
                    resizable: false,
                    position: ['right-10', 'top+30'],
                    closeOnEscape: false,
                    dialogClass: "alert"
                });
            }
        }



    </script>

    <asp:ScriptManager runat="server"></asp:ScriptManager>

    <div class="mainheader structuralcontact clear">
        <h3 title="Resources">Customer Utilities</h3>
        <h5 class="mainheader structuralcontactText">Our resources at your fingertips.</h5>
    </div>
    <div class="clear"></div>

    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>
            <div class="content">
                <!-- InstanceBeginEditable name="Area1" -->
                <div class="RightColumn">

                    <div id="breadcrumbs">
                        <ul>
                            <li><a href="Customer-Utilities.aspx">Customer Utilities</a></li>
                            <li><a href="Reporting.aspx" class="current">Reporting</a></li>
                        </ul>
                    </div>


                    <div class="clear"></div>

                    <div class="col1">
                        <div class="col1 margintop1">
                            <h4 title="Reporting">Reporting</h4>

                            <table>
                                <tr>
                                    <asp:ImageButton ID="btnPDFDownload" runat="server" ImageUrl="../Style/images/pdf_icon.png" OnClick="btnPDFDownload_Click" Style="width: 50px; border: 1px Ridge Silver; background-color: White" CssClass="auto-style1" />
                                    <asp:ImageButton ID="btnXlsDownload" runat="server" ImageUrl="../Style/images/XLS_icon.png" OnClick="btnXlsDownload_Click" Style="width: 50px; border: 1px Ridge Silver; background-color: White" />
                                </tr>
                            </table>
                        </div>
                        <br />

                    </div>

                    <div>
                        <%-- <asp:Panel ID="pan111" runat="server" ScrollBars="Both" BorderWidth="1px" Visible="true" class="col1 margintop1" Width="100%" Height="613px">--%>
                        <ajaxToolkit:TabContainer ID="Reporting_Tabs" runat="server"
                            AutoPostBack="true" BorderStyle="None" BorderWidth="0"
                            OnActiveTabChanged="Reporting_Tabs_ActiveTabChanged" CssClass="customTabs" ActiveTabIndex="0" Visible="true">

                            <ajaxToolkit:TabPanel ID="order_status_tab" runat="server" HeaderText="Order Status" CssClass="mobilebutton"
                                Visible="true"
                                BorderWidth="0">
                                <ContentTemplate>

                                    <table style="width: 90%" class="col1 margintop1">
                                        <tr>
                                            <td style="text-align: center; font-weight: bold">
                                                <asp:Label ID="lblCompmyhead" runat="server" Text="Company:  " /><asp:Label runat="server" ID="lblCompany_OrderStatus" CssClass="maroonColor" /></td>
                                            <td style="text-align: center; font-weight: bold">
                                                <asp:Label ID="Label4" runat="server" Text="Ship-To Location List:  " /><asp:Label runat="server" ID="Label9" CssClass="maroonColor" /></td>
                                        </tr>
                                        <tr>
                                            <td style="width: 50%">
                                                <asp:DropDownList ID="ddlCompany_OrderStatus" runat="server" Width="90%" CssClass="dropdown_class"
                                                    OnSelectedIndexChanged="ddlCompany_OrderStatus_SelectedIndexChanged" AutoPostBack="true">
                                                    <asp:ListItem Text="(Select One)" Value="%" />
                                                </asp:DropDownList>
                                            </td>
                                            <td style="width: 50%">
                                                <asp:DropDownList ID="ddlLocation_OrderStatus" runat="server" Width="100%" CssClass="dropdown_class">
                                                    <asp:ListItem Text="(Select One)" Value="%" />
                                                </asp:DropDownList>
                                            </td>

                                        </tr>
                                        <tr>
                                            <td colspan="2">&nbsp;
                                            </td>
                                        </tr>
                                        <tr>
                                            <td colspan="2">
                                                <asp:Button runat="server" ID="btnSearch_OrderStatus" Text="Retrieve Order Status"
                                                    Font-Bold='true' OnClick="btnSearch_OrderStatus_Click"
                                                    CssClass="red button" />
                                            </td>
                                        </tr>
                                    </table>

                                    <br />

                                    <iframe runat="server" id="report_iframe" visible="false"
                                        style="width: 100%; height: 450px" noresize="noresize" frameborder="1" allowtransparency="true" class="report_iframe">
                                        <p style="color: Red">This web application uses iframes for reporting, which your browser does not support.</p>
                                    </iframe>

                                </ContentTemplate>
                            </ajaxToolkit:TabPanel>
                            <ajaxToolkit:TabPanel ID="shipping_schedule_tab" CssClass="emailHeader" HeaderText="Shipping Schedule" runat="server" Visible="true">
                                <ContentTemplate>
                                    <table style="width: 100%" class="col1 margintop1">
                                        <tr>
                                            <td runat="server" id="Td1" style="text-align: center; width: 100%">

                                                <strong>
                                                    <asp:Label ID="Label1" runat="server" Style="color: black" Text="Company:  " /><asp:Label runat="server" ID="lblCompany_ShippingSchedule" Style="color: Maroon" />
                                                </strong>
                                                <br />

                                                <asp:DropDownList ID="ddlCompany_ShippingSchedule" runat="server" Width="360px" CssClass="dropdown_class"
                                                    OnSelectedIndexChanged="ddlCompany_ShippingSchedule_SelectedIndexChanged" AutoPostBack="true">
                                                    <asp:ListItem Text="(Select One)" Value="%" />
                                                </asp:DropDownList>
                                                <asp:Button runat="server" ID="btnLocation_ShippingSchedule" Text="Show Locations >" OnClick="btnLocation_ShippingSchedule_Click" Visible="false" CssClass="black button" Style="margin-top: 10px" />
                                                <br />
                                                <div runat="server" id="divCompanyChange_ShippingSchedule" style="color: Maroon" visible="false">
                                                    <br />
                                                    Company selection has changed -- Click the button below to run a new report.
                                                            <br />
                                                </div>

                                            </td>
                                            <td runat="server" id="Td2">
                                                <input type="hidden" runat="server" id="Hidden1" value="none" />

                                                <div id="div_location_ShippingSchedule" runat="server" visible="false" style="text-align: center;">

                                                    <iframe runat="server" src="/srd/Report_Container.aspx?id=location_iframe&height=150" id="Iframe1"
                                                        frameborder="0" allowtransparency="true" noresize="noresize" style="width: 100%; height: 120px; background: transparent url(/srd/wp-content/themes/srd/images/SDI_Spinner_Small.gif) no-repeat center;">
                                                        <p style="color: Red">This web application uses iframes for reporting, which your browser does not support.</p>
                                                    </iframe>

                                                </div>
                                            </td>
                                        </tr>

                                    </table>
                                    <br />
                                    <span style="color: #90631d; font-size: 1.25em; font-weight: bold">Search Criteria</span>
                                    <br />
                                    (Enter any or none)<br />
                                    <br />
                                    <table>
                                        <tr>
                                            <td>
                                                <p>PO Number:</p>
                                            </td>
                                            <td>
                                                <asp:TextBox runat="server" ID="TextBox1" /></td>
                                            <td>
                                                <p>Sales Order:</p>
                                            </td>
                                            <td>
                                                <asp:TextBox runat="server" ID="TextBox2" /></td>

                                        </tr>
                                        <tr>

                                            <td>
                                                <p>Pickup Id:</p>
                                            </td>
                                            <td>
                                                <asp:TextBox runat="server" ID="TextBox3" /></td>

                                            <td>
                                                <p>Ship Status:</p>
                                            </td>
                                            <td style="float: right">
                                                <asp:DropDownList runat="server" Width="100%" CssClass="dropdown_class" ID="dl_criteria_ship_status">
                                                    <asp:ListItem Text="(ANY)" Value="%" />
                                                    <asp:ListItem Text="IN PLAN" Value="IN_PLAN" />
                                                    <asp:ListItem Text="PLANNED" />
                                                    <asp:ListItem Text="SHIPPED" />
                                                </asp:DropDownList>
                                            </td>
                                        </tr>

                                        <tr>
                                            <td>
                                                <p>Expedited Only:</p>
                                            </td>
                                            <td style="float: right">
                                                <asp:CheckBox runat="server" ID="cb_criteria_expedite" Text="" /></td>
                                            <td>&nbsp;</td>
                                            <td>&nbsp;</td>
                                        </tr>
                                    </table>
                                    <br />
                                    <table runat="server" id="Table2" class="col1 margintop1" style="text-align: center; width: 100%">
                                        <tr>
                                            <td style="text-align: center">
                                                <asp:Button runat="server" ID="btnSearch_ShippingSchedule" Text="Retrieve Shipping Schedule"
                                                    Font-Bold='true' OnClick="btnSearch_ShippingSchedule_Click"
                                                    CssClass="red button" />
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>

                                                <asp:GridView ID="GvShippingSchedule" runat="server" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" AutoGenerateColumns="false"
                                                    CellPadding="4" ForeColor="Black" GridLines="Vertical">
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
                                </ContentTemplate>
                            </ajaxToolkit:TabPanel>
                            <ajaxToolkit:TabPanel ID="search_tab" CssClass="emailHeader" HeaderText="Search Record" runat="server"
                                Visible="true">
                                <ContentTemplate>
                                    <asp:Panel runat="server" ID="panSearchRecord" CssClass="criteria" HorizontalAlign="Center">
                                        <table style="width: 100%" class="col1 margintop1">
                                            <tr>
                                                <td runat="server" id="Td5" style="text-align: center; width: 100%">
                                                    <strong>
                                                        <asp:Label ID="Label5" runat="server" Style="color: black" Text="Company:  " /><asp:Label runat="server" ID="lblCompany_SearchRecord" Style="color: Maroon" />
                                                    </strong>
                                                    <br />
                                                    <asp:DropDownList ID="ddlCompany_SearchRecord" runat="server" Width="360px" CssClass="dropdown_class"
                                                        OnSelectedIndexChanged="ddlCompany_SearchRecord_SelectedIndexChanged" AutoPostBack="true">
                                                        <asp:ListItem Text="(Select One)" Value="%" />
                                                    </asp:DropDownList>
                                                </td>
                                            </tr>
                                        </table>

                                        <asp:Label runat="server" ID="lblcriteria_instructions_SearchRecord" Style="margin-bottom: 20px" />
                                        <span style="color: #90631d; font-size: 1.25em; font-weight: bold">Search Criteria</span>
                                        <br />
                                        (Enter any or none)<br />
                                        <br />
                                        <asp:UpdatePanel runat="server" ID="criteria_update_pan" UpdateMode="Conditional">
                                            <ContentTemplate>
                                                <table>
                                                    <tr>
                                                        <td>
                                                            <p>BOL ID:</p>
                                                        </td>
                                                        <td>
                                                            <asp:TextBox runat="server" ID="tb_criteria_bol" /></td>

                                                        <td>
                                                            <p>Invoice No:</p>
                                                        </td>
                                                        <td>
                                                            <asp:TextBox runat="server" ID="tb_criteria_invoice" /></td>
                                                    </tr>
                                                    <tr>
                                                        <td>
                                                            <p>PO Number:</p>
                                                        </td>
                                                        <td>
                                                            <asp:TextBox runat="server" ID="tb_criteria_po_num" /></td>
                                                        <td>
                                                            <p>Sales Order:</p>
                                                        </td>
                                                        <td>
                                                            <asp:TextBox runat="server" ID="tb_criteria_sales_ord" /></td>

                                                    </tr>
                                                    <tr>
                                                        <td>
                                                            <p>Heat:</p>
                                                        </td>
                                                        <td>
                                                            <asp:TextBox runat="server" ID="tb_criteria_heat" /></td>

                                                        <td>
                                                            <p>Bundle:</p>
                                                        </td>
                                                        <td>
                                                            <asp:TextBox runat="server" ID="tb_criteria_bundle" /></td>
                                                    </tr>

                                                    <tr>
                                                        <td>
                                                            <p>Vehicle Id:</p>
                                                        </td>
                                                        <td>
                                                            <asp:TextBox runat="server" ID="tb_criteria_vehicle_id" /></td>
                                                        <td>
                                                            <p>Pickup Id:</p>
                                                        </td>
                                                        <td>
                                                            <asp:TextBox runat="server" ID="tb_criteria_pickup" /></td>
                                                    </tr>

                                                </table>
                                                <br />
                                                <asp:Label runat="server" ID="lab_criteria_date_range_title" Style="color: #90631d; font-size: 1.25em; font-weight: bold">Shipped Date Range<br />MM/DD/YY (Defaults to past 6 months)</asp:Label>
                                                <table>
                                                    <tr>
                                                        <td>
                                                            <p>From:</p>
                                                        </td>
                                                        <td>
                                                            <asp:TextBox runat="server" ID="txtFrom_SearchRecord" /></td>
                                                        <td>
                                                            <ajaxToolkit:CalendarExtender ID="CalendarExtender8" runat="server"
                                                                TargetControlID="txtFrom_SearchRecord"
                                                                Format="MM/dd/yy"></ajaxToolkit:CalendarExtender>
                                                        </td>
                                                        <td>
                                                            <p>To:</p>
                                                        </td>
                                                        <td>
                                                            <asp:TextBox runat="server" ID="txtTo_SearchRecord" /></td>
                                                        <td>
                                                            <ajaxToolkit:CalendarExtender ID="CalendarExtender9" runat="server"
                                                                TargetControlID="txtTo_SearchRecord"
                                                                Format="MM/dd/yy"></ajaxToolkit:CalendarExtender>
                                                        </td>
                                                    </tr>
                                                </table>
                                                <br />
                                                <table runat="server" id="Table4" class="col1 margintop1" style="text-align: center; width: 100%">
                                                    <tr>
                                                        <td style="text-align: center">
                                                            <asp:Button runat="server" ID="btnSearch_SearchRecord" Text="Retrieve Search Record"
                                                                Font-Bold='true' OnClick="btnSearch_SearchRecord_Click"
                                                                CssClass="red button" />
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td>
                                                            <asp:GridView ID="GvSearchRecord" runat="server" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" AutoGenerateColumns="false"
                                                                CellPadding="4" ForeColor="Black" GridLines="Vertical">
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
                                            </ContentTemplate>
                                        </asp:UpdatePanel>

                                    </asp:Panel>

                                </ContentTemplate>
                            </ajaxToolkit:TabPanel>
                            <ajaxToolkit:TabPanel ID="order_ack_tab" CssClass="emailHeader" HeaderText="Order Ack." runat="server"
                                Visible="true">
                                <ContentTemplate>
                                    <asp:Panel runat="server" ID="pan_OrderAck" CssClass="criteria" HorizontalAlign="Center">
                                        <table class="col1 margintop1">
                                            <tr>
                                                <td runat="server" id="Td6" style="text-align: center; width: 100%">
                                                    <strong>
                                                        <asp:Label ID="Label2" runat="server" Style="color: black" Text="Company:  " /><asp:Label runat="server" ID="lbCompany_OrderAck" Style="color: Maroon" />
                                                    </strong>
                                                    <br />
                                                    <asp:DropDownList ID="ddlCompany_OrderAck" runat="server" Width="360px" CssClass="dropdown_class"
                                                        OnSelectedIndexChanged="ddlCompany_OrderAck_SelectedIndexChanged" AutoPostBack="true">
                                                        <asp:ListItem Text="(Select One)" Value="%" />
                                                    </asp:DropDownList>
                                                </td>
                                            </tr>
                                        </table>

                                        <asp:Label runat="server" ID="Label7" Style="margin-bottom: 20px" />
                                        <span style="color: #90631d; font-size: 1.25em; font-weight: bold">Search Criteria</span>
                                        <br />
                                        (Enter any or none)<br />
                                        <br />
                                        <asp:UpdatePanel runat="server" ID="UpdatePanel2" UpdateMode="Conditional">
                                            <ContentTemplate>
                                                <table>
                                                    <tr>
                                                        <td>
                                                            <p>PO Number:</p>
                                                        </td>
                                                        <td>
                                                            <asp:TextBox runat="server" ID="TextBox6" /></td>
                                                        <td>
                                                            <p>Sales Order:</p>
                                                        </td>
                                                        <td>
                                                            <asp:TextBox runat="server" ID="TextBox7" /></td>
                                                    </tr>
                                                </table>
                                                <br />
                                                <asp:Label runat="server" ID="Label8" Style="color: #90631d; font-size: 1.25em; font-weight: bold">Expected Departure Week Range<br />MM/DD/YY (Defaults to between last three months and next three months)</asp:Label>
                                                <table>
                                                    <tr>
                                                        <td>
                                                            <p>From:</p>
                                                        </td>
                                                        <td>
                                                            <asp:TextBox runat="server" ID="txtFrom_OrderAck" /></td>
                                                        <td>
                                                            <ajaxToolkit:CalendarExtender ID="CalendarExtender1" runat="server"
                                                                TargetControlID="txtFrom_OrderAck"
                                                                Format="MM/dd/yy"></ajaxToolkit:CalendarExtender>
                                                        </td>
                                                        <td>
                                                            <p>To:</p>
                                                        </td>
                                                        <td>
                                                            <asp:TextBox runat="server" ID="txtTo_OrderAck" /></td>
                                                        <td>
                                                            <ajaxToolkit:CalendarExtender ID="CalendarExtender2" runat="server"
                                                                TargetControlID="txtTo_OrderAck"
                                                                Format="MM/dd/yy"></ajaxToolkit:CalendarExtender>
                                                        </td>
                                                    </tr>
                                                </table>
                                                <br />
                                                <table runat="server" id="Table5" class="col1 margintop1" style="text-align: center; width: 100%">
                                                    <tr>
                                                        <td style="text-align: center">
                                                            <asp:Button runat="server" ID="btnSearch_OrderAck" Text="Retrieve Order Ack"
                                                                Font-Bold='true' OnClick="btnSearch_OrderAck_Click"
                                                                CssClass="red button" />
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td>
                                                            <asp:GridView ID="GvOrderAck" runat="server" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" AutoGenerateColumns="false"
                                                                CellPadding="4" ForeColor="Black" GridLines="Vertical">
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
                                            </ContentTemplate>
                                        </asp:UpdatePanel>

                                    </asp:Panel>


                                </ContentTemplate>
                            </ajaxToolkit:TabPanel>
                            <ajaxToolkit:TabPanel ID="shipment_sum_tab" CssClass="emailHeader" runat="server" HeaderText="Shipment Summary"
                                Visible="true">
                                <ContentTemplate>
                                    <asp:Panel runat="server" ID="pan_ShipmentSummary" CssClass="criteria" HorizontalAlign="Center">
                                        <table style="width: 100%" class="col1 margintop1">
                                            <tr>
                                                <td runat="server" id="Td7" style="text-align: center; width: 100%">
                                                    <strong>
                                                        <asp:Label ID="Label6" runat="server" Style="color: black" Text="Company:  " /><asp:Label runat="server" ID="lblCompany_ShipmentSummary" Style="color: Maroon" />
                                                    </strong>
                                                    <br />
                                                    <asp:DropDownList ID="ddlCompany_ShipmentSummary" runat="server" Width="360px" CssClass="dropdown_class"
                                                        OnSelectedIndexChanged="ddlCompany_ShipmentSummary_SelectedIndexChanged" AutoPostBack="true">
                                                        <asp:ListItem Text="(Select One)" Value="%" />
                                                    </asp:DropDownList>
                                                </td>
                                            </tr>
                                        </table>

                                        <asp:Label runat="server" ID="Label10" Style="margin-bottom: 20px" />
                                        <span style="color: #90631d; font-size: 1.25em; font-weight: bold">Search Criteria</span>
                                        <br />
                                        (Enter any or none)<br />
                                        <br />
                                        <asp:UpdatePanel runat="server" ID="UpdatePanel3" UpdateMode="Conditional">
                                            <ContentTemplate>
                                                <table>
                                                    <tr>
                                                        <td>
                                                            <p>BOL ID:</p>
                                                        </td>
                                                        <td>
                                                            <asp:TextBox runat="server" ID="TextBox10" /></td>
                                                        <td>
                                                            <p>PO Number:</p>
                                                        </td>
                                                        <td>
                                                            <asp:TextBox runat="server" ID="TextBox11" /></td>

                                                    </tr>

                                                    <tr>
                                                        <td>
                                                            <p>Sales Order:</p>
                                                        </td>
                                                        <td>
                                                            <asp:TextBox runat="server" ID="TextBox5" /></td>
                                                        <td>
                                                            <p>Vehicle Id:</p>
                                                        </td>
                                                        <td>
                                                            <asp:TextBox runat="server" ID="TextBox4" /></td>
                                                    </tr>

                                                    <tr>
                                                        <td>
                                                            <p>Trans. Mode:</p>
                                                        </td>
                                                        <td style="float: right">
                                                            <asp:DropDownList runat="server" CssClass="dropdown_class" ID="dl_criteria_trans_mode">
                                                                <asp:ListItem Text="(ANY)" Value="%" />
                                                                <asp:ListItem Text="TRUCK" />
                                                                <asp:ListItem Text="RAIL" />
                                                            </asp:DropDownList></td>

                                                        <td style="width: 30%">
                                                            <p>Product Type:</p>
                                                        </td>
                                                        <td>
                                                            <asp:DropDownList runat="server" CssClass="dropdown_class" ID="dl_criteria_prod_type" EnableViewState="true"></asp:DropDownList></td>

                                                    </tr>
                                                    <tr>
                                                        <td style="width: 30%">
                                                            <p>Product Size:</p>
                                                        </td>
                                                        <td>
                                                            <b>
                                                                <asp:DropDownList runat="server" CssClass="dropdown_class" ID="dl_product_sizes" EnableViewState="true">
                                                                    <asp:ListItem Text="(Select Company)" />
                                                                </asp:DropDownList>
                                                            </b>
                                                        </td>
                                                        <td>&nbsp;
                                                        </td>
                                                        <td>&nbsp;
                                                        </td>
                                                    </tr>
                                                </table>
                                                <br />
                                                <asp:Label runat="server" ID="Label11" Style="color: #90631d; font-size: 1.25em; font-weight: bold">Date Range<br />MM/DD/YY (Defaults to past 3 months)</asp:Label>
                                                <table>
                                                    <tr>
                                                        <td>
                                                            <p>From:</p>
                                                        </td>
                                                        <td>
                                                            <asp:TextBox runat="server" ID="txtFrom_ShiftmentSummary" /></td>
                                                        <td>
                                                            <ajaxToolkit:CalendarExtender ID="CalendarExtender3" runat="server"
                                                                TargetControlID="txtFrom_ShiftmentSummary"
                                                                Format="MM/dd/yy"></ajaxToolkit:CalendarExtender>
                                                        </td>
                                                        <td>
                                                            <p>To:</p>
                                                        </td>
                                                        <td>
                                                            <asp:TextBox runat="server" ID="txtTo_ShiftmentSummary" /></td>
                                                        <td>
                                                            <ajaxToolkit:CalendarExtender ID="CalendarExtender4" runat="server"
                                                                TargetControlID="txtTo_ShiftmentSummary"
                                                                Format="MM/dd/yy"></ajaxToolkit:CalendarExtender>
                                                        </td>
                                                    </tr>
                                                </table>
                                                <br />
                                                <table runat="server" id="Table6" class="col1 margintop1" style="text-align: center; width: 100%">
                                                    <tr>
                                                        <td style="text-align: center">
                                                            <asp:Button runat="server" ID="btnSearch_ShipmentSummary" Text="Retrieve Shipment Summary"
                                                                Font-Bold='true' OnClick="btnSearch_ShipmentSummary_Click"
                                                                CssClass="red button" />
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td>
                                                            <asp:GridView ID="GvShipmentSummary" runat="server" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" AutoGenerateColumns="false"
                                                                CellPadding="4" ForeColor="Black" GridLines="Vertical">
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
                                            </ContentTemplate>
                                        </asp:UpdatePanel>
                                    </asp:Panel>
                                </ContentTemplate>
                            </ajaxToolkit:TabPanel>
                            <ajaxToolkit:TabPanel ID="aged_rec_tab" CssClass="emailHeader" HeaderText="Aged Rec." runat="server"
                                Visible="true">
                                <ContentTemplate>
                                    <table style="width: 100%" class="col1 margintop1">
                                        <tr>
                                            <td runat="server" id="Td3" style="text-align: center; width: 100%">
                                                <strong>
                                                    <asp:Label ID="Label3" runat="server" Style="color: black" Text="Company:  " /><asp:Label runat="server" ID="lblCompany_AgedRec" Style="color: Maroon" />
                                                </strong>
                                                <br />
                                                <asp:DropDownList ID="ddlCompany_AgedRec" runat="server" Width="360px" CssClass="dropdown_class"
                                                    OnSelectedIndexChanged="ddlCompany_AgedRec_SelectedIndexChanged" AutoPostBack="true">
                                                    <asp:ListItem Text="(Select One)" Value="%" />
                                                </asp:DropDownList>
                                            </td>
                                        </tr>
                                    </table>
                                    <br />
                                    <table runat="server" id="Table3" class="col1 margintop1" style="text-align: center; width: 100%">
                                        <tr>
                                            <td style="text-align: center">
                                                <asp:Button runat="server" ID="btnSearch_AgedRec" Text="Retrieve Aged Rec."
                                                    Font-Bold='true' OnClick="btnSearch_AgedRec_Click"
                                                    CssClass="red button" />
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>

                                                <asp:GridView ID="GvAgedRec" runat="server" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" AutoGenerateColumns="false"
                                                    CellPadding="4" ForeColor="Black" GridLines="Vertical">
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
                                </ContentTemplate>
                            </ajaxToolkit:TabPanel>
                        </ajaxToolkit:TabContainer>
                        <%-- </asp:Panel>--%>
                    </div>
                    <div class="clear"></div>

                </div>
                <!-- InstanceEndEditable -->

                <!-- the sidebar -->
                <aside class="sidebar">
                    <h5>Side Navigation</h5>
                    <div class="sideNav">
                        <ul>
                            <li><a href="Customer-Utilities.aspx" title="Customer Utilities" class="">Customer Utilities</a></li>
                            <li><a href="Reporting.aspx" title="Reporting" class="current">Reporting</a></li>
                            <li><a href="Freight-Rate.aspx" title="Freight Rate" class="">Freight Rate</a></li>
                            <li><a href="Profile.aspx" title="User Profile" class="">User Profile</a></li>
                            <li><a href="User-Management.aspx" title="Manage Users" class="">Manage Users</a></li>
                            <li><a href="Web-Management.aspx" title="Website Admin" class="">Website Admin</a></li>
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
    <script src="https://code.jquery.com/jquery-1.12.0.min.js"></script>
    <script src="https://code.jquery.com/jquery-migrate-1.2.1.min.js"></script>
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
