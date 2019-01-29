<%@ Page Title="" Language="C#" MasterPageFile="~/Master/Site.Master" AutoEventWireup="true" CodeBehind="Profile.aspx.cs" Inherits="WebApplication1.Customer.Profile" %>

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
        .darkdrop {
            position: fixed;
            z-index: 1000;
            width: 100%;
            height: 100%;
            top: 0px;
            left: 0px;
            -moz-opacity: 0.45;
            opacity: 0.45;
            filter: alpha(opacity=45);
            -ms-filter: "progid:DXImageTransform.Microsoft.Alpha(Opacity=45)";
            background: Gray;
        }

        .user_popup {
            position: absolute;
            left: -50%;
            top: 50%;
            width: Auto;
            height: Auto;
            background-color: #e0ddbf;
            border: 2px Solid Maroon;
            z-index: 1001;
            color: Black;
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
                            <li><a href="Profile.aspx" class="current">Profile</a></li>
                        </ul>
                    </div>


                    <div class="clear"></div>

                    <div class="col1">
                        <div class="col1 margintop1">
                            <h4 title="Profile">My Profile</h4>

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
                        <asp:UpdatePanel runat="server" ID="user_profile_update" UpdateMode="Conditional">
                            <Triggers>
                                <asp:AsyncPostBackTrigger ControlID="btnChangePasswordOK" EventName="Click" />
                            </Triggers>
                            <ContentTemplate>
                                <asp:Panel runat="server" ID="pan_user_profile" CssClass="profile_panel" Style="color: Black" HorizontalAlign="Center">
                                    <div style="width: 100%; border: 2px Ridge Silver; background-color: White">
                                        <br />
                                        <table style="background-color: Silver; border: 2px Ridge Gray; width: 80%">
                                            <tr>
                                                <td><strong>User Name: </strong></td>
                                                <td>
                                                    <asp:Label runat="server" ID="lblprofile_username" Enabled="false" /></td>
                                            </tr>
                                            <tr>
                                                <td><strong>Company: </strong></td>
                                                <td>
                                                    <asp:Label runat="server" ID="lblprofile_customer" Enabled="false" /></td>
                                            </tr>
                                        </table>
                                        <h5>Contact Info.</h5>
                                        <table style="background-color: Silver; border: 2px Ridge Gray; width: 80%">
                                            <tr>
                                                <td><strong>First Name: </strong></td>
                                                <td>
                                                    <asp:TextBox runat="server" ID="txtprofile_first_name" Enabled="false" /></td>
                                            </tr>
                                            <tr>
                                                <td><strong>Last Name: </strong></td>
                                                <td>
                                                    <asp:TextBox runat="server" ID="txtprofile_last_name" Enabled="false" /></td>
                                            </tr>
                                            <tr>
                                                <td><strong>Title: </strong></td>
                                                <td>
                                                    <asp:TextBox runat="server" ID="txtprofile_title" Enabled="false" /></td>
                                            </tr>
                                            <tr>
                                                <td><strong>Email: </strong></td>
                                                <td>
                                                    <asp:TextBox runat="server" ID="txtprofile_email" Enabled="false" Width="230px" /></td>
                                            </tr>
                                            <tr>
                                                <td><strong>Phone: </strong></td>
                                                <td>
                                                    <asp:TextBox runat="server" ID="txtprofile_phone" Enabled="false" /></td>
                                            </tr>
                                        </table>
                                        <hr />
                                        <div style="padding-bottom: 10px">
                                            <table>
                                                <tr>
                                                    <td>
                                                        <asp:Button runat="server" ID="btnCancelProfileEdit" Visible="false" Text="Cancel" OnClick="btnCancelProfileEdit_Click" CssClass="white button" /></td>
                                                    <td>
                                                        <asp:Button runat="server" ID="btnProfileEdit" Text="Edit Info." OnClick="btnProfileEdit_Click" CssClass="white button" /></td>
                                                    <td>
                                                        <asp:Button runat="server" ID="btnProfileSave" Text="Save" OnClick="btnProfileSave_Click" Visible="false" CssClass="red button" /></td>
                                                    <td>
                                                        <asp:Button runat="server" ID="btnResetPassword" CssClass="black button" Text="Change Password" OnClick="btnResetPassword_Click" /></td>
                                                </tr>
                                            </table>

                                        </div>
                                    </div>

                                    <asp:Button runat="server" ID="dum_change_pass" Style="display: none" />

                                    <ajaxToolkit:ModalPopupExtender runat="server" ID="pass_change_popup"
                                        BackgroundCssClass="darkdrop"
                                        TargetControlID="dum_change_pass"
                                        PopupControlID="pan_change_pass_popup"
                                        CancelControlID="btnChangePasswordCancel" />

                                    <asp:Panel runat="server" ID="pan_change_pass_popup" CssClass="user_popup" Width="400px" Height="250px" DefaultButton="btnChangePasswordOK" HorizontalAlign="Center">
                                        <%--display: none; --%>
                                        <br />
                                        <h5>&nbsp;&nbsp;Change Password</h5>
                                        <hr />
                                        <asp:Panel runat="server" ID="pan_change_pass_input">
                                            <table>
                                                <tr>
                                                    <td><strong>Current Password: </strong></td>
                                                    <td>
                                                        <asp:TextBox runat="server" ID="txtpassword" Width="150px" TextMode="Password" /></td>
                                                </tr>
                                                <tr>
                                                    <td>&nbsp;</td>
                                                    <td>
                                                        <hr />
                                                    </td>
                                                    <tr>
                                                        <td><strong>New Password: </strong></td>
                                                        <td>
                                                            <asp:TextBox runat="server" ID="txtPasswordNew" Width="150px" TextMode="Password" /></td>
                                                    </tr>
                                                <tr>
                                                    <td><strong>Confirm Password: </strong></td>
                                                    <td>
                                                        <asp:TextBox runat="server" ID="txtPasswordConfirm" Width="150px" TextMode="Password" /></td>
                                                </tr>
                                            </table>
                                        </asp:Panel>
                                        <br />
                                        <asp:Label runat="server" ID="lab_change_pass_error" CssClass="errorText" />
                                        <hr />
                                        <div style="padding-bottom: 10px">
                                            <table>
                                                <tr>
                                                    <td>
                                                        <asp:Button runat="server" ID="btnChangePasswordCancel" Text="Close" CssClass="white button" OnClick="btnChangePasswordCancel_Click" UseSubmitBehavior="false" />
                                                    </td>
                                                    <td>
                                                        <asp:Button runat="server" ID="btnChangePasswordOK" Text="Accept" CssClass="red button" OnClick="btnChangePasswordOK_Click" UseSubmitBehavior="false" />
                                                    </td>
                                                </tr>
                                            </table>
                                        </div>

                                    </asp:Panel>
                                </asp:Panel>
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
                            <li><a href="Profile.aspx" title="Price List" class="current">User Profile</a></li>
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
