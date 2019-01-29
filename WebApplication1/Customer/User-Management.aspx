<%@ Page Title="" Language="C#" MasterPageFile="~/Master/Site.Master" AutoEventWireup="true" CodeBehind="User-Management.aspx.cs" Inherits="WebApplication1.Customer.User_Management" %>

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

        .auto-style1 {
            float: left;
        }

        .auto-style2 {
            float: left;
            width: 161px;
            height: 108px;
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
                            <li><a href="User-Management.aspx" class="current">User Management</a></li>
                        </ul>
                    </div>


                    <div class="clear"></div>

                    <div class="col1">
                        <div class="col1 margintop1">
                            <h4 title="User Management">User Management</h4>

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
                        <asp:UpdatePanel runat="server" ID="updatepan_user_manage" UpdateMode="Conditional">
                            <Triggers>
                                <asp:AsyncPostBackTrigger ControlID="lb_user_manage_users" EventName="SelectedIndexChanged" />
                                <asp:AsyncPostBackTrigger ControlID="tabs_utilities" EventName="ActiveTabChanged" />
                                <asp:AsyncPostBackTrigger ControlID="btn_create_user_ok" EventName="Click" />
                            </Triggers>
                            <ContentTemplate>
                                <asp:UpdateProgress ID="UpdateProgress2" runat="server" AssociatedUpdatePanelID="updatepan_user_manage">
                                    <ProgressTemplate>

                                        <div class="darkdrop">
                                        </div>

                                    </ProgressTemplate>
                                </asp:UpdateProgress>

                                <asp:Panel runat="server" ID="pan_user_manage" Style="height: auto">
                                    <h2 style="font-size: 1.8em; text-align: left; margin-left: 20px; margin-bottom: 1px">User Management</h2>
                                    <hr />
                                    <div runat="server" style="margin-left: 30px" class="auto-style2">
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

                                                    <asp:Button runat="server" ID="btn_user_manage_create_user" Enabled="false" Text="Create User"
                                                        Style="cursor: pointer; margin-top: 4px;" CssClass="white button" OnClick="btn_user_manage_create_user_Click" UseSubmitBehavior="false" />

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
                                                                            <asp:Button runat="server" ID="btn_user_manage_edit_profile" Text="Edit" Enabled="False" OnClick="btn_user_manage_edit_profile_Click" Style="cursor: pointer" CssClass="black button" />
                                                                            <img alt="" src="~/Style/images/vertical_divider.png" style="vertical-align: middle" />
                                                                            <asp:Button runat="server" ID="btn_user_manage_save_profile" Text="Save" Font-Bold="True" Enabled="False" OnClick="btn_user_manage_save_profile_Click" Style="cursor: pointer" CssClass="white button" />

                                                                        </div>
                                                                        <table>
                                                                            <tr>
                                                                                <td style="text-align: right; width: 20%">Company ID:</td>
                                                                                <td>
                                                                                    <asp:Button runat="server" ID="btn_user_manage_profile_company_change" OnClick="btn_user_manage_profile_company_change_Click" Visible="False" Text="Change..." Style="margin-right: 5px" CssClass="gray button" />
                                                                                    <asp:Label runat="server" ID="lab_user_manage_profile_company" Width="300px" Style="font-weight: bold" /></td>
                                                                            </tr>
                                                                            <tr>
                                                                                <td style="text-align: right">Status:</td>
                                                                                <td>
                                                                                    <asp:Label runat="server" ID="lab_user_manage_profile_enabled" Style="color: Green" /><asp:Button runat="server" ID="btn_user_manage_profile_enabled" Visible="False" CssClass="white button" OnClick="btn_user_manage_profile_enabled_Click" />
                                                                                    &nbsp;|&nbsp;
                                                                        <asp:Label runat="server" ID="lab_user_manage_profile_locked" Style="color: Green" /><asp:Button runat="server" ID="btn_user_manage_profile_locked" Visible="False" CssClass="white button" OnClick="btn_user_manage_profile_locked_Click" />
                                                                                    &nbsp;|&nbsp;
                                                                        <asp:Label runat="server" ID="lab_user_manage_profile_active" Style="color: Green" />
                                                                                </td>
                                                                            </tr>
                                                                            <tr>
                                                                                <td style="text-align: right">Last Activity:</td>
                                                                                <td>
                                                                                    <asp:Label runat="server" ID="lab_user_manage_profile_last_activity" Width="300px" Enabled="False" /></td>
                                                                            </tr>
                                                                            <tr>
                                                                                <td style="text-align: right">First Name:</td>
                                                                                <td>
                                                                                    <asp:TextBox runat="server" ID="tb_user_manage_profile_firstname" Width="100px" Enabled="False" /></td>
                                                                            </tr>
                                                                            <tr>
                                                                                <td style="text-align: right">Last Name:</td>
                                                                                <td>
                                                                                    <asp:TextBox runat="server" ID="tb_user_manage_profile_lastname" Width="150px" Enabled="False" /></td>
                                                                            </tr>
                                                                            <tr>
                                                                                <td style="text-align: right">Title:</td>
                                                                                <td style="text-align: left">
                                                                                    <asp:TextBox runat="server" ID="tb_user_manage_profile_title" Width="220px" Enabled="False" /></td>
                                                                            </tr>
                                                                            <tr>
                                                                                <td style="text-align: right">
                                                                                    <asp:Label runat="server" ID="lab_user_manage_profile_email" Text="Email:" /></td>
                                                                                <td>
                                                                                    <asp:TextBox runat="server" ID="tb_user_manage_profile_email" Width="280px" Enabled="False" /></td>
                                                                            </tr>
                                                                            <tr>
                                                                                <td style="text-align: right">Phone:</td>
                                                                                <td style="text-align: left">
                                                                                    <asp:TextBox runat="server" ID="tb_user_manage_profile_phone" Width="150px" Enabled="False" /></td>
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
                                                                                                <asp:Button runat="server" ID="btn_reset_user" Text="Reset User" OnClick="btn_reset_user_Click" CssClass="gray button" /></td>
                                                                                            <td>
                                                                                                <asp:Button runat="server" ID="btn_delete_user" Text="Delete User" OnClick="btn_delete_user_Click" CssClass="red button" />
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

                                                                        <ajaxToolkit:ConfirmButtonExtender ID="delete_button_confirm_extender" runat="server" TargetControlID="btn_delete_user" ConfirmText="" BehaviorID="_content_delete_button_confirm_extender" />

                                                                        <ajaxToolkit:ConfirmButtonExtender ID="reset_button_confirm_extender" runat="server" TargetControlID="btn_reset_user" ConfirmText="" BehaviorID="_content_reset_button_confirm_extender" />

                                                                        <asp:Panel runat="server" ID="pan_user_manage_access" Visible="False">
                                                                            <table>
                                                                                <tr>
                                                                                    <td style="text-align: right">Access Level:</td>
                                                                                    <td style="text-align: left">
                                                                                        <asp:DropDownList runat="server" ID="ddl_user_manage_profile_access"
                                                                                            CssClass="dropdown_class"
                                                                                            Width="130px" Enabled="False"
                                                                                            OnSelectedIndexChanged="ddl_user_manage_profile_access_SelectedIndexChanged"
                                                                                            AutoPostBack="True">
                                                                                            <asp:ListItem Text="Basic User" />
                                                                                            <asp:ListItem Text="Advanced User" />
                                                                                            <asp:ListItem Text="Sales Rep" />
                                                                                            <asp:ListItem Text="Sales Admin" />
                                                                                        </asp:DropDownList>
                                                                                    </td>
                                                                                </tr>
                                                                                <tr runat="server" id="pan_user_manage_sdi_csr" visible="False">
                                                                                    <td style="text-align: right" runat="server">SDI Sales Rep:</td>
                                                                                    <td style="text-align: left" runat="server">
                                                                                        <asp:CheckBox runat="server" ID="cb_user_manage_sdi_csr" Enabled="False" /></td>
                                                                                </tr>
                                                                                <tr>
                                                                                    <td style="text-align: right">Description:</td>
                                                                                    <td style="text-align: left">
                                                                                        <asp:Label runat="server" ID="lab_user_manage_access_desc" /></td>
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
                                                            <asp:Button runat="server" ID="btn_company_change_cancel" CssClass="white button" Text="Close" />
                                                            <asp:Label runat="server" ID="pan_company_change_accept" Text=" | " />
                                                            <asp:Button runat="server" ID="btn_company_change_accept" CssClass="red button" Text="Accept" Style="margin-bottom: 10px" OnClick="btn_company_change_accept_Click" />
                                                        </div>
                                                    </asp:Panel>
                                                    <asp:Button runat="server" ID="b_dummy_company_change" Style="display: none" />
                                                    <ajaxToolkit:ModalPopupExtender runat="server" ID="popup_company_change"
                                                        TargetControlID="b_dummy_company_change"
                                                        PopupControlID="pan_company_change_popup"
                                                        CancelControlID="btn_company_change_cancel"
                                                        BackgroundCssClass="darkdrop" BehaviorID="_content_popup_company_change" DynamicServicePath="" />
                                                </ContentTemplate>
                                            </ajaxToolkit:TabPanel>
                                            <ajaxToolkit:TabPanel ID="pan_user_manage_company_access" runat="server" HeaderText="Company Access" Visible="true" Style="border: 2px Solid Silver; background-color: White">
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

                                                                    <asp:Button ID="btn_company_access_assign" runat="server" Text="Assign >" Width="80px"
                                                                        OnClick="btn_company_access_assign_Click" CssClass="white button" />
                                                                    <br />
                                                                    <asp:Button ID="btn_company_access_remove" runat="server" Text="< Remove" Width="80px"
                                                                        OnClick="btn_company_access_remove_Click" CssClass="white button" Style="margin-top: 5px" />
                                                                    <br />
                                                                    <hr />
                                                                    <asp:Button ID="btn_company_access_assign_all" runat="server" Text=">>" Width="80px" Enabled="false"
                                                                        OnClick="btn_company_access_assign_all_Click" ToolTip="Assign All" CssClass="white button" />
                                                                    <br />
                                                                    <asp:Button ID="btn_company_access_remove_all" runat="server" Text="<<" Width="80px" Enabled="false"
                                                                        OnClick="btn_company_access_remove_all_Click" ToolTip="Remove All" CssClass="white button" Style="margin-top: 5px" />

                                                                </td>
                                                                <ajaxToolkit:ConfirmButtonExtender ID="ConfirmButtonExtender3" runat="server" TargetControlID="btn_company_access_assign_all"
                                                                    ConfirmText="ASSIGN all companies to this user?" />
                                                                <ajaxToolkit:ConfirmButtonExtender ID="ConfirmButtonExtender4" runat="server" TargetControlID="btn_company_access_remove_all"
                                                                    ConfirmText="REMOVE all company access from this user?" />
                                                                <td style="width: 40%">
                                                                    <strong>Assigned Access</strong>
                                                                    <br />
                                                                    <asp:ListBox runat="server" ID="lb_user_manage_company_access_security" Width="300px" Height="250px">
                                                                        <asp:ListItem Text="Select Company" />
                                                                    </asp:ListBox>

                                                                    <asp:Button Style="margin-top: 10px; margin-bottom: 10px" runat="server" ID="btn_user_manage_company_access_copy_from_user" Text="Copy From..." CssClass="white button" Enabled="false" OnClick="btn_user_manage_company_access_copy_from_user_Click" ToolTip="Copy company access from another user." />

                                                                </td>
                                                            </tr>
                                                        </table>
                                                    </div>

                                                    <asp:Button runat="server" ID="btn_dummy_user_copy" Style="display: none" />
                                                    <ajaxToolkit:ModalPopupExtender runat="server" ID="popup_manage_company_access_copy_user"
                                                        TargetControlID="btn_dummy_user_copy"
                                                        CancelControlID="btn_user_copy_cancel"
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
                                                                        <asp:Button runat="server" ID="btn_user_copy_cancel" Text="Cancel" CssClass="white button" />
                                                                    </td>
                                                                    <td>
                                                                        <asp:Button runat="server" ID="btn_user_copy_accept" Text="Select" CssClass="red button" OnClick="btn_user_copy_accept_Click" /></td>
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

                                                                    <asp:Button ID="btn_data_access_assign" runat="server" Text="Assign >" Width="80px"
                                                                        OnClick="btn_data_access_assign_Click" CssClass="white button" />
                                                                    <br />
                                                                    <asp:Button ID="btn_data_access_remove" runat="server" Text="< Remove" Width="80px"
                                                                        OnClick="btn_data_access_remove_Click" CssClass="white button" Style="margin-top: 5px" />
                                                                    <br />
                                                                    <hr />
                                                                    <asp:Button ID="btn_data_access_assign_all" runat="server" Text=">>" Width="80px" Enabled="false"
                                                                        OnClick="btn_data_access_assign_all_Click" ToolTip="Assign All" CssClass="white button" />
                                                                    <br />
                                                                    <asp:Button ID="btn_data_access_remove_all" runat="server" Text="<<" Width="80px" Enabled="false"
                                                                        OnClick="btn_data_access_remove_all_Click" ToolTip="Remove All" CssClass="white button" Style="margin-top: 5px" />

                                                                </td>
                                                                <ajaxToolkit:ConfirmButtonExtender ID="ConfirmButtonExtender1" runat="server" TargetControlID="btn_data_access_assign_all"
                                                                    ConfirmText="ASSIGN all data objects to this user?" />
                                                                <ajaxToolkit:ConfirmButtonExtender ID="ConfirmButtonExtender2" runat="server" TargetControlID="btn_data_access_remove_all"
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
                                                    <asp:Button runat="server" ID="btn_user_manage_create_user_select_reg"
                                                        Font-Size="smaller"
                                                        Text="Import from Request"
                                                        CssClass="gray button"
                                                        UseSubmitBehavior="false"
                                                        OnClick="btn_user_manage_create_user_select_reg_Click"
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
                                                                <asp:DropDownList CssClass="dropdown_class" runat="server" ID="ddl_create_user_access" Width="130px" OnSelectedIndexChanged="ddl_create_user_access_SelectedIndexChanged" AutoPostBack="true" />
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
                                                                <asp:Button runat="server" ID="btn_create_user_cancel" Text="Cancel" CssClass="white button" OnClick="btn_create_user_cancel_Click" /></td>
                                                            <td>
                                                                <asp:Image runat="server" ImageUrl="~/srd/wp-content/themes/srd/images/vertical_divider.png" /></td>
                                                            <td>
                                                                <asp:Button runat="server" ID="btn_create_user_ok" Text="CREATE" Font-Bold="true" UseSubmitBehavior="false" OnClick="btn_create_user_ok_Click" CssClass="red button" /></td>
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
                                                <asp:CheckBox runat="server" ID="chk_manage_users_historic_reg"
                                                    Text="Show Historic"
                                                    AutoPostBack="true"
                                                    OnCheckedChanged="chk_manage_users_historic_reg_CheckedChanged"
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
                                            <asp:Button runat="server" ID="btn_user_manage_select_reg_cancel" CssClass="white button" Text="Cancel" OnClick="btn_user_manage_select_reg_cancel_Click" />
                                            <asp:Button runat="server" ID="btn_user_manage_select_reg_ok" CssClass="red button" Text="Select" OnClick="btn_user_manage_select_reg_ok_Click" />
                                            <asp:Button runat="server" ID="btn_dummy_cancel" Style="display: none" />
                                        </div>
                                        <br style="clear: both" />
                                    </div>
                                </asp:Panel>

                                <asp:Button runat="server" ID="dum_select" Style="display: none" />
                                <ajaxToolkit:ModalPopupExtender runat="server" ID="user_manage_select_reg_popup"
                                    BackgroundCssClass="darkdrop"
                                    PopupControlID="pan_user_manage_select_reg"
                                    TargetControlID="dum_select"
                                    CancelControlID="btn_dummy_cancel" />

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

                            </ContentTemplate>
                        </asp:UpdatePanel>

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
                            <li><a href="User-Management.aspx" title="Price List" class="current">Manage Users</a></li>
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
