<%@ Page Title="Contact" Language="C#" MasterPageFile="~/Master/Site.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="WebApplication1.Contact" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <link href="..//Style/css/tier2-sdi-structural.css" rel="stylesheet" type="text/css">
    <link href="..//Style/css/form-sdi.css" rel="stylesheet" type="text/css">
    <!--Add scripts here-->
    <script>
      <!--Modernizer-->
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
    <div class="clear"></div>
    <!-- the content -->
    <div class="content">
        <!-- InstanceBeginEditable name="Area1" -->
        <div class="RightColumn">


            <div class="clear"></div>

            <div class="col1 margintop1">
                <h4 title="Contact Us">Contact Us</h4>

                <ul class="bullets margintop2">
                    <li class="nobullet bold">Steel Dynamics Structural and Rail Division</li>
                    <li class="nobullet">2601 S County Road 700 E</li>
                    <li class="nobullet">Columbia City, Indiana 46725</li>
                </ul>

                <ul class="bullets margintop1">
                    <li class="nobullet bold">Toll Free: <a href="tel:+18667408700" class="tel" id="bold">866-740-8700</a></li>
                    <li class="nobullet"><a href="tel:+12606258100" class="tel">Main: 260-625-8100</a></li>
                    <li class="nobullet">Fax: 260-625-8770</li>
                </ul>



                <div class="spacer25 clear"></div>


                <table class="contact">
                    <tbody>
                        <tr>
                            <td class="description1">
                                <p>*All Fields Required:</p>
                            </td>
                        </tr>
                        <tr>
                            <td class="description2">
                                <input name="FirstName" type="text" class="textfield1" placeholder="*First Name:" required="required" />
                                <span class="hp">
                                    <input name="MiddleName" type="text" value="" /></span>
                            </td>
                        </tr>
                        <tr>
                            <td class="description2">
                                <input name="LastName" type="text" class="textfield1" placeholder="*Last Name:" required="required" />
                            </td>
                        </tr>
                        <tr>
                            <td class="description2">
                                <input name="Title" type="text" class="textfield1" placeholder="*Title:" required="required" />
                            </td>
                        </tr>
                        <tr>
                            <td class="description2">
                                <input name="Email" type="email" class="textfield1" placeholder="*Email:" required="required" />
                            </td>
                        </tr>
                        <tr>
                            <td class="description2">
                                <input name="Phone" type="tel" class="textfield1" placeholder="*Phone:" required="required" />
                            </td>
                        </tr>
                        <tr>
                            <td class="description2">
                                <input name="Company" type="text" class="textfield1" placeholder="*Company:" required="required" />
                            </td>
                        </tr>
                        <tr>
                            <td>&nbsp;</td>
                        </tr>
                    </tbody>
                </table>
                <div class="clear"></div>
                <div class="spacer1"></div>

                <table class="contact2">
                    <tbody>
                        <tr>
                            <td>
                                <textarea name="Message" class="message1" placeholder="*Message:"></textarea></td>
                        </tr>
                    </tbody>
                </table>
                <div class="clear"></div>
                <div class="spacer1"></div>
                <table class="contact2">
                    <tbody>
                        <tr>
                            <td class="description2">
                                <input name="submit" type="submit" class="submit" value="Submit"></td>
                        </tr>
                    </tbody>
                </table>
                </form>
            </div>

            <div class="clear spacer25"></div>

            <div class="top"><a href="#top">TOP</a></div>
        </div>
        <!-- InstanceEndEditable -->

        <!-- the sidebar -->
        <aside class="sidebar">
            <h5>Side Navigation</h5>
            <div class="sideNav">
                <ul>
                    <li><a href="structural-contact-us.php" title="Contact Us" class="current">Contact Us</a></li>
                    <li><a href="structural-sales-team.html" title="Sales Team" class="">Sales Team</a></li>
                    <li><a href="structural-request-quote.php" title="Request a Quote" class="">Request a Quote</a></li>
                    <li><a href="register-mysdi.php" title="Register for MySDI<" class="">Register for MySDI</a></li>
                    <li><a href="structural-driving-directions.html" title="Driving Directions" class="">Driving Directions</a></li>
                    <li><a href="structural-careers.html" title="Careers" class="">Careers</a></li>
                    <li><a href="structural-facilities.html" title="SDI Facilities" class="">SDI Facilities</a></li>
                </ul>
            </div>
            <div class="catalog">
                <a href="../resources/structural-product-guides.html" title="Product Guides">Product Guides</a>
            </div>

            <div class="extras">
                <ul>
                    Quick Links:
                    <li><a href="../resources/price-list.php">Price List</a></li>
                    <li><a href="../resources/inventory-list.php">Inventory List</a></li>
                    <li><a href="../resources/rolling-schedule.php">Rolling Schedule</a></li>
                    <li><a href="../resources/bundle-chart.html">Bundle Chart</a></li>
                    <li><a href="../resources/freight-rate.php">Get Freight Rate</a></li>
                </ul>
            </div>
        </aside>
        <div class="clear"></div>

    </div>
    <!-- End content -->

        <!-- InstanceBeginEditable name="Scripts" -->
        <div></div>
</asp:Content>
