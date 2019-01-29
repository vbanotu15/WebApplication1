<%@ Page Title="" Language="C#" MasterPageFile="~/Master/Site.Master" AutoEventWireup="true" CodeBehind="Web-Management.aspx.cs" Inherits="WebApplication1.Customer.Web_Management" %>

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

    <div class="mainheader structuralcontact clear">
        <h3 title="Customer Utilities">Customer Utilities</h3>
        <h5 style="margin-left: 30px; color: white; font-weight: bold">&nbsp;&nbsp;&nbsp;&nbsp;Our resources at your fingertips.</h5>
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
                            <li><a href="Web-Management.aspx" class="current">Web Management</a></li>
                        </ul>
                    </div>


                    <div class="clear"></div>

                    <div class="col1">
                        <div class="col1 margintop1">
                            <h4 title="Web Management">Web Management</h4>

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
                        <%-- <asp:AsyncPostBackTrigger ControlID="tabs_utilities" EventName="ActiveTabChanged" />
                                <asp:AsyncPostBackTrigger ControlID="b_create_user_ok" EventName="Click" /> 
                        <asp:UpdatePanel runat="server" ID="updatepan_user_manage" UpdateMode="Conditional">
                            <Triggers>
                                <asp:AsyncPostBackTrigger ControlID="Tab_web_manage_tabs" EventName="SelectedIndexChanged" />
                              
                            </Triggers>
                            <ContentTemplate>     

                                  <asp:UpdateProgress ID="UpdateProgress2" runat="server" AssociatedUpdatePanelID="updatepan_user_manage">
                                        <ProgressTemplate>

                                            <div class="darkdrop">
                                            </div>

                                        </ProgressTemplate>
                                    </asp:UpdateProgress>   --%>

                        <asp:Panel runat="server" ID="pan_web_manage" CssClass="web_manage_panel">
                            <hr />
                            <h2 style="font-size: 1.8em; text-align: left; margin-left: 80px; margin-top: 10px; margin-bottom: 10px">Website Administration</h2>
                            <hr />
                            <div style="text-align: left">
                                <asp:UpdatePanel runat="server" ID="update_web_manage" UpdateMode="Conditional">
                                    <ContentTemplate>
                                        <ajaxToolkit:TabContainer runat="server" ID="Tab_web_manage_tabs"
                                            ActiveTabIndex="0"
                                            BorderStyle="None" BorderWidth="0" Width="100%"
                                            CssClass="customTabs"
                                            OnActiveTabChanged="Tab_web_manage_tabs_ActiveTabChanged"
                                            AutoPostBack="true" Style="min-height: 500px; height: auto">
                                            <ajaxToolkit:TabPanel runat="server" ID="web_manage_document_tab" HeaderText="Documentation">
                                                <ContentTemplate>
                                                    <div style="border: 2px Solid Silver; background-color: White">
                                                        <table style="width: 100%">
                                                            <tr>
                                                                <td style="width: 40%">
                                                                    <h5>Document List</h5>
                                                                    <asp:ListBox ID="lstweb_manage_document_list" runat="server" Style="width: 100%"
                                                                        AutoPostBack="True" OnSelectedIndexChanged="lstweb_manage_document_list_SelectedIndexChanged">
                                                                        <asp:ListItem Text="(No Documents Found)"></asp:ListItem>
                                                                    </asp:ListBox>

                                                                    <table style="width: 100%">
                                                                        <tr>
                                                                            <td style="border-right: 2px Solid Silver">
                                                                                <asp:Button runat="server" ID="btn_web_manage_insert_document" CssClass="red button" Style="margin-bottom: 5px" Text="Insert..." OnClick="btn_web_manage_insert_document_Click" />
                                                                            </td>
                                                                            <td style="border-right: 2px Solid Silver">
                                                                                <asp:Button runat="server" ID="btn_web_manage_delete_document" Text="Delete" CssClass="black button" OnClick="btn_web_manage_delete_document_Click" /></td>
                                                                            <td><strong>Move:</strong></td>
                                                                            <td>
                                                                                <asp:Button runat="server" ID="btn_web_manage_move_document_up" CssClass="gray button" Style="float: right" Text="↑" OnClick="btn_web_manage_move_document_up_Click" />
                                                                                <asp:Button runat="server" ID="btn_web_manage_move_document_down" CssClass="gray button" Text="↓" OnClick="btn_web_manage_move_document_down_Click" />
                                                                            </td>
                                                                        </tr>
                                                                    </table>
                                                                </td>
                                                                <td style="width: 60%">
                                                                    <div class="document_div">
                                                                        <asp:UpdatePanel runat="server" ID="UpdatePanel2" UpdateMode="Conditional">
                                                                            <Triggers>
                                                                                <asp:PostBackTrigger ControlID="btn_web_manage_update_document_view" />
                                                                            </Triggers>
                                                                            <ContentTemplate>
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
                                                                                                            <asp:Button runat="server" ID="btn_web_manage_update_document" Text="Manage..." CssClass="red button" Style="float: right" OnClick="btn_web_manage_update_document_Click" />
                                                                                                        </td>
                                                                                                        <td>
                                                                                                            <asp:Button runat="server" ID="btn_web_manage_update_document_view" class="white button" Style="float: left" Text="View..." OnClick="btn_web_manage_update_document_view_Click" />
                                                                                                        </td>
                                                                                                    </tr>
                                                                                                </table>
                                                                                            </td>
                                                                                            <td>
                                                                                                <div runat="server" id="web_manage_price_announce" style="float: right" visible="false">
                                                                                                    <asp:Button runat="server" ID="btn_web_manage_price_announce" class="gray button" Style="float: right" Text="Price Announcement >>" OnClick="btn_web_manage_price_announce_Click" />
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
                                                                                                <asp:Button runat="server" ID="btn_web_manage_document_active" CssClass="white button" Visible="false" OnClick="btn_web_manage_document_active_Click" />
                                                                                            </td>
                                                                                        </tr>
                                                                                    </table>
                                                                                    <div style="width: 100%; margin-bottom: 5px">
                                                                                        <hr style="color: Red" />

                                                                                        <table>
                                                                                            <tr>
                                                                                                <td>
                                                                                                    <asp:Button runat="server" ID="btn_web_manage_document_edit" Text="Edit" CssClass="gray button" OnClick="btn_web_manage_document_edit_Click" Style="float: right" Visible="false" />
                                                                                                </td>
                                                                                                <td>
                                                                                                    <asp:Button runat="server" ID="btn_web_manage_document_edit_cancel" Text="Cancel" CssClass="white button" OnClick="btn_web_manage_document_edit_cancel_Click" Style="float: right" Visible="false" />
                                                                                                </td>
                                                                                            </tr>
                                                                                        </table>

                                                                                    </div>
                                                                                </asp:Panel>
                                                                            </ContentTemplate>
                                                                        </asp:UpdatePanel>
                                                                    </div>
                                                                </td>
                                                            </tr>
                                                        </table>
                                                        <ajaxToolkit:ConfirmButtonExtender runat="server" TargetControlID="btn_web_manage_delete_document" ConfirmText="Are you sure you wish to delete this item entirely?" ID="ctl0011" BehaviorID="_content_ctl00" />
                                                    </div>

                                                    <asp:UpdatePanel runat="server" UpdateMode="Conditional">
                                                        <Triggers>
                                                            <asp:PostBackTrigger ControlID="btn_web_manage_insert_document_accept" />
                                                        </Triggers>
                                                        <ContentTemplate>
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
                                                                            <asp:Button runat="server" ID="btn_web_manage_insert_document_accept" CssClass="red button" Text="Accept" OnClick="btn_web_manage_insert_document_accept_Click" />
                                                                        </td>
                                                                    </tr>
                                                                </table>


                                                            </asp:Panel>
                                                        </ContentTemplate>
                                                    </asp:UpdatePanel>

                                                    <asp:UpdatePanel ID="update_document_update_panel" runat="server" UpdateMode="Conditional">
                                                        <Triggers>
                                                            <asp:PostBackTrigger ControlID="btn_web_manage_update_document_schedule_accept" />
                                                            <asp:AsyncPostBackTrigger ControlID="radio_web_manage_update_type" EventName="SelectedIndexChanged" />
                                                        </Triggers>
                                                        <ContentTemplate>
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
                                                                                    <asp:ListBox runat="server" ID="lst_web_manage_document_changes"
                                                                                        Width="100%"
                                                                                        AutoPostBack="true"
                                                                                        OnSelectedIndexChanged="lst_web_manage_document_changes_SelectedIndexChanged"
                                                                                        Style="min-height: 120px">
                                                                                        <asp:ListItem Text="(None)" />
                                                                                    </asp:ListBox>
                                                                                    <br />
                                                                                    <asp:Button runat="server" ID="btn_web_manage_update_schedule_new" CssClass="red button" Text="Add" OnClick="btn_web_manage_update_schedule_new_Click" Style="margin-top: 3px" />
                                                                                    <asp:Button runat="server" ID="btn_web_manage_update_schedule_delete" CssClass="black button" Text="Delete" OnClick="btn_web_manage_update_schedule_delete_Click" />
                                                                                    <ajaxToolkit:ConfirmButtonExtender runat="server" ConfirmText="Confirm deletion of this change record?" TargetControlID="btn_web_manage_update_schedule_delete" />
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

                                                                                            <asp:Button runat="server" ID="btn_web_manage_update_document_schedule_cancel" Text="Cancel" CssClass="white button" OnClick="btn_web_manage_update_document_schedule_cancel_Click" />
                                                                                            <asp:Button runat="server" ID="btn_web_manage_update_document_schedule_accept" Text="Accept" CssClass="red button" OnClick="btn_web_manage_update_document_schedule_accept_Click" Style="margin-bottom: 3px" />

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
                                                    </asp:UpdatePanel>
                                                </ContentTemplate>
                                            </ajaxToolkit:TabPanel>

                                            <ajaxToolkit:TabPanel runat="server" ID="web_manage_contacts_tab" HeaderText="Contacts">
                                                <ContentTemplate>
                                                    <asp:UpdatePanel runat="server" UpdateMode="Conditional" ID="ContactManageUpdatePanel">
                                                        <Triggers>
                                                            <asp:AsyncPostBackTrigger ControlID="lst_contact_manage_contacts" EventName="SelectedIndexChanged" />
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

                                                                                            <asp:ListBox runat="server" ID="lst_contact_manage_contacts" Width="220px"
                                                                                                AutoPostBack="true"
                                                                                                OnSelectedIndexChanged="lst_contact_manage_contacts_SelectedIndexChanged"
                                                                                                ViewStateMode="Enabled"></asp:ListBox>
                                                                                            <hr />
                                                                                            <asp:Button runat="server" ID="btn_contact_manage_all_contacts_add_contact" CssClass="red button" Text="Add" OnClick="btn_contact_manage_all_contacts_add_contact_Click" />
                                                                                            <%=(btn_contact_manage_all_contacts_add_contact.Visible ? "&nbsp;|&nbsp;" : "")%>
                                                                                            <asp:Button runat="server" ID="btn_contact_manage_all_contacts_remove_contact" CssClass="black button" Text="Remove" OnClick="btn_contact_manage_all_contacts_remove_contact_Click" />
                                                                                            <ajaxToolkit:ConfirmButtonExtender ID="ConfirmButtonExtender_remove_contact" runat="server" TargetControlID="btn_contact_manage_all_contacts_remove_contact" ConfirmText="Are you sure you want to remove this contact?" />

                                                                                        </td>
                                                                                        <td>
                                                                                            <asp:Panel runat="server" ID="pan_contact_manage_contact" Style="border: 2px Solid Tan; min-height: 220px; background-image: url(/srd/wp-content/themes/srd/images/contact_card.png); background-repeat: no-repeat; background-position: center">
                                                                                                <h5>Contact Info</h5>

                                                                                                <asp:Panel runat="server" ID="pan_contact_manage_no_content" Style="margin: 5px" Visible="true">

                                                                                                    <br />
                                                                                                    <strong><< Select a Contact</strong>

                                                                                                </asp:Panel>

                                                                                                <asp:UpdatePanel ID="UpdatePanel3" runat="server" UpdateMode="Conditional">
                                                                                                    <Triggers>
                                                                                                        <asp:PostBackTrigger ControlID="btn_contact_manage_upload_photo_ok" />
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
                                                                                                                <asp:Button runat="server" ID="btn_contact_manage_upload_photo_ok" CssClass="red button" Text="Upload" OnClick="btn_contact_manage_upload_photo_ok_Click" UseSubmitBehavior="false" />
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
                                                                                                                <asp:Button runat="server" ID="btn_contact_manage_all_contacts_edit_img" CssClass="gray button" Text="Change..." Style="margin-top: 5px" Visible="false" OnClick="btn_contact_manage_all_contacts_edit_img_Click" />

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
                                                                                                    <asp:Button runat="server" ID="btn_contact_manage_save_contact" CssClass="red button" Text="Save" Visible="false" OnClick="btn_contact_manage_save_contact_Click" />
                                                                                                    &nbsp;&nbsp;
                                                                                                        <asp:Button runat="server" ID="btn_contact_manage_edit_contact" CssClass="gray button" Text="Edit" OnClick="btn_contact_manage_edit_contact_Click" />

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
                                                                                                    <asp:ListBox runat="server" ID="lst_contact_manage_groups"
                                                                                                        AutoPostBack="true"
                                                                                                        Height="100%"
                                                                                                        Width="100%"
                                                                                                        OnSelectedIndexChanged="lst_contact_manage_groups_SelectedIndexChanged"></asp:ListBox>
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

                                                                                                    <asp:Button runat="server" ID="btn_contact_manage_group_new" CssClass="red button" Text="New..." OnClick="btn_contact_manage_group_new_Click" />
                                                                                                    <%-- <%=(btn_contact_manage_group_delete.Visible ? "&nbsp;|&nbsp;" : "")%>--%>
                                                                                                    <asp:Button runat="server" ID="btn_contact_manage_group_save" CssClass="red button" Text="Save"
                                                                                                        Style="margin-top: 5px"
                                                                                                        Visible="false"
                                                                                                        OnClick="btn_contact_manage_group_save_Click" />
                                                                                                    <asp:Button runat="server" ID="btn_contact_manage_group_edit" CssClass="gray button" Text="Edit"
                                                                                                        Style="margin-top: 5px"
                                                                                                        OnClick="btn_contact_manage_group_edit_Click"
                                                                                                        Visible="false" />
                                                                                                    <asp:Button runat="server" ID="btn_contact_manage_group_delete" CssClass="black button" Text="Delete"
                                                                                                        Style="margin-top: 5px"
                                                                                                        OnClick="btn_contact_manage_group_delete_Click"
                                                                                                        Visible="false" />
                                                                                                    <%-- <%=(btn_contact_manage_group_preview.Visible ? "&nbsp;|&nbsp;" : "") %>--%>
                                                                                                    <asp:Button runat="server" ID="btn_contact_manage_group_preview" CssClass="white button" Text="Preview..."
                                                                                                        Style="margin-top: 5px"
                                                                                                        OnClick="btn_contact_manage_group_preview_Click"
                                                                                                        Visible="false" />
                                                                                                    <ajaxToolkit:ConfirmButtonExtender ID="ConfirmButtonExtender5" runat="server" TargetControlID="btn_contact_manage_group_delete" ConfirmText="This group will be removed from all tabs and territories, are you sure?" />

                                                                                                </td>
                                                                                                <td style="width: 66%">
                                                                                                    <table style="width: 100%; border: 1px Solid Silver" runat="server" id="td_contact_manage_group_content" visible="false">
                                                                                                        <tr>
                                                                                                            <td>
                                                                                                                <h3 style="text-align: left">Members</h3>
                                                                                                                <asp:ListBox runat="server" ID="lst_contact_manage_group_members"
                                                                                                                    Height="100%" Width="100%"
                                                                                                                    AutoPostBack="true"
                                                                                                                    OnSelectedIndexChanged="lst_contact_manage_group_members_SelectedIndexChanged" />
                                                                                                                <hr />
                                                                                                                <asp:Button runat="server" ID="btn_contact_manage_group_member_remove"
                                                                                                                    CssClass="black button"
                                                                                                                    Text="Remove >"
                                                                                                                    Style="margin-top: 5px; margin-bottom: 5px"
                                                                                                                    OnClick="btn_contact_manage_group_member_remove_Click" />
                                                                                                                <hr />
                                                                                                                <div runat="server" id="td_contact_manage_group_member_order" visible="false">
                                                                                                                    <strong>Order:</strong> &nbsp;
                                                                                                                    <asp:Button runat="server" ID="btn_contact_manage_group_member_move_up"
                                                                                                                        CssClass="gray button"
                                                                                                                        Text="↑"
                                                                                                                        OnClick="btn_contact_manage_group_member_move_up_Click" />
                                                                                                                    :
                                                                                                                    <asp:Button runat="server" ID="btn_contact_manage_group_member_move_down"
                                                                                                                        CssClass="gray button"
                                                                                                                        Text="↓"
                                                                                                                        OnClick="btn_contact_manage_group_member_move_down_Click" />
                                                                                                                    <asp:Button runat="server" ID="btn_contact_manage_group_member_sort_alpha"
                                                                                                                        CssClass="white button" Text="Sort Alpha."
                                                                                                                        Style="margin-top: 10px; margin-bottom: 10px"
                                                                                                                        OnClick="btn_contact_manage_group_member_sort_alpha_Click" />
                                                                                                                    <br />
                                                                                                                    <asp:CheckBox runat="server" ID="chk_contact_manage_group_member_attach_above"
                                                                                                                        Text="Attach to Above"
                                                                                                                        Enabled="false"
                                                                                                                        OnCheckedChanged="chk_contact_manage_group_member_attach_above_CheckedChanged"
                                                                                                                        AutoPostBack="true" />
                                                                                                                </div>
                                                                                                            </td>
                                                                                                            <td style="width: 50%">
                                                                                                                <h3 style="text-align: left">Non-Members</h3>
                                                                                                                <asp:ListBox runat="server" ID="lb_contact_manage_non_group_members" Height="100%" Width="100%" AutoPostBack="true" />
                                                                                                                <hr />

                                                                                                                <asp:Button runat="server" ID="btn_contact_manage_group_member_add"
                                                                                                                    CssClass="red button"
                                                                                                                    Text="< Add"
                                                                                                                    Style="margin-top: 5px"
                                                                                                                    OnClick="btn_contact_manage_group_member_add_Click" />

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
                                                                                        <asp:Button runat="server" ID="btn_contact_manage_group_preview_dummy" Style="display: none" />
                                                                                        <ajaxToolkit:ModalPopupExtender runat="server" ID="popup_contact_manage_group_preview"
                                                                                            TargetControlID="btn_contact_manage_group_preview_dummy"
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
                                                                                            <asp:ListBox runat="server" ID="lst_contact_manage_tabs"
                                                                                                Width="100%"
                                                                                                OnSelectedIndexChanged="lst_contact_manage_tabs_SelectedIndexChanged"
                                                                                                AutoPostBack="true" />
                                                                                            <br />
                                                                                            <table style="width: 100%" runat="server" id="table_contact_manage_tab_order" visible="false">
                                                                                                <tr>
                                                                                                    <td style="text-align: right; font-weight: bold">Order:</td>
                                                                                                    <td>
                                                                                                        <asp:Button runat="server" ID="btn_contact_manage_tab_order_up"
                                                                                                            CssClass="gray button"
                                                                                                            Text="↑"
                                                                                                            OnClick="btn_contact_manage_tab_order_up_Click" />
                                                                                                        :
                                                                                                        <asp:Button runat="server" ID="btn_contact_manage_tab_order_down"
                                                                                                            CssClass="gray button"
                                                                                                            Text="↓"
                                                                                                            OnClick="btn_contact_manage_tab_order_down_Click" />
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

                                                                                            <asp:Button runat="server" ID="btn_contact_manage_add_save_tab"
                                                                                                CssClass="red button"
                                                                                                Style="margin-top: 5px"
                                                                                                OnClick="btn_contact_manage_add_save_tab_Click"
                                                                                                Text="New..." />
                                                                                            <%--<%=(btn_contact_manage_edit_tab.Visible ? "&nbsp;|&nbsp;" : "")%>--%>
                                                                                            <asp:Button runat="server" ID="btn_contact_manage_edit_tab"
                                                                                                CssClass="gray button"
                                                                                                Style="margin-top: 5px"
                                                                                                OnClick="btn_contact_manage_edit_tab_Click"
                                                                                                Visible="false"
                                                                                                Text="Edit" />
                                                                                            <%-- <%=(btn_contact_manage_remove_tab.Visible ? "&nbsp;|&nbsp;" : "") %>--%>
                                                                                            <asp:Button runat="server" ID="btn_contact_manage_remove_tab"
                                                                                                CssClass="black button"
                                                                                                Style="margin-top: 5px"
                                                                                                OnClick="btn_contact_manage_remove_tab_Click"
                                                                                                Visible="false"
                                                                                                Text="Delete" />
                                                                                            <ajaxToolkit:ConfirmButtonExtender ID="ConfirmButtonExtender6" runat="server"
                                                                                                TargetControlID="btn_contact_manage_remove_tab" ConfirmText="Are you sure you want to delete this tab page?" />

                                                                                        </td>
                                                                                        <td style="width: 66%">
                                                                                            <table runat="server" id="td_contact_manage_tab_group_content" visible="false" style="border: 1px Solid Silver; width: 100%">
                                                                                                <tr>
                                                                                                    <td style="width: 50%">
                                                                                                        <h3 style="text-align: left; margin-left: 10px">Tab Group Members</h3>
                                                                                                        <asp:ListBox runat="server" ID="lst_contact_manage_tab_members"
                                                                                                            Width="100%"
                                                                                                            OnSelectedIndexChanged="lst_contact_manage_tab_members_SelectedIndexChanged"
                                                                                                            AutoPostBack="true" />
                                                                                                        <br />
                                                                                                        <asp:Panel runat="server" ID="pan_contact_manage_tab_members_display" Visible="false">

                                                                                                            <strong>Order:</strong>&nbsp;
                                                                                                                <asp:Button runat="server" ID="btn_contact_manage_tab_members_move_up"
                                                                                                                    CssClass="gray button"
                                                                                                                    Text="↑"
                                                                                                                    OnClick="btn_contact_manage_tab_members_move_up_Click" />
                                                                                                            :
                                                                                                                <asp:Button runat="server" ID="btn_contact_manage_tab_members_move_down"
                                                                                                                    CssClass="gray button"
                                                                                                                    Text="↓"
                                                                                                                    OnClick="btn_contact_manage_tab_members_move_down_Click" />

                                                                                                        </asp:Panel>
                                                                                                        <hr />

                                                                                                        <asp:Button runat="server" ID="btn_contact_manage_tab_member_remove"
                                                                                                            CssClass="black button"
                                                                                                            Style="margin-top: 5px"
                                                                                                            OnClick="btn_contact_manage_tab_member_remove_Click"
                                                                                                            Text="Remove >" />

                                                                                                    </td>
                                                                                                    <td>
                                                                                                        <h3 style="text-align: left; margin-left: 10px">Available Groups</h3>
                                                                                                        <asp:ListBox runat="server" ID="lb_contact_manage_tab_non_members"
                                                                                                            Width="100%" />
                                                                                                        <hr />

                                                                                                        <asp:Button runat="server" ID="btn_contact_manage_tab_non_member_add"
                                                                                                            CssClass="red button"
                                                                                                            Style="margin-top: 5px"
                                                                                                            OnClick="btn_contact_manage_tab_non_member_add_Click"
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
                                                                                                            <asp:Button runat="server" ID="btn_contact_manage_territory_back"
                                                                                                                CssClass="red button"
                                                                                                                Text="<< Back to Map"
                                                                                                                OnClick="btn_contact_manage_territory_back_Click"
                                                                                                                Style="float: right" />
                                                                                                        </td>
                                                                                                    </tr>
                                                                                                </table>
                                                                                                <hr />
                                                                                                <table style="width: 100%">
                                                                                                    <tr>
                                                                                                        <td style="width: 50%">
                                                                                                            <h3 style="text-align: left; margin-left: 10px">Territory Groups</h3>
                                                                                                            <asp:ListBox runat="server" ID="lst_contact_manage_territory_members"
                                                                                                                Width="100%"
                                                                                                                OnSelectedIndexChanged="lst_contact_manage_territory_members_SelectedIndexChanged"
                                                                                                                AutoPostBack="true" />
                                                                                                            <br />
                                                                                                            <asp:Panel runat="server" ID="pan_contact_manage_territory_group_content" Visible="false">
                                                                                                                Order: &nbsp;
                                                                                                                        <asp:Button runat="server" ID="btn_contact_manage_territory_move_up"
                                                                                                                            CssClass="gray button"
                                                                                                                            Text="↑"
                                                                                                                            OnClick="btn_contact_manage_territory_move_up_Click" />
                                                                                                                :
                                                                                                                        <asp:Button runat="server" ID="btn_contact_manage_territory_members_move_down"
                                                                                                                            CssClass="gray button"
                                                                                                                            Text="↓"
                                                                                                                            OnClick="btn_contact_manage_territory_members_move_down_Click" />

                                                                                                            </asp:Panel>
                                                                                                            <hr />

                                                                                                            <asp:Button runat="server" ID="btn_contact_manage_territory_members_remove"
                                                                                                                CssClass="black button"
                                                                                                                Style="margin-top: 5px"
                                                                                                                OnClick="btn_contact_manage_territory_members_remove_Click"
                                                                                                                Text="Remove >" />

                                                                                                        </td>
                                                                                                        <td>
                                                                                                            <h3 style="text-align: left; margin-left: 10px">Available Groups</h3>
                                                                                                            <asp:ListBox runat="server" ID="lb_contact_manage_territory_non_members"
                                                                                                                Width="100%" />
                                                                                                            <hr />

                                                                                                            <asp:Button runat="server" ID="btn_contact_manage_territory_non_members_add"
                                                                                                                CssClass="red button"
                                                                                                                Style="margin-top: 5px"
                                                                                                                OnClick="btn_contact_manage_territory_non_members_add_Click"
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
                            <asp:Button runat="server" ID="btn_account_recover_accept" CssClass="red button" Text="   Done   " OnClick="btn_account_recover_accept_Click" UseSubmitBehavior="true" />

                        </asp:Panel>

                        <%--    </ContentTemplate>
                        </asp:UpdatePanel>--%>
                    </div>

                    <div class="clear"></div>

                </div>
                <!-- InstanceEndEditable -->

                <!-- the sidebar -->
                <aside class="sidebar">
                    <h5>Side Navigation</h5>
                    <div class="sideNav">
                        <ul>
                            <li><a href="Customer-Utilities.aspx" title="Overview" class="">Customer Utilities</a></li>
                            <li><a href="Reporting.aspx" title="Price List" class="">Reporting</a></li>
                            <li><a href="Freight-Rate.aspx" title="Price List" class="">Freight Rate</a></li>
                            <li><a href="Profile.aspx" title="Price List" class="">User Profile</a></li>
                            <li><a href="User-Management.aspx" title="Price List" class="">Manage Users</a></li>
                            <li><a href="Web-Management.aspx" title="Price List" class="current">Website Admin</a></li>
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
