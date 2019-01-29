<%@ Page Title="" Language="C#" MasterPageFile="~/Master/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="WebApplication1.Customer.Default" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>

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
        .mainheader.company {
            background-image: url(../images/headers/company-header.jpg);
        }

        .mainheader.structuralcontact {
            background-image: url(../images/headers/structural-contact-header.jpg);
        }

        body {
            background-image: url(../images/body.jpg);
        }
    </style>
    <script type="text/javascript">
        var last = ""
        var ls_pdf_location = ""

        function selectButton(newElement) {
            try {
                if (last != "") {
                    var element = document.getElementById(last);
                    if (null != element) {
                        element.className = "";
                    }
                }
                //
                last = newElement;
                element = document.getElementById(newElement);
                if (null != element) {
                    element.className = "buttonSelected";
                }
                //
                return true;
            }
            catch (e) {
                window.location = 'SessionExpire.aspx';
            }
        }

        function disable_button(input) {
            document.getElementsByName(input)[0].disabled = true;
        }

        function hide_button(input) {
            document.getElementById(input).style.visibility = 'hidden';
        }

        function get_locations() {
            var locationLabel = document.getElementById("<%=locationList.ClientID%>");
              var location_iframe = document.getElementById("<%=location_iframe.ClientID %>");
            if (!location_iframe)
                return;
            //
            var loc_document = (location_iframe.contentWindow || location_iframe.contentDocument);
            var document_inputs;
            var full_string = "(";
            var i;
            //
            if (loc_document)
                loc_document = loc_document.document;
            else
                return;
            //
            document_inputs = loc_document.getElementsByTagName("input");
            var loc_count = 0;
            //
            for (i = 0; i < document_inputs.length; i++) {
                if (document_inputs[i].type == "checkbox" && document_inputs[i].checked) {
                    if (document_inputs[i].value == "*")
                        document_inputs[i].value = "%";
                    //
                    if (loc_count == 0)
                        full_string += "'" + document_inputs[i].value + "'";
                    else
                        full_string += ",'" + document_inputs[i].value + "'";
                    //
                    loc_count++;
                }
            }
            locationLabel.value = full_string + ")";
        }

        function set_locations() {
            var location_iframe = document.getElementById("<%=location_iframe.ClientID %>");
              var locationLabel = document.getElementById("<%=locationList.ClientID%>");
            if (!location_iframe || !locationLabel)
                return;
            //
            var loc_document = (location_iframe.contentWindow || location_iframe.contentDocument);
            var document_inputs;
            var selected = "";
            var i;
            selected = locationLabel.value;
            //
            if (loc_document)
                loc_document = loc_document.document;
            else
                return;
            //
            document_inputs = loc_document.getElementsByTagName("input");
            var loc_count = 0;
            //
            for (i = 0; i < document_inputs.length; i++) {
                if (document_inputs[i].type == "checkbox") {
                    if (document_inputs[i].value == "*")
                        document_inputs[i].value = "%";
                    //
                    if (selected.indexOf(document_inputs[i].value) > 0) {
                        document_inputs[i].checked = true;
                    }
                }
            }
        }

        var last_tab = 1

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

        newMap = new Image();

        function swapMap(image) {
            newMap.src = "../wp-content/themes/srd/images/map/sales_map-" + swapMap.arguments[0] + ".jpg";
            //swapImage('map', newMap);
            var map = document.getElementById("<%=salesMap.ClientID%>");
            if (null != map)
                map.src = newMap.src;
        }

        function swapImage(originalImage, changeImage) {

            document[originalImage].src = eval(swapImage.arguments[1] + ".src");
        }

    </script>
    <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>

    <div class="mainheader structuralcontact clear">
        <h3 style="font-weight: bold" title="MySDI">Customer Utilities</h3>
        <h5 style="margin-left: 30px; color: white; font-weight: bold">&nbsp;Our resources at your fingertips.</h5>
    </div>
    <br />
    <div class="clear"></div>
    <asp:UpdatePanel runat="server" ID="UpdatePan1" UpdateMode="Conditional">
        <Triggers>
            <asp:AsyncPostBackTrigger ControlID="Customer_Dropdown" EventName="SelectedIndexChanged" />
        </Triggers>
        <ContentTemplate>

            <div id="content-home_utilities" style="border: none; background-color: transparent">
                <div class="inner-content" style="width: 108%; margin-left: -45px; min-height: 720px; background: transparent;">

                    <asp:Panel runat="server" ID="pan_utilities">
                        <table style="margin-left: 100px; text-align: center; border: 0 solid White">
                            <tr>
                                <td id="Reporting" runat="server" style="cursor: pointer; width: 20%">
                                    <asp:LinkButton runat="server" ID="ReportingButton" Height="70px" Width="72px" OnClick="Toolbar_Click">
                                                    <asp:Image runat="server" Height="70px" Width="72px" ImageUrl="~/Style/images/office_report_sm.png"  />        
                                    </asp:LinkButton>
                                </td>
                                <td id="FreightRate" runat="server" style="cursor: pointer; width: 20%" visible="true">
                                    <asp:LinkButton runat="server" ID="FreightRateButton" Height="70px" Width="72px" OnClick="Toolbar_Click">
                                        <asp:Image ID="Image2" runat="server" Height="70px" Width="72px" ImageUrl="~/Style/images/truck_button.png" />
                                    </asp:LinkButton>
                                </td>
                                <td id="Profile" style="cursor: pointer; width: 20%">
                                    <asp:LinkButton runat="server" ID="ProfileButton" Height="70px" Width="72px" OnClick="Toolbar_Click">
                                        <asp:Image ID="Image3" runat="server" Height="70px" Width="72px" ImageUrl="~/Style/images/sample_user.png" />
                                    </asp:LinkButton>
                                </td>
                                <td id="UserManagement" runat="server" style="cursor: pointer; width: 20%" visible="true">
                                    <asp:LinkButton runat="server" ID="ManageUsersButton" Height="70px" Width="72px" OnClick="Toolbar_Click">
                                        <asp:Image ID="Image1" runat="server" Height="70px" Width="72px" ImageUrl="~/Style/images/manage_users.png" />
                                    </asp:LinkButton>
                                </td>
                                <td id="WebManagement" runat="server" visible="true" style="cursor: pointer; width: 20%">
                                    <asp:LinkButton runat="server" ID="WebManageButton" Height="70px" Width="72px" OnClick="Toolbar_Click">
                                        <asp:Image ID="Image4" runat="server" Height="70px" Width="72px" ImageUrl="~/Style/images/web_maint.png" />
                                    </asp:LinkButton>
                                </td>
                            </tr>
                            <tr>
                                <td runat="server" id="Reporting_Text" style="border: 0 solid White" visible="true">
                                    <strong>Reporting</strong>
                                </td>
                                <td runat="server" id="FreightRate_Text" style="border: 0 solid White" visible="true">
                                    <strong>Freight Rate</strong>
                                </td>
                                <td style="border: 0 solid White">
                                    <strong>User Profile</strong>
                                </td>
                                <td runat="server" id="UserManagement_Text" style="border: 0 solid White" visible="true">
                                    <strong>Manage Users</strong>
                                </td>
                                <td id="WebManagement_Text" runat="server" style="border: 0 solid White" visible="true">
                                    <strong>Website Admin.</strong>
                                </td>
                            </tr>
                        </table>
                    </asp:Panel>
                    <br />
                    <div class="transparent" style="margin-left: 100px; min-height: 720px; text-align: center">
                        <ajaxToolkit:TabContainer ID="Reporting_Tabs" runat="server"
                            AutoPostBack="true" BorderStyle="None" BorderWidth="0" Width="80%"
                            OnActiveTabChanged="tab_changed" CssClass="customTabs" ActiveTabIndex="0" Visible="true">
                            <ajaxToolkit:TabPanel Style="background-color: White" ID="order_status_tab" runat="server" HeaderText="Order Status"
                                OnClientClick="function(){hide_report(0);}"
                                BorderWidth="0px">
                                <ContentTemplate>
                                </ContentTemplate>
                            </ajaxToolkit:TabPanel>
                            <ajaxToolkit:TabPanel ID="shipping_schedule_tab" CssClass="emailHeader" HeaderText="Shipping Schedule" runat="server"
                                OnClientClick="function(){hide_report(1);}">
                                <ContentTemplate>
                                    <asp:Panel runat="server" ID="pan_ship_schedule_search">
                                    </asp:Panel>
                                </ContentTemplate>
                            </ajaxToolkit:TabPanel>
                            <ajaxToolkit:TabPanel ID="search_tab" CssClass="emailHeader" HeaderText="Search Record" runat="server"
                                OnClientClick="function(){hide_report(1);}">
                                <ContentTemplate>
                                </ContentTemplate>
                            </ajaxToolkit:TabPanel>
                            <ajaxToolkit:TabPanel ID="order_ack_tab" CssClass="emailHeader" HeaderText="Order Ack." runat="server"
                                OnClientClick="function(){hide_report(2);}">
                                <ContentTemplate>
                                </ContentTemplate>
                            </ajaxToolkit:TabPanel>
                            <ajaxToolkit:TabPanel ID="shipment_sum_tab" CssClass="emailHeader" runat="server" HeaderText="Shipment Summary"
                                OnClientClick="function(){hide_report(3);}">
                                <ContentTemplate>
                                </ContentTemplate>
                            </ajaxToolkit:TabPanel>
                            <ajaxToolkit:TabPanel ID="aged_rec_tab" CssClass="emailHeader" HeaderText="Aged Rec." runat="server"
                                OnClientClick="function(){hide_report(5);}">
                                <ContentTemplate>
                                </ContentTemplate>
                            </ajaxToolkit:TabPanel>
                        </ajaxToolkit:TabContainer>

                        <asp:Panel runat="server" ID="report_holder" CssClass="report_holder">
                            <div runat="server" id="pan_main" style="z-index: 10000">
                                <table style="width: 100%; padding: 0; white-space: 0; margin: 0;">
                                    <tr>
                                        <td style="width: 10%">
                                            <asp:UpdateProgress ID="UpdateProgress1" runat="server">
                                                <ProgressTemplate>

                                                    <img src="~/Style/images/SDI_Spinner_Small.gif" style="width: 40%" alt="" />
                                                    <div class="darkdrop"></div>

                                                </ProgressTemplate>
                                            </asp:UpdateProgress>
                                        </td>
                                        <td>
                                            <table style="width: 100%">
                                                <tr>
                                                    <td runat="server" id="company_td" style="text-align: center; width: 100%">

                                                        <strong>
                                                            <asp:Label ID="Label1" runat="server" Style="color: black" Text="Company:  " /><asp:Label runat="server" ID="lab_company_id" Style="color: Maroon" />
                                                        </strong>
                                                        <br />

                                                        <asp:DropDownList ID="Customer_Dropdown" runat="server" Width="360px" CssClass="dropdown_class"
                                                            OnSelectedIndexChanged="Customer_Dropdown_SelectedIndexChanged" AutoPostBack="true">
                                                            <asp:ListItem Text="(Select One)" Value="%" />
                                                        </asp:DropDownList>
                                                        <asp:Button runat="server" ID="b_locations" Text="Show Locations >" OnClick="b_locations_Click" Visible="false" CssClass="black button" Style="margin-top: 10px" />
                                                        <br />
                                                        <div runat="server" id="lbl_company_changed" style="color: Maroon" visible="false">
                                                            <br />
                                                            Company selection has changed -- Click the button below to run a new report.
                                                            <br />
                                                        </div>

                                                    </td>
                                                    <td runat="server" id="location_td">
                                                        <input type="hidden" runat="server" id="locationList" value="none" />

                                                        <div id="pan_location" runat="server" visible="false" style="text-align: center;">

                                                            <iframe runat="server" src="/srd/Report_Container.aspx?id=location_iframe&height=450" id="location_iframe"
                                                                frameborder="0" allowtransparency="true" noresize="noresize" style="width: 100%; height: 50px; background: transparent url(/srd/wp-content/themes/srd/images/SDI_Spinner_Small.gif) no-repeat center;">
                                                                <p style="color: Red">This web application uses iframes for reporting, which your browser does not support.</p>
                                                            </iframe>

                                                        </div>
                                                    </td>
                                                </tr>
                                            </table>
                                        </td>
                                    </tr>
                                </table>
                                <hr />
                            </div>

                            <asp:Panel runat="server" ID="pan_report_search_criteria" CssClass="criteria" Visible="false" HorizontalAlign="Center">

                                <asp:Label runat="server" ID="lab_criteria_instructions" Style="margin-bottom: 20px" />
                                <span style="color: #90631d; font-size: 1.25em; font-weight: bold">Search Criteria</span>
                                <br />
                                (Enter any or none)<br />
                                <br />
                                <asp:UpdatePanel runat="server" ID="criteria_update_pan" UpdateMode="Conditional">
                                    <ContentTemplate>
                                        <asp:Panel runat="server" ID="pan_criteria_fields">
                                            <asp:Panel runat="server" ID="pan_criteria_bol">
                                                <table>
                                                    <tr>
                                                        <td>
                                                            <p>BOL ID:</p>
                                                        </td>
                                                        <td>
                                                            <asp:TextBox runat="server" ID="tb_criteria_bol" /></td>
                                                    </tr>
                                                </table>
                                            </asp:Panel>
                                            <asp:Panel runat="server" ID="pan_criteria_heat">
                                                <table>
                                                    <tr>
                                                        <td>
                                                            <p>Heat:</p>
                                                        </td>
                                                        <td>
                                                            <asp:TextBox runat="server" ID="tb_criteria_heat" /></td>
                                                    </tr>
                                                </table>
                                            </asp:Panel>
                                            <asp:Panel runat="server" ID="pan_criteria_invoice">
                                                <table>
                                                    <tr>
                                                        <td>
                                                            <p>Invoice No:</p>
                                                        </td>
                                                        <td>
                                                            <asp:TextBox runat="server" ID="tb_criteria_invoice" /></td>
                                                    </tr>
                                                </table>
                                            </asp:Panel>
                                            <asp:Panel runat="server" ID="pan_criteria_bundle">
                                                <table>
                                                    <tr>
                                                        <td>
                                                            <p>Bundle:</p>
                                                        </td>
                                                        <td>
                                                            <asp:TextBox runat="server" ID="tb_criteria_bundle" /></td>
                                                    </tr>
                                                </table>
                                            </asp:Panel>
                                            <asp:Panel runat="server" ID="pan_criteria_po_num">
                                                <table>
                                                    <tr>
                                                        <td>
                                                            <p>PO Number:</p>
                                                        </td>
                                                        <td>
                                                            <asp:TextBox runat="server" ID="tb_criteria_po_num" /></td>
                                                    </tr>
                                                </table>
                                            </asp:Panel>
                                            <asp:Panel runat="server" ID="pan_criteria_vehicle_id">
                                                <table>
                                                    <tr>
                                                        <td>
                                                            <p>Vehicle Id:</p>
                                                        </td>
                                                        <td>
                                                            <asp:TextBox runat="server" ID="tb_criteria_vehicle_id" /></td>
                                                    </tr>
                                                </table>
                                            </asp:Panel>
                                            <asp:Panel runat="server" ID="pan_criteria_sales_ord">
                                                <table>
                                                    <tr>
                                                        <td>
                                                            <p>Sales Order:</p>
                                                        </td>
                                                        <td>
                                                            <asp:TextBox runat="server" ID="tb_criteria_sales_ord" /></td>
                                                    </tr>
                                                </table>
                                            </asp:Panel>
                                            <asp:Panel runat="server" ID="pan_criteria_pickup">
                                                <table>
                                                    <tr>
                                                        <td>
                                                            <p>Pickup Id:</p>
                                                        </td>
                                                        <td>
                                                            <asp:TextBox runat="server" ID="tb_criteria_pickup" /></td>
                                                    </tr>
                                                </table>
                                            </asp:Panel>
                                            <asp:Panel runat="server" ID="pan_criteria_trans_mode">
                                                <table>
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
                                                    </tr>
                                                </table>
                                            </asp:Panel>
                                            <asp:Panel runat="server" ID="pan_criteria_ship_status">
                                                <table>
                                                    <tr>
                                                        <td>
                                                            <p>Ship Status:</p>
                                                        </td>
                                                        <td style="float: right">
                                                            <asp:DropDownList runat="server" Width="100%" CssClass="dropdown_class" ID="dl_criteria_ship_status">
                                                                <asp:ListItem Text="(ANY)" Value="%" />
                                                                <asp:ListItem Text="IN PLAN" Value="IN_PLAN" />
                                                                <asp:ListItem Text="PLANNED" />
                                                                <asp:ListItem Text="SHIPPED" />
                                                            </asp:DropDownList></td>
                                                    </tr>
                                                </table>
                                            </asp:Panel>
                                            <asp:Panel runat="server" ID="pan_criteria_expedite">
                                                <table>
                                                    <tr>
                                                        <td>
                                                            <p>Expedited Only:</p>
                                                        </td>
                                                        <td style="float: right">
                                                            <asp:CheckBox runat="server" ID="cb_criteria_expedite" Text="" /></td>
                                                    </tr>
                                                </table>
                                            </asp:Panel>
                                        </asp:Panel>
                                        </table>
                                    <asp:Panel runat="server" ID="pan_criteria_prod_type">
                                        <table style="text-align: left; width: 100%">
                                            <tr>
                                                <td style="width: 30%">
                                                    <p>Product Type:</p>
                                                </td>
                                                <td>
                                                    <asp:DropDownList runat="server" CssClass="dropdown_class" ID="dl_criteria_prod_type" EnableViewState="true"></asp:DropDownList></td>
                                            </tr>
                                        </table>
                                    </asp:Panel>
                                        <asp:Panel runat="server" ID="pan_criteria_sizes">
                                            <table style="text-align: left; width: 100%">
                                                <tr>
                                                    <td style="width: 30%">
                                                        <p>Product Size:</p>
                                                    </td>
                                                    <td>
                                                        <b>
                                                            <asp:DropDownList runat="server" CssClass="dropdown_class" ID="dl_product_sizes" EnableViewState="true">
                                                                <asp:ListItem Text="(Select Company)" />
                                                            </asp:DropDownList></td>
                                                    </b>
                                                </tr>
                                            </table>
                                        </asp:Panel>
                                    </ContentTemplate>
                                </asp:UpdatePanel>
                                <br />
                                <asp:Panel runat="server" ID="pan_criteria_date_range">
                                    <br />

                                    <asp:Label runat="server" ID="lab_criteria_date_range_title" Style="color: #90631d; font-size: 1.25em; font-weight: bold">Shipped Date Range<br />MM/DD/YY (Defaults to past 6 months)</asp:Label>

                                    <br />
                                    <table>
                                        <tr>
                                            <td>
                                                <p>From:</p>
                                            </td>
                                            <td>
                                                <asp:TextBox runat="server" ID="tb_criteria_date_from" /></td>
                                            <td>
                                                <%-- <asp:CalendarExtender ID="CalendarExtender8" runat="server"
                                            TargetControlID="tb_criteria_date_from" 
                                            Format="MM/dd/yy">
                                            </asp:CalendarExtender>--%>
                                            </td>
                                            <td>
                                                <p>To:</p>
                                            </td>
                                            <td>
                                                <asp:TextBox runat="server" ID="tb_criteria_date_to" /></td>
                                            <td>
                                                <%--<asp:CalendarExtender ID="CalendarExtender9" runat="server" 
                                            TargetControlID="tb_criteria_date_to" 
                                            Format="MM/dd/yy">
                                            </asp:CalendarExtender>--%>
                                            </td>
                                        </tr>
                                    </table>
                                    <br />
                                </asp:Panel>

                            </asp:Panel>

                            <asp:Label runat="server" ForeColor="Red" ID="lbl_error" Visible="false" />

                            <div id="button_div">
                                <table style="text-align: center; width: 100%">
                                    <tr>
                                        <td style="width: 500px"></td>
                                        <td>
                                            <asp:Button runat="server" ID="b_report_retrieve" Text="Retrieve"
                                                Font-Bold='true' OnClientClick="get_locations()"
                                                UseSubmitBehavior="true"
                                                CssClass="red button" />
                                            <%--OnClientClick="get_locations()"   OnClick="b_report_retrieve_Click"--%>
                                        </td>
                                        <td>
                                            <asp:Button runat="server" ID="b_search_back" Text="Return to Search" Font-Bold="true"
                                                OnClick="b_search_back_Click" OnClientClick="get_locations()" UseSubmitBehavior='true' CssClass="red button" />
                                        </td>
                                    </tr>
                                </table>



                            </div>

                            <asp:Panel runat="server" ID="pan_freight_rate" CssClass="freight_panel" DefaultButton="freight_button" Visible="false">
                                <hr />
                                <h2 style="font-size: 1.8em; text-align: left; margin-left: 80px; margin-top: 10px; margin-bottom: 10px">Search Freight Rates</h2>
                                <hr />

                                <table style="text-align: center;">
                                    <tr>
                                        <td>
                                            <table>
                                                <tr>
                                                    <td style="color: Black; text-align: right">Postal Code:</td>
                                                    <td>
                                                        <asp:TextBox runat="server" ID="postal_code_txt" /></td>
                                                </tr>
                                                <tr>
                                                    <td style="color: Black; text-align: right">City:</td>
                                                    <td>
                                                        <asp:TextBox runat="server" ID="city_txt" /></td>
                                                </tr>
                                                <tr>
                                                    <td>&nbsp;</td>
                                                    <td>
                                                        <asp:Button runat="server" ID="freight_button" Text="Get Rate"
                                                            OnClick="freight_button_Click"
                                                            UseSubmitBehavior="true"
                                                            CausesValidation="true"
                                                            CssClass="red button" />
                                                    </td>
                                                </tr>
                                            </table>
                                        </td>
                                        <td>+ Rates for RAIL, TRUCK (52' and UNDER), and TRUCK (52'1" to 60') are currently available.
                                        <br />
                                            &nbsp;&nbsp;&nbsp;&nbsp;<i>Please contact your sales representative regarding other lengths.</i>
                                        </td>
                                    </tr>
                                </table>

                            </asp:Panel>

                            <asp:UpdatePanel runat="server" ID="user_profile_update" UpdateMode="Conditional">
                                <Triggers>
                                    <asp:AsyncPostBackTrigger ControlID="b_pass_change_ok" EventName="Click" />
                                </Triggers>
                                <ContentTemplate>
                                    <asp:Panel runat="server" ID="pan_user_profile" Visible="false" CssClass="profile_panel" Style="color: Black" HorizontalAlign="Center">

                                        <hr />
                                        <h2 style="font-size: 1.8em; text-align: left; margin-left: 80px; margin-top: 10px; margin-bottom: 10px">My Profile</h2>
                                        <hr />
                                        <div style="width: 50%; border: 2px Ridge Silver; background-color: White">
                                            <br />
                                            <table style="background-color: Silver; border: 2px Ridge Gray; width: 80%">
                                                <tr>
                                                    <td><strong>User Name: </strong></td>
                                                    <td>
                                                        <asp:Label runat="server" ID="profile_username" Enabled="false" /></td>
                                                </tr>
                                                <tr>
                                                    <td><strong>Company: </strong></td>
                                                    <td>
                                                        <asp:Label runat="server" ID="profile_customer" Enabled="false" /></td>
                                                </tr>
                                            </table>
                                            <h5>Contact Info.</h5>
                                            <table style="background-color: Silver; border: 2px Ridge Gray; width: 80%">
                                                <tr>
                                                    <td><strong>First Name: </strong></td>
                                                    <td>
                                                        <asp:TextBox runat="server" ID="profile_first_name" Enabled="false" /></td>
                                                </tr>
                                                <tr>
                                                    <td><strong>Last Name: </strong></td>
                                                    <td>
                                                        <asp:TextBox runat="server" ID="profile_last_name" Enabled="false" /></td>
                                                </tr>
                                                <tr>
                                                    <td><strong>Title: </strong></td>
                                                    <td>
                                                        <asp:TextBox runat="server" ID="profile_title" Enabled="false" /></td>
                                                </tr>
                                                <tr>
                                                    <td><strong>Email: </strong></td>
                                                    <td>
                                                        <asp:TextBox runat="server" ID="profile_email" Enabled="false" Width="230px" /></td>
                                                </tr>
                                                <tr>
                                                    <td><strong>Phone: </strong></td>
                                                    <td>
                                                        <asp:TextBox runat="server" ID="profile_phone" Enabled="false" /></td>
                                                </tr>
                                            </table>
                                            <hr />
                                            <div style="padding-bottom: 10px">
                                                <asp:Button runat="server" ID="b_profile_edit" Text="Edit Info." OnClick="b_profile_edit_Click" CssClass="white button" />
                                                <asp:Button runat="server" ID="b_profile_save" Text="Save" OnClick="b_profile_save_Click" Visible="false" CssClass="red button" />
                                                <asp:Button runat="server" ID="b_reset_password" CssClass="black button" Text="Change Password" OnClick="b_reset_password_Click" />
                                            </div>
                                        </div>

                                        <asp:Button runat="server" ID="dum_change_pass" Style="display: none" />

                                        <ajaxToolkit:ModalPopupExtender runat="server" ID="pass_change_popup"
                                            BackgroundCssClass="darkdrop"
                                            TargetControlID="dum_change_pass"
                                            PopupControlID="pan_change_pass_popup"
                                            CancelControlID="b_pass_change_cancel" />

                                        <asp:Panel runat="server" ID="pan_change_pass_popup" CssClass="user_popup" DefaultButton="b_pass_change_ok" Style="display: none; max-width: 500px" HorizontalAlign="Center">

                                            <br />
                                            <h5>&nbsp;&nbsp;Change Password</h5>
                                            <hr />
                                            <asp:Panel runat="server" ID="pan_change_pass_input">
                                                <table>
                                                    <tr>
                                                        <td><strong>Current Password: </strong></td>
                                                        <td>
                                                            <asp:TextBox runat="server" ID="tb_change_pass_current_pass" Width="150px" TextMode="Password" /></td>
                                                    </tr>
                                                    <tr>
                                                        <td>&nbsp;</td>
                                                        <td>
                                                            <hr />
                                                        </td>
                                                        <tr>
                                                            <td><strong>New Password: </strong></td>
                                                            <td>
                                                                <asp:TextBox runat="server" ID="tb_change_new_pass" Width="150px" TextMode="Password" /></td>
                                                        </tr>
                                                    <tr>
                                                        <td><strong>Confirm Password: </strong></td>
                                                        <td>
                                                            <asp:TextBox runat="server" ID="tb_change_confirm_pass" Width="150px" TextMode="Password" /></td>
                                                    </tr>
                                                </table>
                                            </asp:Panel>
                                            <br />
                                            <asp:Label runat="server" ID="lab_change_pass_error" CssClass="errorText" />
                                            <hr />
                                            <div style="padding-bottom: 10px">
                                                <asp:Button runat="server" ID="b_pass_change_cancel" Text="Close" CssClass="white button" OnClick="b_pass_change_cancel_Click" UseSubmitBehavior="false" />
                                                <asp:Button runat="server" ID="b_pass_change_ok" Text="Accept" CssClass="red button" OnClick="b_pass_change_ok_Click" UseSubmitBehavior="false" />
                                            </div>

                                        </asp:Panel>
                                    </asp:Panel>
                                </ContentTemplate>
                            </asp:UpdatePanel>


                            <asp:UpdatePanel runat="server" ID="updatepan_user_manage" UpdateMode="Conditional">
                                <Triggers>
                                    <asp:AsyncPostBackTrigger ControlID="lb_user_manage_users" EventName="SelectedIndexChanged" />
                                    <asp:AsyncPostBackTrigger ControlID="tabs_utilities" EventName="ActiveTabChanged" />
                                    <asp:AsyncPostBackTrigger ControlID="b_create_user_ok" EventName="Click" />
                                </Triggers>
                                <ContentTemplate>
                                    <asp:UpdateProgress ID="UpdateProgress2" runat="server" AssociatedUpdatePanelID="updatepan_user_manage">
                                        <ProgressTemplate>

                                            <div class="darkdrop">
                                            </div>

                                        </ProgressTemplate>
                                    </asp:UpdateProgress>

                                    <asp:Panel runat="server" ID="pan_user_manage" Style="height: auto" Visible="false">
                                        <h2 style="font-size: 1.8em; text-align: left; margin-left: 80px; margin-bottom: 10px">User Management</h2>
                                        <hr />
                                        <div runat="server" style="float: left; margin-left: 30px">
                                            <table>
                                                <tr>
                                                    <td>
                                                        <h1 style="font-size: 1.5em; text-align: left">User List</h1>
                                                        <asp:ListBox ID="lb_user_manage_users" runat="server" CssClass="company_user_list"
                                                            AutoPostBack="true" EnableViewState="true" OnSelectedIndexChanged="tabs_utilities_ActiveTabChanged">
                                                            <asp:ListItem Text="(Select a Company)"></asp:ListItem>
                                                        </asp:ListBox>
                                                        <%-- <cc1:SRDListBox runat="server" ID="lb_user_manage_users" Width="220px"
                                                     CSSClass="company_user_list"  
                                                     AutoPostBack="true" 
                                                     EnableViewState="true"
                                                     OnSelectedIndexChanged="manage_users_load_profile" >
                                            <asp:ListItem Text="(Select a Company)" />
                                        </cc1:SRDListBox>--%>

                                                        <asp:Button runat="server" ID="b_user_manage_create_user" Enabled="false" Text="Create User"
                                                            Style="cursor: pointer; margin-top: 4px;" CssClass="white button" OnClick="b_user_manage_create_user_Click" UseSubmitBehavior="false" />

                                                    </td>
                                                </tr>
                                            </table>
                                        </div>
                                        <div runat="server" style="float: right; margin-right: 20px; width: 70%">
                                            <ajaxToolkit:TabContainer runat="server" CssClass="customTabs" ID="tabs_utilities" OnActiveTabChanged="tabs_utilities_ActiveTabChanged" AutoPostBack="true">
                                                <ajaxToolkit:TabPanel ID="tab_panel_user_profile" runat="server" HeaderText="User Profile">
                                                    <ContentTemplate>
                                                        <asp:Panel runat="server" ID="pan_user_manage_profile_no_content" CssClass="profile_content" Style="border: 2px Solid Silver">
                                                            <br />
                                                            <br />
                                                            <span style="font-size: larger; color: Maroon;">(Select a Company and User)</span>
                                                        </asp:Panel>

                                                        <asp:Panel runat="server" ID="pan_user_manage_profile_content" CssClass="profile_content" Visible="False" Style="border: 2px Solid Silver">
                                                            <h1 style="font-size: 1.5em; text-align: left; margin-left: 30px; margin-top: 10px">User Profile</h1>
                                                            <table>
                                                                <tr>
                                                                    <td>
                                                                        <div style="border: 1px Solid Silver; height: auto; margin-bottom: 15px">
                                                                            <div style="margin: 10px; text-align: center">
                                                                                <asp:Button runat="server" ID="b_user_manage_edit_profile" Text="Edit" Enabled="False" OnClick="b_user_manage_edit_profile_Click" Style="cursor: pointer" CssClass="black button" />

                                                                                <img alt="" src="~/Style/images/vertical_divider.png" style="vertical-align: middle" />
                                                                                <asp:Button runat="server" ID="b_user_manage_save_profile" Text="Save" Font-Bold="True" Enabled="False" OnClick="b_user_manage_save_profile_Click" Style="cursor: pointer" CssClass="white button" />


                                                                            </div>
                                                                            <table>
                                                                                <tr>
                                                                                    <td style="text-align: right; width: 20%">Company ID:</td>
                                                                                    <td>
                                                                                        <asp:Button runat="server" ID="b_user_manage_profile_company_change" OnClick="b_user_manage_profile_company_change_Click" Visible="False" Text="Change..." Style="margin-right: 5px" CssClass="gray button" />

                                                                                        <asp:Label runat="server" ID="lab_user_manage_profile_company" Width="300px" Style="font-weight: bold" />
</td>
                                                                                </tr>
                                                                                <tr>
                                                                                    <td style="text-align: right">Status:</td>
                                                                                    <td>
                                                                                        <asp:Label runat="server" ID="lab_user_manage_profile_enabled" Style="color: Green" />
<asp:Button runat="server" ID="b_user_manage_profile_enabled" Visible="False" CssClass="white button" OnClick="b_user_manage_profile_enabled_Click" />

                                                                                        &nbsp;|&nbsp;
                                                                        <asp:Label runat="server" ID="lab_user_manage_profile_locked" Style="color: Green" />
<asp:Button runat="server" ID="b_user_manage_profile_locked" Visible="False" CssClass="white button" OnClick="b_user_manage_profile_locked_Click" />

                                                                                        &nbsp;|&nbsp;
                                                                        <asp:Label runat="server" ID="lab_user_manage_profile_active" Style="color: Green" />

                                                                                    </td>
                                                                                </tr>
                                                                                <tr>
                                                                                    <td style="text-align: right">Last Activity:</td>
                                                                                    <td>
                                                                                        <asp:Label runat="server" ID="lab_user_manage_profile_last_activity" Width="300px" Enabled="False" />
</td>
                                                                                </tr>
                                                                                <tr>
                                                                                    <td style="text-align: right">First Name:</td>
                                                                                    <td>
                                                                                        <asp:TextBox runat="server" ID="tb_user_manage_profile_firstname" Width="100px" Enabled="False" />
</td>
                                                                                </tr>
                                                                                <tr>
                                                                                    <td style="text-align: right">Last Name:</td>
                                                                                    <td>
                                                                                        <asp:TextBox runat="server" ID="tb_user_manage_profile_lastname" Width="150px" Enabled="False" />
</td>
                                                                                </tr>
                                                                                <tr>
                                                                                    <td style="text-align: right">Title:</td>
                                                                                    <td style="text-align: left">
                                                                                        <asp:TextBox runat="server" ID="tb_user_manage_profile_title" Width="220px" Enabled="False" />
</td>
                                                                                </tr>
                                                                                <tr>
                                                                                    <td style="text-align: right">
                                                                                        <asp:Label runat="server" ID="lab_user_manage_profile_email" Text="Email:" />
</td>
                                                                                    <td>
                                                                                        <asp:TextBox runat="server" ID="tb_user_manage_profile_email" Width="280px" Enabled="False" />
</td>
                                                                                </tr>
                                                                                <tr>
                                                                                    <td style="text-align: right">Phone:</td>
                                                                                    <td style="text-align: left">
                                                                                        <asp:TextBox runat="server" ID="tb_user_manage_profile_phone" Width="150px" Enabled="False" />
</td>
                                                                                </tr>
                                                                                <tr>
                                                                                    <td>&nbsp;</td>
                                                                                    <td>
                                                                                        <asp:Label runat="server" ID="lab_manage_users_recover_txt"
                                                                                            Font-Size="Small"
                                                                                            Text="Execute reset when a user cannot recover their account themselves, (they have forgotten answers to security questions)."
                                                                                            Font-Italic="True" />

                                                                                    </td>
                                                                                </tr>
                                                                                <tr>
                                                                                    <td>&nbsp;</td>
                                                                                    <td>
                                                                                        <table>
                                                                                            <tr>
                                                                                                <td style="border-right: 2px Solid Silver">
                                                                                                    <asp:Button runat="server" ID="b_reset_user" Text="Reset User" OnClick="b_reset_user_Click" CssClass="gray button" />
</td>
                                                                                                <td>
                                                                                                    <asp:Button runat="server" ID="b_delete_user" Text="Delete User" OnClick="b_delete_user_Click" CssClass="red button" />

                                                                                                </td>
                                                                                            </tr>
                                                                                        </table>
                                                                                    </td>
                                                                                </tr>
                                                                                <tr>
                                                                                    <td>&nbsp;</td>
                                                                                    <td>
                                                                                        <hr />
                                                                                    </td>
                                                                                </tr>
                                                                            </table>

                                                                            <ajaxToolkit:ConfirmButtonExtender ID="delete_button_confirm_extender" runat="server" TargetControlID="b_delete_user" ConfirmText="" BehaviorID="_content_delete_button_confirm_extender" />


                                                                            <ajaxToolkit:ConfirmButtonExtender ID="reset_button_confirm_extender" runat="server" TargetControlID="b_reset_user" ConfirmText="" BehaviorID="_content_reset_button_confirm_extender" />


                                                                            <asp:Panel runat="server" ID="pan_user_manage_access" Visible="False">
                                                                                <table>
                                                                                    <tr>
                                                                                        <td style="text-align: right">Access Level:</td>
                                                                                        <td style="text-align: left">
                                                                                            <asp:DropDownList runat="server" ID="dl_user_manage_profile_access"
                                                                                                CssClass="dropdown_class"
                                                                                                Width="130px" Enabled="False"
                                                                                                OnSelectedIndexChanged="dl_user_manage_profile_access_SelectedIndexChanged"
                                                                                                AutoPostBack="True"><asp:ListItem Text="Basic User" />
<asp:ListItem Text="Advanced User" />
<asp:ListItem Text="Sales Rep" />
<asp:ListItem Text="Sales Admin" />
</asp:DropDownList>

                                                                                        </td>
                                                                                    </tr>
                                                                                    <tr runat="server" id="pan_user_manage_sdi_csr" visible="False"><td style="text-align: right" runat="server">SDI Sales Rep:</td>
<td style="text-align: left" runat="server">
                                                                                            <asp:CheckBox runat="server" ID="cb_user_manage_sdi_csr" Enabled="False" />
</td>
</tr>

                                                                                    <tr>
                                                                                        <td style="text-align: right">Description:</td>
                                                                                        <td style="text-align: left">
                                                                                            <asp:Label runat="server" ID="lab_user_manage_access_desc" />
</td>
                                                                                    </tr>
                                                                                </table>
                                                                            </asp:Panel>

                                                                            <br />
                                                                        </div>
                                                                    </td>
                                                                </tr>
                                                            </table>
                                                        </asp:Panel>

                                                        <asp:Panel runat="server" ID="pan_company_change_popup" CssClass="user_popup" Style="display: none; width: auto">
                                                            <div style="min-width: 320px; min-height: 120px; margin: 10px">
                                                                <h5 runat="server" id="hd_user_manage_change_company">Change Company ID</h5>

                                                                User:
                                                                <asp:Label runat="server" ID="lab_user_manage_change_company_username" Style="font-weight: bold" />

                                                                <div runat="server" id="div_user_manage_change_company_current" style="border: 2px Solid Silver; margin-top: 10px">
                                                                    Currently:
                                                                    <asp:Label runat="server" ID="lab_user_manage_change_company_current" Style="font-weight: bold" />

                                                                </div>

                                                                <br />
                                                                <br />

                                                                New Company:<asp:Label runat="server" ID="lab_user_manage_change_company_new" Style="color: Green" />


                                                                <div runat="server" id="div_user_manage_company_change_dropdown">
                                                                    <asp:DropDownList runat="server" ID="dl_user_manage_change_company" Width="300px" />

                                                                    <br />
                                                                    <br />
                                                                </div>

                                                                <hr />
                                                                <asp:Button runat="server" ID="b_company_change_cancel" CssClass="white button" Text="Close" />

                                                                <asp:Label runat="server" ID="pan_company_change_accept" Text=" | " />

                                                                <asp:Button runat="server" ID="b_company_change_accept" CssClass="red button" Text="Accept" Style="margin-bottom: 10px" OnClick="b_company_change_accept_Click" />

                                                            </div>
                                                        </asp:Panel>

                                                        <asp:Button runat="server" ID="b_dummy_company_change" Style="display: none" />

                                                        <ajaxToolkit:ModalPopupExtender runat="server" ID="popup_company_change"
                                                            TargetControlID="b_dummy_company_change"
                                                            PopupControlID="pan_company_change_popup"
                                                            CancelControlID="b_company_change_cancel"
                                                            BackgroundCssClass="darkdrop" BehaviorID="_content_popup_company_change" DynamicServicePath="" />

                                                    
</ContentTemplate>
                                                
</ajaxToolkit:TabPanel>
                                                <ajaxToolkit:TabPanel ID="pan_user_manage_company_access" runat="server" HeaderText="Company Access" Visible="false" Style="border: 2px Solid Silver; background-color: White">
                                                    <ContentTemplate>
                                                        <div style="height: auto; border-bottom: 1px Solid Gray">
                                                            <h1 style="font-size: 1.5em; text-align: left; margin-left: 30px; margin-top: 10px">Company Access</h1>
                                                            <table style="width: 100%">
                                                                <tr>
                                                                    <td style="text-align: right; vertical-align: text-top; width: 40%">
                                                                        <strong>Available Companies</strong>
                                                                        <br />
                                                                        <asp:ListBox runat="server" ID="lb_user_manage_company_access_companies" Width="300px" Height="250px">
                                                                            <asp:ListItem Text="Select Company" />
                                                                        </asp:ListBox>
                                                                    </td>
                                                                    <td style="text-align: center; width: 20%">

                                                                        <asp:Button ID="b_company_access_assign" runat="server" Text="Assign >" Width="80px"
                                                                            OnClick="b_company_access_assign_Click" CssClass="white button" />
                                                                        <br />
                                                                        <asp:Button ID="b_company_access_remove" runat="server" Text="< Remove" Width="80px"
                                                                            OnClick="b_company_access_remove_Click" CssClass="white button" Style="margin-top: 5px" />
                                                                        <br />
                                                                        <hr />
                                                                        <asp:Button ID="b_company_access_assign_all" runat="server" Text=">>" Width="80px" Enabled="false"
                                                                            OnClick="b_company_access_assign_all_Click" ToolTip="Assign All" CssClass="white button" />
                                                                        <br />
                                                                        <asp:Button ID="b_company_access_remove_all" runat="server" Text="<<" Width="80px" Enabled="false"
                                                                            OnClick="b_company_access_remove_all_Click" ToolTip="Remove All" CssClass="white button" Style="margin-top: 5px" />

                                                                    </td>
                                                                    <ajaxToolkit:ConfirmButtonExtender ID="ConfirmButtonExtender3" runat="server" TargetControlID="b_company_access_assign_all"
                                                                        ConfirmText="ASSIGN all companies to this user?" />
                                                                    <ajaxToolkit:ConfirmButtonExtender ID="ConfirmButtonExtender4" runat="server" TargetControlID="b_company_access_remove_all"
                                                                        ConfirmText="REMOVE all company access from this user?" />
                                                                    <td style="width: 40%">
                                                                        <strong>Assigned Access</strong>
                                                                        <br />
                                                                        <asp:ListBox runat="server" ID="lb_user_manage_company_access_security" Width="300px" Height="250px">
                                                                            <asp:ListItem Text="Select Company" />
                                                                        </asp:ListBox>

                                                                        <asp:Button Style="margin-top: 10px; margin-bottom: 10px" runat="server" ID="b_user_manage_company_access_copy_from_user" Text="Copy From..." CssClass="white button" Enabled="false" OnClick="b_user_manage_company_access_copy_from_user_Click" ToolTip="Copy company access from another user." />

                                                                    </td>
                                                                </tr>
                                                            </table>
                                                        </div>

                                                        <asp:Button runat="server" ID="b_dummy_user_copy" Style="display: none" />
                                                        <ajaxToolkit:ModalPopupExtender runat="server" ID="popup_manage_company_access_copy_user"
                                                            TargetControlID="b_dummy_user_copy"
                                                            CancelControlID="b_user_copy_cancel"
                                                            BackgroundCssClass="darkdrop"
                                                            PopupControlID="pan_user_manage_copy_user" />

                                                        <asp:Panel runat="server" ID="pan_user_manage_copy_user" CssClass="user_popup" Style="max-width: 250px">
                                                            <h3>Copy Access From:</h3>
                                                            <div style="height: auto; margin: 20px; margin-top: 0">
                                                                <asp:ListBox runat="server" ID="lb_user_manage_company_access_copy_list" Width="100%">
                                                                    <asp:ListItem>(No Users to Copy)</asp:ListItem>
                                                                </asp:ListBox>
                                                                <hr />

                                                                <table>
                                                                    <tr>
                                                                        <td style="border-right: 2px Solid Gray">
                                                                            <asp:Button runat="server" ID="b_user_copy_cancel" Text="Cancel" CssClass="white button" />
                                                                        </td>
                                                                        <td>
                                                                            <asp:Button runat="server" ID="b_user_copy_accept" Text="Select" CssClass="red button" OnClick="b_user_copy_accept_Click" /></td>
                                                                    </tr>
                                                                </table>

                                                            </div>

                                                        </asp:Panel>
                                                    
</ContentTemplate>
                                                
</ajaxToolkit:TabPanel>
                                                <ajaxToolkit:TabPanel ID="tab_panel_data_access" runat="server" HeaderText="Data Access" Style="border: 2px Solid Silver; background-color: White">
                                                    <ContentTemplate>
                                                        <div style="height: 330px; border-bottom: 1px Solid Gray">
                                                            <h1 style="font-size: 1.5em; text-align: left; margin-left: 30px; margin-top: 10px">Data Access</h1>
                                                            <table style="width: 100%">
                                                                <tr>
                                                                    <td style="text-align: right; vertical-align: text-top; width: 40%">
                                                                        <strong>Available Data</strong>
                                                                        <br />
                                                                        <asp:ListBox runat="server" ID="lb_user_manage_data_access_objects" Width="300px" Height="250px">
                                                                            <asp:ListItem Text="Select Company" />
                                                                        </asp:ListBox>
                                                                    </td>
                                                                    <td style="width: 20%">

                                                                        <asp:Button ID="b_data_access_assign" runat="server" Text="Assign >" Width="80px"
                                                                            OnClick="b_data_access_assign_Click" CssClass="white button" />
                                                                        <br />
                                                                        <asp:Button ID="b_data_access_remove" runat="server" Text="< Remove" Width="80px"
                                                                            OnClick="b_data_access_remove_Click" CssClass="white button" Style="margin-top: 5px" />
                                                                        <br />
                                                                        <hr />
                                                                        <asp:Button ID="b_data_access_assign_all" runat="server" Text=">>" Width="80px" Enabled="false"
                                                                            OnClick="b_data_access_assign_all_Click" ToolTip="Assign All" CssClass="white button" />
                                                                        <br />
                                                                        <asp:Button ID="b_data_access_remove_all" runat="server" Text="<<" Width="80px" Enabled="false"
                                                                            OnClick="b_data_access_remove_all_Click" ToolTip="Remove All" CssClass="white button" Style="margin-top: 5px" />

                                                                    </td>
                                                                    <ajaxToolkit:ConfirmButtonExtender ID="ConfirmButtonExtender1" runat="server" TargetControlID="b_data_access_assign_all"
                                                                        ConfirmText="ASSIGN all data objects to this user?" />
                                                                    <ajaxToolkit:ConfirmButtonExtender ID="ConfirmButtonExtender2" runat="server" TargetControlID="b_data_access_remove_all"
                                                                        ConfirmText="REMOVE all data object access from this user?" />
                                                                    <td style="width: 40%">
                                                                        <strong>Assigned Access</strong>
                                                                        <br />
                                                                        <asp:ListBox runat="server" ID="lb_user_manage_data_access_security" Width="300px" Height="250px">
                                                                            <asp:ListItem Text="Select Company" />
                                                                        </asp:ListBox>
                                                                    </td>
                                                                </tr>
                                                            </table>
                                                        </div>
                                                    
</ContentTemplate>
                                                
</ajaxToolkit:TabPanel>
                                            </ajaxToolkit:TabContainer>
                                        </div>
                                        <br style="clear: both;" />
                                        <br style="clear: both;" />
                                    </asp:Panel>

                                    <asp:Panel runat="server" ID="pan_user_manage_create_user" CssClass="user_popup" Style="display: none; max-width: 400px">
                                        <br />
                                        <table style="width: 100%">
                                            <tr>
                                                <td>
                                                    <h2 style="font-size: large">Create User</h2>
                                                </td>
                                                <td>
                                                    <div style="float: right">
                                                        <asp:Button runat="server" ID="b_user_manage_create_user_select_reg"
                                                            Font-Size="smaller"
                                                            Text="Import from Request"
                                                            CssClass="gray button"
                                                            UseSubmitBehavior="false"
                                                            OnClick="b_user_manage_create_user_select_reg_Click"
                                                            Visible="false" />
                                                    </div>
                                                </td>
                                            </tr>
                                            <table style="width: 100%">
                                                <tr>
                                                    <td>
                                                        <div style="text-align: center; border: 1px Solid Gray">
                                                            <asp:Label runat="server" ID="lab_create_user_company" Font-Bold="true" />
                                                        </div>
                                                    </td>
                                                </tr>
                                            </table>
                                            <div style="height: auto" class="formTable">
                                                <asp:UpdatePanel runat="server" UpdateMode="Conditional">
                                                    <ContentTemplate>

                                                        <hr />
                                                        <table>
                                                            <tr>
                                                                <td style="text-align: right"><strong>First Name:</strong></td>
                                                                <td>
                                                                    <asp:TextBox runat="server" ID="tb_create_user_firstname" Width="140px" /></td>
                                                            </tr>
                                                            <tr>
                                                                <td style="text-align: right"><strong>Last Name:</strong></td>
                                                                <td>
                                                                    <asp:TextBox runat="server" ID="tb_create_user_lastname" Width="140px" /></td>
                                                            </tr>
                                                            <tr>
                                                                <td style="text-align: right"><strong>Title:</strong></td>
                                                                <td>
                                                                    <asp:TextBox runat="server" ID="tb_create_user_title" Width="140px" /></td>
                                                            </tr>
                                                            <tr>
                                                                <td style="text-align: right"><strong>Phone:</strong></td>
                                                                <td>
                                                                    <asp:TextBox runat="server" ID="tb_create_user_phone" Width="100px" /></td>
                                                            </tr>
                                                            <tr runat="server" id="create_user_csr_panel" visible="false">
                                                                <td style="text-align: right"><strong>SDI CSR:</strong></td>
                                                                <td style="text-align: left">
                                                                    <asp:CheckBox runat="server" ID="cb_create_user_csr" />
                                                                </td>
                                                            </tr>
                                                            <tr runat="server" id="create_user_role_panel" visible="false">
                                                                <td style="text-align: right"><strong>Access Level:</strong></td>
                                                                <td>
                                                                    <asp:DropDownList CssClass="dropdown_class" runat="server" ID="dl_create_user_access" Width="130px" OnSelectedIndexChanged="dl_create_user_access_SelectedIndexChanged" AutoPostBack="true" />
                                                                </td>
                                                            </tr>
                                                        </table>
                                                        <asp:Label runat="server" ID="lab_create_user_access_text" Style="font-style: italic; font-size: smaller; color: Maroon; margin-left: 10px; margin-right: 10px" Visible="false" />
                                                        <hr />
                                                        <p style="font-style: italic; color: Black; font-size: smaller">An email will be sent with information regarding account access.</p>
                                                        <table>
                                                            <tr>
                                                                <td style="text-align: right"><strong>User Email:</strong></td>
                                                                <td>
                                                                    <asp:TextBox runat="server" ID="tb_create_user_email" Width="200px" /></td>
                                                            </tr>
                                                            <tr>
                                                                <td style="text-align: right"><strong>Confirm Email:</strong></td>
                                                                <td>
                                                                    <asp:TextBox runat="server" ID="tb_create_user_confirm_email" Width="200px" /></td>
                                                            </tr>
                                                        </table>
                                                        <hr />
                                                        <asp:Label runat="server" ID="pan_manage_users_create_user_error" Style="color: Red; margin: 10px" />
                                                        <table>
                                                            <tr>
                                                                <td>
                                                                    <asp:Button runat="server" ID="b_create_user_cancel" Text="Cancel" CssClass="white button" OnClick="b_create_user_cancel_Click" /></td>
                                                                <td>
                                                                    <asp:Image runat="server" ImageUrl="~/srd/wp-content/themes/srd/images/vertical_divider.png" /></td>
                                                                <td>
                                                                    <asp:Button runat="server" ID="b_create_user_ok" Text="CREATE" Font-Bold="true" UseSubmitBehavior="false" OnClick="b_create_user_ok_Click" CssClass="red button" /></td>
                                                            </tr>
                                                        </table>

                                                    </ContentTemplate>
                                                </asp:UpdatePanel>
                                            </div>
                                    </asp:Panel>

                                    <asp:Button runat="server" ID="b_create_user_dummy" Style="display: none" />
                                    <ajaxToolkit:ModalPopupExtender runat="server" ID="user_manage_create_user_popup"
                                        BackgroundCssClass="darkdrop"
                                        PopupControlID="pan_user_manage_create_user"
                                        TargetControlID="b_create_user_dummy" />

                                    <asp:Panel runat="server" CssClass="user_popup" ID="pan_user_manage_select_reg" Style="display: none; max-width: 400px">
                                        <div style="margin: 10px; min-width: 300px">
                                            <h3 style="float: left">Select From Request</h3>
                                            <asp:UpdatePanel runat="server" UpdateMode="Conditional">
                                                <ContentTemplate>
                                                    <asp:CheckBox runat="server" ID="cb_manage_users_historic_reg"
                                                        Text="Show Historic"
                                                        AutoPostBack="true"
                                                        OnCheckedChanged="cb_manage_users_historic_reg_CheckedChanged"
                                                        Style="float: right; margin: 0" />
                                                    <asp:ListBox runat="server" ID="lb_request_list" Rows="5" Width="100%" SelectionMode="Single">
                                                        <asp:ListItem Text="(None)" />
                                                    </asp:ListBox>
                                                    <br />
                                                    <asp:Label runat="server" Style="color: Red; text-align: center" ID="lab_user_manage_select_reg_error" />
                                                </ContentTemplate>
                                            </asp:UpdatePanel>
                                            <hr />
                                            <div style="float: right">
                                                <asp:Button runat="server" ID="b_user_manage_select_reg_cancel" CssClass="white button" Text="Cancel" OnClick="b_user_manage_select_reg_cancel_Click" />
                                                <asp:Button runat="server" ID="b_user_manage_select_reg_ok" CssClass="red button" Text="Select" OnClick="b_user_manage_select_reg_ok_Click" />
                                                <asp:Button runat="server" ID="b_dummy_cancel" Style="display: none" />
                                            </div>
                                            <br style="clear: both" />
                                        </div>
                                    </asp:Panel>

                                    <asp:Button runat="server" ID="dum_select" Style="display: none" />
                                    <ajaxToolkit:ModalPopupExtender runat="server" ID="user_manage_select_reg_popup"
                                        BackgroundCssClass="darkdrop"
                                        PopupControlID="pan_user_manage_select_reg"
                                        TargetControlID="dum_select"
                                        CancelControlID="b_dummy_cancel" />

                                    <asp:Button runat="server" ID="dum_create_success" Style="display: none" />

                                    <asp:Panel runat="server" ID="user_manage_create_user_success" CssClass="user_popup" Style="max-width: 500px">
                                        <h2 style="margin: 15px; color: Green">User was Created!</h2>
                                        <span>Email was sent for account activation.
                                        </span>
                                        <br />
                                        <br />
                                        <span>Please review and assign company/data object access for this new user.
                                        </span>
                                        <hr />

                                        <asp:Button runat="server" ID="b_user_manage_create_user_success_ok"
                                            Text="OK"
                                            Font-Bold="true"
                                            CssClass="red button" Style="margin-bottom: 20px" />

                                    </asp:Panel>

                                    <ajaxToolkit:ModalPopupExtender runat="server" ID="user_manage_create_user_success_popup"
                                        BackgroundCssClass="darkdrop"
                                        TargetControlID="dum_create_success"
                                        PopupControlID="user_manage_create_user_success"
                                        OkControlID="b_user_manage_create_user_success_ok" />

                                    <asp:Panel runat="server" ID="pan_web_manage" Visible="false" CssClass="web_manage_panel">
                                        <hr />
                                        <h2 style="font-size: 1.8em; text-align: left; margin-left: 80px; margin-top: 10px; margin-bottom: 10px">Website Administration</h2>
                                        <hr />
                                        <div style="text-align: left">
                                            <asp:UpdatePanel runat="server" ID="update_web_manage" UpdateMode="Conditional">
                                                <ContentTemplate>
                                                    <ajaxToolkit:TabContainer runat="server" ID="web_manage_tabs"
                                                        ActiveTabIndex="0"
                                                        BorderStyle="None" BorderWidth="0" Width="100%"
                                                        CssClass="customTabs"
                                                        OnActiveTabChanged="web_manage_tabs_ActiveTabChanged"
                                                        AutoPostBack="true" Style="min-height: 500px; height: auto">
                                                        <ajaxToolkit:TabPanel runat="server" ID="web_manage_document_tab" HeaderText="Documentation">
                                                            <ContentTemplate>
                                                                <div style="border: 2px Solid Silver; background-color: White">
                                                                    <table style="width: 100%">
                                                                        <tr>
                                                                            <td style="width: 40%">
                                                                                <h5>Document List</h5>
                                                                                <asp:ListBox ID="web_manage_document_list" runat="server" Style="width: 100%"
                                                                                    AutoPostBack="True" OnSelectedIndexChanged="web_manage_document_list_SelectedIndexChanged"><asp:ListItem Text="(No Documents Found)"></asp:ListItem>
</asp:ListBox>



                                                                                <table style="width: 100%">
                                                                                    <tr>
                                                                                        <td style="border-right: 2px Solid Silver">
                                                                                            <asp:Button runat="server" ID="b_web_manage_insert_document" CssClass="red button" Style="margin-bottom: 5px" Text="Insert..." OnClick="b_web_manage_insert_document_Click" />


                                                                                        </td>
                                                                                        <td style="border-right: 2px Solid Silver">
                                                                                            <asp:Button runat="server" ID="b_web_manage_delete_document" Text="Delete" CssClass="black button" OnClick="b_web_manage_delete_document_Click" />

</td>
                                                                                        <td><strong>Move:</strong></td>
                                                                                        <td>
                                                                                            <asp:Button runat="server" ID="b_web_manage_move_document_up" CssClass="gray button" Style="float: right" Text="↑" OnClick="b_web_manage_move_document_up_Click" />


                                                                                            <asp:Button runat="server" ID="b_web_manage_move_document_down" CssClass="gray button" Text="↓" OnClick="b_web_manage_move_document_down_Click" />


                                                                                        </td>
                                                                                    </tr>
                                                                                </table>
                                                                            </td>
                                                                            <td style="width: 60%">
                                                                                <div class="document_div">
                                                                                    <asp:UpdatePanel runat="server" ID="UpdatePanel1" UpdateMode="Conditional"><ContentTemplate>
                                                                                            <h5>
                                                                                                <asp:Label runat="server" ID="lab_web_manage_doc_name" />
                                                                                                Details</h5>

                                                                                            <asp:Panel runat="server" ID="web_manage_document_no_content" Width="100%" Visible="true">
                                                                                                <div style="width: 100%">

                                                                                                    <asp:Label runat="server" ID="lab_web_manage_no_content" CssClass="web_manage_no_content" Text="< Select a Document"></asp:Label>

                                                                                                </div>
                                                                                            </asp:Panel>

                                                                                            <asp:Panel runat="server" ID="web_manage_document_content" Style="min-height: inherit; height: auto; position: relative" Visible="false">
                                                                                                <table style="width: 100%">
                                                                                                    <tr>
                                                                                                        <td>
                                                                                                            <table style="width: 100%">
                                                                                                                <tr>
                                                                                                                    <td style="border-right: 2px Solid Silver">
                                                                                                                        <asp:Button runat="server" ID="b_web_manage_update_document" Text="Manage..." CssClass="red button" Style="float: right" OnClick="b_web_manage_update_document_Click" />
                                                                                                                    </td>
                                                                                                                    <td>
                                                                                                                        <asp:Button runat="server" ID="b_web_manage_update_document_view" class="white button" Style="float: left" Text="View..." OnClick="b_web_manage_update_document_view_Click" />
                                                                                                                    </td>
                                                                                                                </tr>
                                                                                                            </table>
                                                                                                        </td>
                                                                                                        <td>
                                                                                                            <div runat="server" id="web_manage_price_announce" style="float: right" visible="false">
                                                                                                                <asp:Button runat="server" ID="b_web_manage_price_announce" class="gray button" Style="float: right" Text="Price Announcement >>" OnClick="b_web_manage_price_announce_Click" />
                                                                                                            </div>
                                                                                                        </td>
                                                                                                    </tr>
                                                                                                    <tr>
                                                                                                        <td style="text-align: right; width: 25%">
                                                                                                            <strong>Document Title:</strong>
                                                                                                        </td>
                                                                                                        <td>
                                                                                                            <asp:TextBox runat="server" ID="web_manage_document_title" Enabled="false" />
                                                                                                        </td>
                                                                                                    </tr>
                                                                                                    <tr>
                                                                                                        <td style="text-align: right">
                                                                                                            <strong>Last Updated:</strong>
                                                                                                        </td>
                                                                                                        <td>
                                                                                                            <asp:Label runat="server" ID="web_manage_document_uploaded" />
                                                                                                        </td>
                                                                                                    </tr>
                                                                                                    <tr>
                                                                                                        <td style="text-align: right">
                                                                                                            <strong>Change User:</strong>
                                                                                                        </td>
                                                                                                        <td>
                                                                                                            <asp:Label runat="server" ID="web_manage_document_change_user" />
                                                                                                        </td>
                                                                                                    </tr>
                                                                                                    <tr>
                                                                                                        <td style="text-align: right">
                                                                                                            <strong>Status:</strong>
                                                                                                        </td>
                                                                                                        <td>
                                                                                                            <asp:Label runat="server" ID="lab_web_manage_document_active" Visible="true" />
                                                                                                            <asp:Button runat="server" ID="b_web_manage_document_active" CssClass="white button" Visible="false" OnClick="b_web_manage_document_active_Click" />
                                                                                                        </td>
                                                                                                    </tr>
                                                                                                </table>
                                                                                                <div style="width: 100%; margin-bottom: 5px">
                                                                                                    <hr style="color: Red" />

                                                                                                    <table>
                                                                                                        <tr>
                                                                                                            <td>
                                                                                                                <asp:Button runat="server" ID="b_web_manage_document_edit" Text="Edit" CssClass="gray button" OnClick="b_web_manage_document_edit_Click" Style="float: right" Visible="false" />
                                                                                                            </td>
                                                                                                            <td>
                                                                                                                <asp:Button runat="server" ID="b_web_manage_document_edit_cancel" Text="Cancel" CssClass="white button" OnClick="b_web_manage_document_edit_cancel_Click" Style="float: right" Visible="false" />
                                                                                                            </td>
                                                                                                        </tr>
                                                                                                    </table>

                                                                                                </div>
                                                                                            </asp:Panel>
                                                                                        
</ContentTemplate>
<Triggers>
<asp:PostBackTrigger ControlID="b_web_manage_update_document_view" />
</Triggers>
</asp:UpdatePanel>


                                                                                </div>
                                                                            </td>
                                                                        </tr>
                                                                    </table>
                                                                    <ajaxToolkit:ConfirmButtonExtender runat="server" TargetControlID="b_web_manage_delete_document" ConfirmText="Are you sure you wish to delete this item entirely?" ID="ctl0011" BehaviorID="_content_ctl00" />


                                                                </div>

                                                                <asp:UpdatePanel runat="server" UpdateMode="Conditional"><ContentTemplate>
                                                                        <asp:Button runat="server" ID="b_dummy_upload" Style="display: none" />
                                                                        <ajaxToolkit:ModalPopupExtender runat="server" ID="web_manage_insert_popup"
                                                                            BackgroundCssClass="darkdrop"
                                                                            TargetControlID="b_dummy_upload"
                                                                            PopupControlID="pan_web_manage_insert_popup"
                                                                            CancelControlID="b_web_manage_insert_popup_cancel" />

                                                                        <asp:Panel runat="server" ID="pan_web_manage_insert_popup" CssClass="user_popup" Style="max-width: 450px; width: auto; height: auto; display: none">
                                                                            <h2 style="text-align: left; margin: 10px">Insert Document List Item</h2>
                                                                            <div style="margin: 10px; border: 2px Ridge Silver">
                                                                                <asp:Panel runat="server" ID="pan_web_manage_insert_document" Visible="false">
                                                                                    <table style="width: 100%">
                                                                                        <tr>
                                                                                            <td style="text-align: right"><strong>Item Type:</strong></td>
                                                                                            <td>
                                                                                                <asp:RadioButtonList ID="radio_web_manage_insert_type" runat="server"
                                                                                                    RepeatDirection="Horizontal"
                                                                                                    RepeatLayout="Flow"
                                                                                                    AutoPostBack="true"
                                                                                                    OnSelectedIndexChanged="radio_web_manage_insert_type_SelectedIndexChanged"
                                                                                                    Style="margin: 0; margin-bottom: 3px">
                                                                                                    <asp:ListItem Text="New Document" Selected="True" />
                                                                                                    <asp:ListItem Text="Separator" />
                                                                                                </asp:RadioButtonList>
                                                                                            </td>
                                                                                        </tr>
                                                                                    </table>
                                                                                    <asp:Panel runat="server" ID="pan_web_manage_new_document_table">
                                                                                        <table style="width: 100%">
                                                                                            <tr>
                                                                                                <td>&nbsp;</td>
                                                                                                <td>
                                                                                                    <hr style="color: Silver" />
                                                                                                </td>
                                                                                            </tr>
                                                                                            <tr>
                                                                                                <td style="text-align: right; width: 30%"><strong>Document Name:</strong></td>
                                                                                                <td>
                                                                                                    <asp:TextBox runat="server" ID="tb_web_manage_insert_document" Width="100%" />
                                                                                                </td>
                                                                                            </tr>
                                                                                            <tr>
                                                                                                <td style="text-align: right"><strong>Select File: </strong></td>
                                                                                                <td>
                                                                                                    <asp:FileUpload runat="server" ID="web_manage_insert_document_upload" /></td>
                                                                                            </tr>
                                                                                        </table>
                                                                                        <i>Documents must be in PDF format.</i>
                                                                                    </asp:Panel>
                                                                                </asp:Panel>
                                                                                <asp:Label runat="server" ID="lab_web_manage_insert_document_error" Style="color: Red; text-align: center" />
                                                                            </div>

                                                                            <table style="width: 100%">
                                                                                <tr>
                                                                                    <td style="border-right: 2px Solid Silver">
                                                                                        <asp:Button runat="server" ID="b_web_manage_insert_popup_cancel" Text="Cancel" CssClass="white button" Style="float: right" />
                                                                                    </td>
                                                                                    <td>
                                                                                        <asp:Button runat="server" ID="b_web_manage_insert_document_accept" CssClass="red button" Text="Accept" OnClick="b_web_manage_insert_document_accept_Click" />
                                                                                    </td>
                                                                                </tr>
                                                                            </table>


                                                                        </asp:Panel>
                                                                    
</ContentTemplate>
<Triggers>
<asp:PostBackTrigger ControlID="b_web_manage_insert_document_accept" />
</Triggers>
</asp:UpdatePanel>



                                                                <asp:UpdatePanel ID="update_document_update_panel" runat="server" UpdateMode="Conditional"><ContentTemplate>
                                                                        <asp:Button runat="server" ID="b_dummy_update" Style="display: none" />
                                                                        <ajaxToolkit:ModalPopupExtender runat="server" ID="popup_update_document"
                                                                            BackgroundCssClass="darkdrop"
                                                                            TargetControlID="b_dummy_update"
                                                                            PopupControlID="pan_web_manage_update_popup"
                                                                            CancelControlID="b_web_manage_update_popup_cancel" />

                                                                        <asp:Panel runat="server" ID="pan_web_manage_update_popup" CssClass="user_popup" Width="600px">
                                                                            <%--Style="max-width: 600px; min-width: 50%; width: auto; height: auto; display: none"--%>
                                                                            <asp:HiddenField runat="server" ID="web_manage_update_document_id" />
                                                                            <div style="width: 100%;">
                                                                                <asp:Button runat="server" ID="b_web_manage_update_popup_cancel" Text="X" CssClass="white button" Style="margin: 5px; float: right; font-size: small" />
                                                                                <h2 style="float: left; margin: 10px">Manage
                                                                                    <asp:Label runat="server" ID="lab_web_manage_update_document_title" Text="(Document Title)" Style="margin: 0; padding: 0; color: #c60000" /></h2>
                                                                                <br style="clear: both" />
                                                                                <div style="margin: 10px; border: 2px Ridge Silver">
                                                                                    <table style="width: 100%">
                                                                                        <tr>
                                                                                            <td><strong>Updates</strong></td>
                                                                                            <td><strong>Details</strong></td>
                                                                                        </tr>
                                                                                        <tr>
                                                                                            <td style="text-align: left; width: 50%">
                                                                                                <asp:ListBox runat="server" ID="lb_web_manage_document_changes"
                                                                                                    Width="100%"
                                                                                                    AutoPostBack="true"
                                                                                                    OnSelectedIndexChanged="lb_web_manage_document_changes_SelectedIndexChanged"
                                                                                                    Style="min-height: 120px">
                                                                                                    <asp:ListItem Text="(None)" />
                                                                                                </asp:ListBox>
                                                                                                <br />
                                                                                                <asp:Button runat="server" ID="b_web_manage_update_schedule_new" CssClass="red button" Text="Add" OnClick="b_web_manage_update_schedule_new_Click" Style="margin-top: 3px" />
                                                                                                <asp:Button runat="server" ID="b_web_manage_update_schedule_delete" CssClass="black button" Text="Delete" OnClick="b_web_manage_update_schedule_delete_Click" />
                                                                                                <ajaxToolkit:ConfirmButtonExtender runat="server" ConfirmText="Confirm deletion of this change record?" TargetControlID="b_web_manage_update_schedule_delete" />
                                                                                            </td>
                                                                                            <td>
                                                                                                <asp:Panel runat="server" ID="web_manage_update_document_details" Visible="false" Style="background-color: #efeee1; padding: 5px; border: 2px Ridge Silver">
                                                                                                    <div style="height: 100%; width: 100%">
                                                                                                        <strong>Creation Date:</strong><br />
                                                                                                        <asp:Label runat="server" ID="lab_web_manage_update_details_creation_date" />
                                                                                                        <br />
                                                                                                        <br />
                                                                                                        <strong>Created by:</strong><br />
                                                                                                        <asp:Label runat="server" ID="lab_web_manage_update_details_user" />
                                                                                                        <br />
                                                                                                    </div>
                                                                                                </asp:Panel>
                                                                                                <asp:Panel runat="server" ID="web_manage_update_document_new_details" Visible="false" Style="background-color: #efeee1; padding: 5px; border: 2px Ridge Silver">
                                                                                                    <div style="height: 100%; width: 100%;">
                                                                                                        <asp:RadioButtonList ID="radio_web_manage_update_type" runat="server"
                                                                                                            RepeatDirection="Horizontal"
                                                                                                            RepeatLayout="Flow"
                                                                                                            AutoPostBack="true"
                                                                                                            OnSelectedIndexChanged="radio_web_manage_update_type_SelectedIndexChanged"
                                                                                                            Style="margin: 0; margin-bottom: 3px">
                                                                                                            <asp:ListItem Text="Immediate Post" Selected="True" />
                                                                                                            <asp:ListItem Text="Schedule" />
                                                                                                        </asp:RadioButtonList>
                                                                                                        <br />
                                                                                                        <hr />
                                                                                                        <asp:Panel runat="server" ID="web_manage_update_document_schedule_controls" Visible="false">
                                                                                                            Scheduled Date: (MM/DD/YYYY)
                                                                                                            <ajaxToolkit:CalendarExtender ID="CalendarExtender7" runat="server"
                                                                                                                TargetControlID="web_manage_update_document_scheduled_date"
                                                                                                                Format="MM/dd/yyyy"></ajaxToolkit:CalendarExtender>
                                                                                                            <asp:TextBox runat="server" ID="web_manage_update_document_scheduled_date" Width="250px" />
                                                                                                            <br>
                                                                                                            <br>
                                                                                                            Scheduled Hour:<br>
                                                                                                            <asp:DropDownList runat="server" ID="web_manage_update_document_scheduled_hour" Width="100px">
                                                                                                                <asp:ListItem Text="1:00 AM" Value="01:00 AM" />
                                                                                                                <asp:ListItem Text="2:00 AM" Value="02:00 AM" />
                                                                                                                <asp:ListItem Text="3:00 AM" Value="03:00 AM" />
                                                                                                                <asp:ListItem Text="4:00 AM" Value="04:00 AM" />
                                                                                                                <asp:ListItem Text="5:00 AM" Value="05:00 AM" />
                                                                                                                <asp:ListItem Text="6:00 AM" Value="06:00 AM" />
                                                                                                                <asp:ListItem Text="7:00 AM" Value="07:00 AM" />
                                                                                                                <asp:ListItem Text="8:00 AM" Value="08:00 AM" />
                                                                                                                <asp:ListItem Text="9:00 AM" Value="09:00 AM" />
                                                                                                                <asp:ListItem Text="10:00 AM" />
                                                                                                                <asp:ListItem Text="11:00 AM" />
                                                                                                                <asp:ListItem Text="12:00 PM" />
                                                                                                                <asp:ListItem Text="1:00 PM" Value="01:00 PM" />
                                                                                                                <asp:ListItem Text="2:00 PM" Value="02:00 PM" />
                                                                                                                <asp:ListItem Text="3:00 PM" Value="03:00 PM" />
                                                                                                                <asp:ListItem Text="4:00 PM" Value="04:00 PM" />
                                                                                                                <asp:ListItem Text="5:00 PM" Value="05:00 PM" />
                                                                                                                <asp:ListItem Text="6:00 PM" Value="06:00 PM" />
                                                                                                                <asp:ListItem Text="7:00 PM" Value="07:00 PM" />
                                                                                                                <asp:ListItem Text="8:00 PM" Value="08:00 PM" />
                                                                                                                <asp:ListItem Text="9:00 PM" Value="09:00 PM" />
                                                                                                                <asp:ListItem Text="10:00 PM" />
                                                                                                                <asp:ListItem Text="11:00 PM" />
                                                                                                            </asp:DropDownList>
                                                                                                        </asp:Panel>
                                                                                                        <br />
                                                                                                        Upload File (PDF Only):<br />
                                                                                                        <asp:FileUpload runat="server" ID="web_manage_update_document_upload" EnableViewState="true" />
                                                                                                        <br />
                                                                                                        <br />

                                                                                                        <asp:Button runat="server" ID="b_web_manage_update_document_schedule_cancel" Text="Cancel" CssClass="white button" OnClick="b_web_manage_update_document_schedule_cancel_Click" />
                                                                                                        <asp:Button runat="server" ID="b_web_manage_update_document_schedule_accept" Text="Accept" CssClass="red button" OnClick="b_web_manage_update_document_schedule_accept_Click" Style="margin-bottom: 3px" />

                                                                                                    </div>
                                                                                                </asp:Panel>
                                                                                                <asp:Panel runat="server" ID="web_manage_update_document_no_details" Visible="true">
                                                                                                    <div style="height: 100%; width: 100%; text-align: center; vertical-align: middle; color: Maroon">
                                                                                                        Select  or Create an Update
                                                                                                    </div>
                                                                                                </asp:Panel>
                                                                                            </td>
                                                                                        </tr>
                                                                                    </table>
                                                                                    <asp:Label runat="server" ID="lab_web_manage_update_error" Style="color: Red; text-align: center" />
                                                                                    <asp:Button runat="server" ID="dum_update_success" Style="display: none" />
                                                                                    <ajaxToolkit:ModalPopupExtender runat="server" ID="web_manage_update_document_success_popup"
                                                                                        TargetControlID="dum_update_success"
                                                                                        PopupControlID="pan_web_manage_update_document_success"
                                                                                        CancelControlID="b_pan_web_manage_document_success_close"
                                                                                        BackgroundCssClass="darkdrop" />
                                                                                    <asp:Panel runat="server" ID="pan_web_manage_update_document_success" CssClass="user_popup" Style="max-width: 500px; width: auto; display: none">
                                                                                        <div style="height: auto; width: 100%; text-align: center; vertical-align: middle;">
                                                                                            <br />
                                                                                            <h3 style="text-align: center">Updated Applied</h3>
                                                                                            <br />
                                                                                        </div>
                                                                                        <asp:Button runat="server" ID="b_pan_web_manage_document_success_close" Text="OK" CssClass="white button" Style="margin-bottom: 3px" />
                                                                                    </asp:Panel>
                                                                                </div>
                                                                            </div>
                                                                        </asp:Panel>
                                                                    
</ContentTemplate>
<Triggers>
<asp:PostBackTrigger ControlID="b_web_manage_update_document_schedule_accept" />
<asp:AsyncPostBackTrigger ControlID="radio_web_manage_update_type" EventName="SelectedIndexChanged" />
</Triggers>
</asp:UpdatePanel>


                                                            
</ContentTemplate>
                                                        

</ajaxToolkit:TabPanel>

                                                        <ajaxToolkit:TabPanel runat="server" ID="web_manage_contacts_tab" HeaderText="Contacts">
                                                            <ContentTemplate>
                                                                <asp:UpdatePanel runat="server" UpdateMode="Conditional" ID="ContactManageUpdatePanel">
                                                                    <Triggers>
                                                                        <asp:AsyncPostBackTrigger ControlID="lb_contact_manage_contacts" EventName="SelectedIndexChanged" />
                                                                    </Triggers>
                                                                    <ContentTemplate>
                                                                        <asp:Panel runat="server" ID="pan_contacts_error_popup" Style="display: none; max-width: 600px; min-width: 300px" CssClass="user_popup">
                                                                            <div style="margin: 20px">
                                                                                <h2 style="text-align: left">Validation Check</h2>
                                                                                <br />

                                                                                <asp:Label runat="server" ID="lab_contacts_error_text" Style="color: Black" />
                                                                                <br />
                                                                                <br />
                                                                                <hr />
                                                                                <asp:Button runat="server" ID="b_contacts_error_popup_cancel" Text="OK" CssClass="white button" />

                                                                            </div>
                                                                        </asp:Panel>
                                                                        <asp:Button runat="server" ID="b_contacts_error_dummy" Style="display: none" />
                                                                        <ajaxToolkit:ModalPopupExtender runat="server" ID="contacts_popup_error"
                                                                            TargetControlID="b_contacts_error_dummy"
                                                                            PopupControlID="pan_contacts_error_popup"
                                                                            BackgroundCssClass="darkdrop"
                                                                            CancelControlID="b_contacts_error_popup_cancel" />

                                                                        <div style="border: 2px Solid Silver; background-color: White; height: 100%">
                                                                            <table style="width: 100%">
                                                                                <tr>
                                                                                    <td style="border-right: 2px Solid Maroon; margin: 10px; vertical-align: top; width: 15%">

                                                                                        <asp:Button runat="server" ID="b_contact_manage_contacts"
                                                                                            Text="Contacts"
                                                                                            OnClick="contact_manage_tab_change"
                                                                                            CssClass="red button"
                                                                                            Style="margin-bottom: 5px; margin-top: 5px"
                                                                                            Width="90%" />
                                                                                        <br />
                                                                                        <asp:Button runat="server" ID="b_contact_manage_groups"
                                                                                            Text="Groups"
                                                                                            OnClick="contact_manage_tab_change"
                                                                                            CssClass="red button"
                                                                                            Style="margin-bottom: 5px"
                                                                                            Width="90%" />
                                                                                        <br />
                                                                                        <asp:Button runat="server" ID="b_contact_manage_tabs"
                                                                                            Text="Tabs"
                                                                                            OnClick="contact_manage_tab_change"
                                                                                            CssClass="red button"
                                                                                            Style="margin-bottom: 5px"
                                                                                            Width="90%" />
                                                                                        <br />
                                                                                        <asp:Button runat="server" ID="b_contact_manage_territories"
                                                                                            Text="Territories"
                                                                                            OnClick="contact_manage_tab_change"
                                                                                            CssClass="red button"
                                                                                            Style="margin-bottom: 5px"
                                                                                            Width="90%" />

                                                                                    </td>
                                                                                    <td>
                                                                                        <asp:Panel ID="pan_contact_manage_contacts" runat="server" Visible="false">
                                                                                            <table>
                                                                                                <tr>
                                                                                                    <td style="width: 20%">

                                                                                                        <asp:ListBox runat="server" ID="lb_contact_manage_contacts" Width="220px"
                                                                                                            AutoPostBack="true"
                                                                                                            OnSelectedIndexChanged="lb_contact_manage_contacts_SelectedIndexChanged"
                                                                                                            ViewStateMode="Enabled"></asp:ListBox>
                                                                                                        <hr />
                                                                                                        <asp:Button runat="server" ID="b_contact_manage_all_contacts_add_contact" CssClass="red button" Text="Add" OnClick="b_contact_manage_all_contacts_add_contact_Click" />
                                                                                                        <%=(b_contact_manage_all_contacts_add_contact.Visible ? "&nbsp;|&nbsp;" : "")%>
                                                                                                        <asp:Button runat="server" ID="b_contact_manage_all_contacts_remove_contact" CssClass="black button" Text="Remove" OnClick="b_contact_manage_all_contacts_remove_contact_Click" />
                                                                                                        <ajaxToolkit:ConfirmButtonExtender ID="ConfirmButtonExtender_remove_contact" runat="server" TargetControlID="b_contact_manage_all_contacts_remove_contact" ConfirmText="Are you sure you want to remove this contact?" />

                                                                                                    </td>
                                                                                                    <td>
                                                                                                        <asp:Panel runat="server" ID="pan_contact_manage_contact" Style="border: 2px Solid Tan; min-height: 220px; background-image: url(/srd/wp-content/themes/srd/images/contact_card.png); background-repeat: no-repeat; background-position: center">
                                                                                                            <h5>Contact Info</h5>

                                                                                                            <asp:Panel runat="server" ID="pan_contact_manage_no_content" Style="margin: 5px" Visible="true">

                                                                                                                <br />
                                                                                                                <strong><< Select a Contact</strong>

                                                                                                            </asp:Panel>

                                                                                                            <asp:UpdatePanel ID="UpdatePanel2" runat="server" UpdateMode="Conditional">
                                                                                                                <Triggers>
                                                                                                                    <asp:PostBackTrigger ControlID="b_contact_manage_upload_photo_ok" />
                                                                                                                </Triggers>
                                                                                                                <ContentTemplate>
                                                                                                                    <asp:Panel runat="server" ID="pan_contact_manage_upload_photo" CssClass="user_popup" Style="display: none; min-width: 300px; max-width: 600px">
                                                                                                                        <div style="margin: 20px">
                                                                                                                            <h2 style="text-align: left">Upload Photo</h2>
                                                                                                                            <strong>Note:</strong>&nbsp;Existing photo will be overwritten.
                                                                                                                <br />
                                                                                                                            <br />
                                                                                                                            <asp:FileUpload runat="server" Width="100%" ID="contact_manage_photo_upload" ViewStateMode="Enabled" />
                                                                                                                            <br />
                                                                                                                            <asp:Label runat="server" ID="lab_contact_manage_upload_photo_error" Style="color: Red; font-weight: bold" />
                                                                                                                            <hr />
                                                                                                                            <asp:Button runat="server" ID="b_contact_manage_upload_photo_cancel" CssClass="white button" Text="Cancel" />
                                                                                                                            &nbsp;|&nbsp;
                                                                                                                <asp:Button runat="server" ID="b_contact_manage_upload_photo_ok" CssClass="red button" Text="Upload" OnClick="b_contact_manage_upload_photo_ok_Click" UseSubmitBehavior="false" />
                                                                                                                        </div>
                                                                                                                    </asp:Panel>
                                                                                                                    <asp:Button runat="server" ID="pan_contact_upload_dummy" Style="display: none" />
                                                                                                                    <ajaxToolkit:ModalPopupExtender runat="server" ID="popup_contact_manage_upload_photo"
                                                                                                                        BackgroundCssClass="darkdrop"
                                                                                                                        CancelControlID="b_contact_manage_upload_photo_cancel"
                                                                                                                        PopupControlID="pan_contact_manage_upload_photo"
                                                                                                                        TargetControlID="pan_contact_upload_dummy" />
                                                                                                                </ContentTemplate>
                                                                                                            </asp:UpdatePanel>
                                                                                                            <asp:Panel runat="server" ID="pan_contact_manage_content" Style="margin: 5px">

                                                                                                                <table style="width: 100%">
                                                                                                                    <tr>
                                                                                                                        <td style="width: 20%">

                                                                                                                            <asp:Image runat="server" ID="img_manage_all_contacts"
                                                                                                                                Width="100%"
                                                                                                                                ImageUrl="~/srd/wp-content/themes/srd/images/no_photo_available.png"
                                                                                                                                Style="border: 2px solid Maroon" />
                                                                                                                            <br />
                                                                                                                            <asp:Button runat="server" ID="b_contact_manage_all_contacts_edit_img" CssClass="gray button" Text="Change..." Style="margin-top: 5px" Visible="false" OnClick="b_contact_manage_all_contacts_edit_img_Click" />

                                                                                                                        </td>
                                                                                                                        <td>
                                                                                                                            <table style="width: 100%">
                                                                                                                                <tr>
                                                                                                                                    <td style="text-align: right; font-weight: bold">Name:</td>
                                                                                                                                    <td>
                                                                                                                                        <asp:TextBox runat="server" ID="tb_contact_manage_all_contacts_name" Width="100%" Enabled="false" /></td>
                                                                                                                                </tr>
                                                                                                                                <tr>
                                                                                                                                    <td style="text-align: right; font-weight: bold">Title:</td>
                                                                                                                                    <td>
                                                                                                                                        <asp:TextBox runat="server" ID="tb_contact_manage_all_contacts_title" Width="100%" Enabled="false" /></td>
                                                                                                                                </tr>
                                                                                                                                <tr>
                                                                                                                                    <td style="text-align: right; font-weight: bold">Email:</td>
                                                                                                                                    <td>
                                                                                                                                        <asp:TextBox runat="server" ID="tb_contact_manage_all_contacts_email" Width="100%" Enabled="false" /></td>
                                                                                                                                </tr>
                                                                                                                                <tr>
                                                                                                                                    <td style="text-align: right; font-weight: bold">Phone:</td>
                                                                                                                                    <td>
                                                                                                                                        <asp:TextBox runat="server" ID="tb_contact_manage_all_contacts_phone" Width="100%" Enabled="false" /></td>
                                                                                                                                </tr>
                                                                                                                                <tr>
                                                                                                                                    <td style="text-align: right; font-weight: bold">Toll-Free Phone:</td>
                                                                                                                                    <td>
                                                                                                                                        <asp:TextBox runat="server" ID="tb_contact_manage_all_contacts_tf_phone" Width="100%" Enabled="false" /></td>
                                                                                                                                </tr>
                                                                                                                                <tr>
                                                                                                                                    <td style="text-align: right; font-weight: bold">Detail Text:</td>
                                                                                                                                    <td>
                                                                                                                                        <asp:TextBox runat="server" ID="tb_contact_manage_all_contacts_flavor_text" Width="100%" TextMode="MultiLine" Height="50px" Enabled="false" /></td>
                                                                                                                                </tr>
                                                                                                                            </table>
                                                                                                                        </td>
                                                                                                                    </tr>
                                                                                                                </table>
                                                                                                                <hr />
                                                                                                                <asp:Button runat="server" ID="b_contact_manage_save_contact" CssClass="red button" Text="Save" Visible="false" OnClick="b_contact_manage_save_contact_Click" />
                                                                                                                &nbsp;&nbsp;
                                                                                                        <asp:Button runat="server" ID="b_contact_manage_edit_contact" CssClass="gray button" Text="Edit" OnClick="b_contact_manage_edit_contact_Click" />

                                                                                                            </asp:Panel>
                                                                                                        </asp:Panel>
                                                                                                    </td>
                                                                                                </tr>
                                                                                            </table>
                                                                                        </asp:Panel>

                                                                                        <asp:Panel ID="pan_contact_manage_groups" runat="server" Visible="false">
                                                                                            <asp:UpdatePanel ID="UpdatePanelct" runat="server" UpdateMode="Conditional">
                                                                                                <ContentTemplate>
                                                                                                    <table style="width: 100%">
                                                                                                        <tr>
                                                                                                            <td style="width: 50%">
                                                                                                                <h3 style="text-align: left">All Groups</h3>
                                                                                                                <asp:ListBox runat="server" ID="lb_contact_manage_groups"
                                                                                                                    AutoPostBack="true"
                                                                                                                    Height="100%"
                                                                                                                    Width="100%"
                                                                                                                    OnSelectedIndexChanged="lb_contact_manage_groups_SelectedIndexChanged"></asp:ListBox>
                                                                                                                <br />
                                                                                                                <table style="width: 100%">
                                                                                                                    <tr>
                                                                                                                        <td style="text-align: right; font-weight: bold; font-size: smaller">Group Name:</td>
                                                                                                                        <td style="width: 100%">
                                                                                                                            <asp:TextBox runat="server" ID="tb_contact_manage_group_name" Width="100%" Enabled="false" /></td>
                                                                                                                    </tr>
                                                                                                                    <tr>
                                                                                                                        <td style="text-align: right; font-weight: bold; font-size: smaller">Detail Text:</td>
                                                                                                                        <td style="width: 80%">
                                                                                                                            <asp:TextBox runat="server" ID="tb_contact_manage_group_detail"
                                                                                                                                Width="100%"
                                                                                                                                TextMode="MultiLine"
                                                                                                                                MaxLength="100"
                                                                                                                                Rows="3" Enabled="false" /></td>
                                                                                                                    </tr>
                                                                                                                </table>
                                                                                                                <hr />

                                                                                                                <asp:Button runat="server" ID="b_contact_manage_group_new" CssClass="red button" Text="New..." OnClick="b_contact_manage_group_new_Click" />
                                                                                                                <%-- <%=(b_contact_manage_group_delete.Visible ? "&nbsp;|&nbsp;" : "")%>--%>
                                                                                                                <asp:Button runat="server" ID="b_contact_manage_group_save" CssClass="red button" Text="Save"
                                                                                                                    Style="margin-top: 5px"
                                                                                                                    Visible="false"
                                                                                                                    OnClick="b_contact_manage_group_save_Click" />
                                                                                                                <asp:Button runat="server" ID="b_contact_manage_group_edit" CssClass="gray button" Text="Edit"
                                                                                                                    Style="margin-top: 5px"
                                                                                                                    OnClick="b_contact_manage_group_edit_Click"
                                                                                                                    Visible="false" />
                                                                                                                <asp:Button runat="server" ID="b_contact_manage_group_delete" CssClass="black button" Text="Delete"
                                                                                                                    Style="margin-top: 5px"
                                                                                                                    OnClick="b_contact_manage_group_delete_Click"
                                                                                                                    Visible="false" />
                                                                                                                <%-- <%=(b_contact_manage_group_preview.Visible ? "&nbsp;|&nbsp;" : "") %>--%>
                                                                                                                <asp:Button runat="server" ID="b_contact_manage_group_preview" CssClass="white button" Text="Preview..."
                                                                                                                    Style="margin-top: 5px"
                                                                                                                    OnClick="b_contact_manage_group_preview_Click"
                                                                                                                    Visible="false" />
                                                                                                                <ajaxToolkit:ConfirmButtonExtender ID="ConfirmButtonExtender5" runat="server" TargetControlID="b_contact_manage_group_delete" ConfirmText="This group will be removed from all tabs and territories, are you sure?" />

                                                                                                            </td>
                                                                                                            <td style="width: 66%">
                                                                                                                <table style="width: 100%; border: 1px Solid Silver" runat="server" id="td_contact_manage_group_content" visible="false">
                                                                                                                    <tr>
                                                                                                                        <td>
                                                                                                                            <h3 style="text-align: left">Members</h3>
                                                                                                                            <asp:ListBox runat="server" ID="lb_contact_manage_group_members"
                                                                                                                                Height="100%" Width="100%"
                                                                                                                                AutoPostBack="true"
                                                                                                                                OnSelectedIndexChanged="lb_contact_manage_group_members_SelectedIndexChanged" />
                                                                                                                            <hr />
                                                                                                                            <asp:Button runat="server" ID="b_contact_manage_group_member_remove"
                                                                                                                                CssClass="black button"
                                                                                                                                Text="Remove >"
                                                                                                                                Style="margin-top: 5px; margin-bottom: 5px"
                                                                                                                                OnClick="b_contact_manage_group_member_remove_Click" />
                                                                                                                            <hr />
                                                                                                                            <div runat="server" id="td_contact_manage_group_member_order" visible="false">
                                                                                                                                <strong>Order:</strong> &nbsp;
                                                                                                                    <asp:Button runat="server" ID="b_contact_manage_group_member_move_up"
                                                                                                                        CssClass="gray button"
                                                                                                                        Text="↑"
                                                                                                                        OnClick="b_contact_manage_group_member_move_up_Click" />
                                                                                                                                :
                                                                                                                    <asp:Button runat="server" ID="b_contact_manage_group_member_move_down"
                                                                                                                        CssClass="gray button"
                                                                                                                        Text="↓"
                                                                                                                        OnClick="b_contact_manage_group_member_move_down_Click" />
                                                                                                                                <asp:Button runat="server" ID="b_contact_manage_group_member_sort_alpha"
                                                                                                                                    CssClass="white button" Text="Sort Alpha."
                                                                                                                                    Style="margin-top: 10px; margin-bottom: 10px"
                                                                                                                                    OnClick="b_contact_manage_group_member_sort_alpha_Click" />
                                                                                                                                <br />
                                                                                                                                <asp:CheckBox runat="server" ID="cb_contact_manage_group_member_attach_above"
                                                                                                                                    Text="Attach to Above"
                                                                                                                                    Enabled="false"
                                                                                                                                    OnCheckedChanged="cb_contact_manage_group_member_attach_above_CheckedChanged"
                                                                                                                                    AutoPostBack="true" />
                                                                                                                            </div>
                                                                                                                        </td>
                                                                                                                        <td style="width: 50%">
                                                                                                                            <h3 style="text-align: left">Non-Members</h3>
                                                                                                                            <asp:ListBox runat="server" ID="lb_contact_manage_non_group_members" Height="100%" Width="100%" AutoPostBack="true" />
                                                                                                                            <hr />

                                                                                                                            <asp:Button runat="server" ID="b_contact_manage_group_member_add"
                                                                                                                                CssClass="red button"
                                                                                                                                Text="< Add"
                                                                                                                                Style="margin-top: 5px"
                                                                                                                                OnClick="b_contact_manage_group_member_add_Click" />

                                                                                                                        </td>
                                                                                                                    </tr>
                                                                                                                </table>
                                                                                                            </td>
                                                                                                        </tr>
                                                                                                    </table>
                                                                                                    <asp:Panel runat="server" ID="pan_contact_manage_group_preview_popup" CssClass="user_popup" Style="display: none; max-width: 800px; max-height: 800px" ScrollBars="Auto">

                                                                                                        <hr style="clear: both" />
                                                                                                        <asp:Panel runat="server" ID="pan_contact_manage_group_preview_content" Style="margin-left: 30px; margin-right: 30px" />
                                                                                                    </asp:Panel>
                                                                                                    <asp:Button runat="server" ID="b_contact_manage_group_preview_dummy" Style="display: none" />
                                                                                                    <ajaxToolkit:ModalPopupExtender runat="server" ID="popup_contact_manage_group_preview"
                                                                                                        TargetControlID="b_contact_manage_group_preview_dummy"
                                                                                                        CancelControlID="b_contat_manage_group_preview_close"
                                                                                                        BackgroundCssClass="darkdrop"
                                                                                                        PopupControlID="pan_contact_manage_group_preview_popup" />
                                                                                                </ContentTemplate>
                                                                                            </asp:UpdatePanel>
                                                                                        </asp:Panel>

                                                                                        <asp:Panel ID="pan_contact_manage_tabs" runat="server" Visible="false">
                                                                                            <table style="width: 100%">
                                                                                                <tr>
                                                                                                    <td style="width: 33%">
                                                                                                        <h3 style="text-align: left; margin-left: 10px">Tab List</h3>
                                                                                                        <asp:ListBox runat="server" ID="lb_contact_manage_tabs"
                                                                                                            Width="100%"
                                                                                                            OnSelectedIndexChanged="lb_contact_manage_tabs_SelectedIndexChanged"
                                                                                                            AutoPostBack="true" />
                                                                                                        <br />
                                                                                                        <table style="width: 100%" runat="server" id="table_contact_manage_tab_order" visible="false">
                                                                                                            <tr>
                                                                                                                <td style="text-align: right; font-weight: bold">Order:</td>
                                                                                                                <td>
                                                                                                                    <asp:Button runat="server" ID="b_contact_manage_tab_order_up"
                                                                                                                        CssClass="gray button"
                                                                                                                        Text="↑"
                                                                                                                        OnClick="b_contact_manage_tab_order_up_Click" />
                                                                                                                    :
                                                                                                        <asp:Button runat="server" ID="b_contact_manage_tab_order_down"
                                                                                                            CssClass="gray button"
                                                                                                            Text="↓"
                                                                                                            OnClick="b_contact_manage_tab_order_down_Click" />
                                                                                                                </td>
                                                                                                            </tr>
                                                                                                        </table>
                                                                                                        <asp:Panel runat="server" ID="pan_contact_manage_tab_edit" Visible="false">
                                                                                                            <table style="width: 100%">
                                                                                                                <tr>
                                                                                                                    <td style="text-align: right">Name:</td>
                                                                                                                    <td>
                                                                                                                        <asp:TextBox runat="server" ID="tb_contact_manage_tab_name" /></td>
                                                                                                                </tr>
                                                                                                            </table>
                                                                                                        </asp:Panel>
                                                                                                        <hr />

                                                                                                        <asp:Button runat="server" ID="b_contact_manage_add_save_tab"
                                                                                                            CssClass="red button"
                                                                                                            Style="margin-top: 5px"
                                                                                                            OnClick="b_contact_manage_add_save_tab_Click"
                                                                                                            Text="New..." />
                                                                                                        <%--<%=(b_contact_manage_edit_tab.Visible ? "&nbsp;|&nbsp;" : "")%>--%>
                                                                                                        <asp:Button runat="server" ID="b_contact_manage_edit_tab"
                                                                                                            CssClass="gray button"
                                                                                                            Style="margin-top: 5px"
                                                                                                            OnClick="b_contact_manage_edit_tab_Click"
                                                                                                            Visible="false"
                                                                                                            Text="Edit" />
                                                                                                        <%-- <%=(b_contact_manage_remove_tab.Visible ? "&nbsp;|&nbsp;" : "") %>--%>
                                                                                                        <asp:Button runat="server" ID="b_contact_manage_remove_tab"
                                                                                                            CssClass="black button"
                                                                                                            Style="margin-top: 5px"
                                                                                                            OnClick="b_contact_manage_remove_tab_Click"
                                                                                                            Visible="false"
                                                                                                            Text="Delete" />
                                                                                                        <ajaxToolkit:ConfirmButtonExtender ID="ConfirmButtonExtender6" runat="server"
                                                                                                            TargetControlID="b_contact_manage_remove_tab" ConfirmText="Are you sure you want to delete this tab page?" />

                                                                                                    </td>
                                                                                                    <td style="width: 66%">
                                                                                                        <table runat="server" id="td_contact_manage_tab_group_content" visible="false" style="border: 1px Solid Silver; width: 100%">
                                                                                                            <tr>
                                                                                                                <td style="width: 50%">
                                                                                                                    <h3 style="text-align: left; margin-left: 10px">Tab Group Members</h3>
                                                                                                                    <asp:ListBox runat="server" ID="lb_contact_manage_tab_members"
                                                                                                                        Width="100%"
                                                                                                                        OnSelectedIndexChanged="lb_contact_manage_tab_members_SelectedIndexChanged"
                                                                                                                        AutoPostBack="true" />
                                                                                                                    <br />
                                                                                                                    <asp:Panel runat="server" ID="pan_contact_manage_tab_members_display" Visible="false">

                                                                                                                        <strong>Order:</strong>&nbsp;
                                                                                                                <asp:Button runat="server" ID="b_contact_manage_tab_members_move_up"
                                                                                                                    CssClass="gray button"
                                                                                                                    Text="↑"
                                                                                                                    OnClick="b_contact_manage_tab_members_move_up_Click" />
                                                                                                                        :
                                                                                                                <asp:Button runat="server" ID="b_contact_manage_tab_members_move_down"
                                                                                                                    CssClass="gray button"
                                                                                                                    Text="↓"
                                                                                                                    OnClick="b_contact_manage_tab_members_move_down_Click" />

                                                                                                                    </asp:Panel>
                                                                                                                    <hr />

                                                                                                                    <asp:Button runat="server" ID="b_contact_manage_tab_member_remove"
                                                                                                                        CssClass="black button"
                                                                                                                        Style="margin-top: 5px"
                                                                                                                        OnClick="b_contact_manage_tab_member_remove_Click"
                                                                                                                        Text="Remove >" />

                                                                                                                </td>
                                                                                                                <td>
                                                                                                                    <h3 style="text-align: left; margin-left: 10px">Available Groups</h3>
                                                                                                                    <asp:ListBox runat="server" ID="lb_contact_manage_tab_non_members"
                                                                                                                        Width="100%" />
                                                                                                                    <hr />

                                                                                                                    <asp:Button runat="server" ID="b_contact_manage_tab_non_member_add"
                                                                                                                        CssClass="red button"
                                                                                                                        Style="margin-top: 5px"
                                                                                                                        OnClick="b_contact_manage_tab_non_member_add_Click"
                                                                                                                        Text="< Add" />

                                                                                                                </td>
                                                                                                            </tr>
                                                                                                        </table>
                                                                                                    </td>
                                                                                                </tr>
                                                                                            </table>
                                                                                        </asp:Panel>
                                                                                        <asp:Panel ID="pan_contact_manage_terriories" runat="server" Visible="false">
                                                                                            <asp:HiddenField runat="server" ID="hf_contact_manage_selected_territory" Value="" />
                                                                                            <asp:Panel runat="server" ID="pan_contact_manage_territory_map">

                                                                                                <strong>Select a map region to edit:</strong>
                                                                                                <br />
                                                                                                <br />
                                                                                                <div class="mapDiv">
                                                                                                    <div runat="server" id="mapDefinition">
                                                                                                    </div>
                                                                                                    <img id="salesMap" runat="server" alt="" src="~/srd/wp-content/themes/srd/images/map/sales_map-base.jpg" usemap="#FPMap6"
                                                                                                        width="369" height="297" />
                                                                                                </div>
                                                                                                <br />

                                                                                            </asp:Panel>
                                                                                            <asp:Panel runat="server" ID="pan_contact_manage_territory_content" Visible="false">

                                                                                                <table style="width: 80%">
                                                                                                    <tr>
                                                                                                        <td style="border-left: 2px Solid Silver">
                                                                                                            <table style="width: 100%">
                                                                                                                <tr>
                                                                                                                    <td style="width: 50%">
                                                                                                                        <h3>
                                                                                                                            <asp:Label runat="server" ID="lab_contact_manage_territory_selected" Style="float: left" /></h3>
                                                                                                                    </td>
                                                                                                                    <td>
                                                                                                                        <asp:Button runat="server" ID="b_contact_manage_territory_back"
                                                                                                                            CssClass="red button"
                                                                                                                            Text="<< Back to Map"
                                                                                                                            OnClick="b_contact_manage_territory_back_Click"
                                                                                                                            Style="float: right" />
                                                                                                                    </td>
                                                                                                                </tr>
                                                                                                            </table>
                                                                                                            <hr />
                                                                                                            <table style="width: 100%">
                                                                                                                <tr>
                                                                                                                    <td style="width: 50%">
                                                                                                                        <h3 style="text-align: left; margin-left: 10px">Territory Groups</h3>
                                                                                                                        <asp:ListBox runat="server" ID="lb_contact_manage_territory_members"
                                                                                                                            Width="100%"
                                                                                                                            OnSelectedIndexChanged="lb_contact_manage_territory_members_SelectedIndexChanged"
                                                                                                                            AutoPostBack="true" />
                                                                                                                        <br />
                                                                                                                        <asp:Panel runat="server" ID="pan_contact_manage_territory_group_content" Visible="false">
                                                                                                                            Order: &nbsp;
                                                                                                                        <asp:Button runat="server" ID="b_contact_manage_territory_move_up"
                                                                                                                            CssClass="gray button"
                                                                                                                            Text="↑"
                                                                                                                            OnClick="b_contact_manage_territory_move_up_Click" />
                                                                                                                            :
                                                                                                                        <asp:Button runat="server" ID="b_contact_manage_territory_members_move_down"
                                                                                                                            CssClass="gray button"
                                                                                                                            Text="↓"
                                                                                                                            OnClick="b_contact_manage_territory_members_move_down_Click" />

                                                                                                                        </asp:Panel>
                                                                                                                        <hr />

                                                                                                                        <asp:Button runat="server" ID="b_contact_manage_territory_members_remove"
                                                                                                                            CssClass="black button"
                                                                                                                            Style="margin-top: 5px"
                                                                                                                            OnClick="b_contact_manage_territory_members_remove_Click"
                                                                                                                            Text="Remove >" />

                                                                                                                    </td>
                                                                                                                    <td>
                                                                                                                        <h3 style="text-align: left; margin-left: 10px">Available Groups</h3>
                                                                                                                        <asp:ListBox runat="server" ID="lb_contact_manage_territory_non_members"
                                                                                                                            Width="100%" />
                                                                                                                        <hr />

                                                                                                                        <asp:Button runat="server" ID="b_contact_manage_territory_non_members_add"
                                                                                                                            CssClass="red button"
                                                                                                                            Style="margin-top: 5px"
                                                                                                                            OnClick="b_contact_manage_territory_non_members_add_Click"
                                                                                                                            Text="< Add" />

                                                                                                                    </td>
                                                                                                                </tr>
                                                                                                            </table>
                                                                                                        </td>
                                                                                                    </tr>
                                                                                                </table>

                                                                                            </asp:Panel>
                                                                                        </asp:Panel>
                                                                                    </td>
                                                                                </tr>
                                                                            </table>
                                                                        </div>

                                                                        <br style="clear: both" />
                                                                    </ContentTemplate>
                                                                </asp:UpdatePanel>
                                                            
</ContentTemplate>
                                                        

</ajaxToolkit:TabPanel>
                                                    </ajaxToolkit:TabContainer>
                                                </ContentTemplate>
                                            </asp:UpdatePanel>
                                        </div>
                                    </asp:Panel>

                                    <asp:Panel runat="server" ID="pan_account_recover" Visible="false" CssClass="recover_div">
                                        <h1>Account Setup</h1>
                                        <br />
                                        <p class="readmore" style="font-size: large">Please take a moment to set up your account profile.</p>
                                        <br />

                                        <div style="border: 5px ridge Gray; width: 70%">
                                            <asp:Panel runat="server" ID="pan_account_recover_set_email" Visible="false">
                                                <h3>Please enter your email address. We only use this address to send account notifications:</h3>
                                                <table>
                                                    <tr>
                                                        <td>Email:</td>
                                                        <td>
                                                            <asp:TextBox runat="server" ID="tb_account_recover_email" Width="150px" /></td>
                                                    </tr>
                                                    <tr>
                                                        <td>Confirm Email:</td>
                                                        <td>
                                                            <asp:TextBox runat="server" ID="tb_account_recover_confirm_email" Width="150px" /></td>
                                                    </tr>
                                                </table>
                                                <br />
                                                <asp:Label runat="server" ID="lab_account_recover_email_error" CssClass="errorText" Style="font-size: smaller" />
                                                <hr />
                                            </asp:Panel>

                                            <asp:Panel runat="server" ID="pan_account_recover_set_password" Visible="false">
                                                <h3>Your password is expired or been manually reset. Please select a new, secure password:</h3>
                                                <table>
                                                    <tr runat="server" id="pan_current_pass">
                                                        <td>Current Password:</td>
                                                        <td>
                                                            <asp:TextBox runat="server" ID="tb_account_recover_current_password" Width="150Px" TextMode="Password" /></td>
                                                    </tr>
                                                    <tr>
                                                        <td>&nbsp;</td>
                                                        <td>
                                                            <hr />
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td>New Password:</td>
                                                        <td>
                                                            <asp:TextBox runat="server" ID="tb_account_recover_password" Width="150px" TextMode="Password" /></td>
                                                    </tr>
                                                    <tr>
                                                        <td>Confirm Password:</td>
                                                        <td>
                                                            <asp:TextBox runat="server" ID="tb_account_recover_confirm_password" Width="150px" TextMode="Password" /></td>
                                                    </tr>
                                                </table>
                                                <br />
                                                <asp:Label runat="server" ID="lab_account_recover_pass_error" CssClass="errorText" Style="font-size: smaller" />
                                                <hr />
                                            </asp:Panel>

                                            <asp:Panel runat="server" ID="pan_account_recover_set_question" Visible="false">
                                                <asp:UpdatePanel runat="server" UpdateMode="Conditional">
                                                    <ContentTemplate>
                                                        <h3>Please select a security question/answer:</h3>
                                                        Note: Security answers must be at least three characters, and contain only letters, numbers and/or spaces.
                                        <br />
                                                        <br />
                                                        <table>
                                                            <tr>
                                                                <td>Security Question:</td>
                                                                <td>
                                                                    <asp:DropDownList runat="server" ID="dl_security_questions" Width="320px" class="dropdown_class" /></td>
                                                            </tr>
                                                            <tr>
                                                                <td>Answer:</td>
                                                                <td>
                                                                    <asp:TextBox runat="server" ID="tb_account_recover_answer" Width="180px" /></td>
                                                            </tr>
                                                        </table>
                                                        <br />
                                                        <asp:Label runat="server" ID="lab_account_recover_question_error" CssClass="errorText" />
                                                        <br />
                                                    </ContentTemplate>
                                                </asp:UpdatePanel>
                                            </asp:Panel>
                                        </div>
                                        <br />
                                        <br />
                                        <asp:Button runat="server" ID="b_account_recover_accept" CssClass="red button" Text="   Done   " OnClick="b_account_recover_accept_Click" UseSubmitBehavior="true" />

                                    </asp:Panel>
                                </ContentTemplate>
                            </asp:UpdatePanel>


                            <iframe runat="server" src="/srd/Report_Container.aspx?id=report_iframe&height=450" id="report_iframe" visible="false"
                                style="width: 99%; height: 100%" noresize="noresize" frameborder="1" allowtransparency="true" class="report_iframe">
                                <p style="color: Red">This web application uses iframes for reporting, which your browser does not support.</p>
                            </iframe>
                        </asp:Panel>
                    </div>
                </div>
            </div>

        </ContentTemplate>

    </asp:UpdatePanel>
</asp:Content>
