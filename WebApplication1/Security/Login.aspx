﻿<%@ Page Language="C#" MasterPageFile="~/Master/Site.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="WebApplication1.Security.Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <link href="..//Style/css/tier2-sdi-structural.css" rel="stylesheet" type="text/css">
    <link href="..//Style/css/form-sdi.css" rel="stylesheet" type="text/css">
    <!-- the content -->
    <div class="content">
        <!-- InstanceBeginEditable name="Area1" -->
        <div class="FullColumn centered">
            <div class="col1 margintop2">
                <h4 title="MySDI Login" class="aligncenter">MySDI Login</h4>
                <table class="contact full">
                    <tbody>
                        <tr>
                            <td class="description2">
                                <input name="Username" type="text" class="textfield1" placeholder="Username" required="required" />
                                <span class="hp">
                                    <input name="MiddleName" type="text" value="" /></span>
                            </td>
                        </tr>
                        <tr>
                            <td class="description2">
                                <input name="Password" type="password" class="textfield1" placeholder="*Password:" required="required" />
                            </td>
                        </tr>
                    </tbody>
                </table>
                <div class="clear"></div>
                <div class="spacer1"></div>
                <table class="contact2 full">
                    <tbody>
                        <tr>
                            <td class="description2">
                                <input name="login" type="submit" class="submit full" value="Login"></td>
                        </tr>
                        <tr>
                            <td class="description1">
                                <p>&nbsp;</p>
                            </td>
                        </tr>
                        <tr>
                            <td class="description1 aligncenter">
                                <p><a href="../contact/register-mysdi.aspx">Not Registered? Sign Up Here</a></p>
                            </td>
                        </tr>

                        <tr>
                            <td class="description1 aligncenter">
                                <p><a href="../contact/forgot-password.aspx">Forgot Password</a></p>
                            </td>
                        </tr>
                    </tbody>
                </table>
                <div class="clear"></div>
                <div class="spacer25"></div>
            </div>
        </div>
        <!-- InstanceEndEditable -->

        <!-- the sidebar -->
        <div class="clear"></div>

    </div>
    <!-- End content -->
</asp:Content>
