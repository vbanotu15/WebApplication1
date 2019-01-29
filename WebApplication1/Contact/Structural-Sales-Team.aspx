<%@ Page Title="" Language="C#" MasterPageFile="~/Master/Site.Master" AutoEventWireup="true" CodeBehind="Structural-Sales-Team.aspx.cs" Inherits="WebApplication1.Contact.Structural_Sales_Team" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <link rel="canonical" href="https://www.sdi-structural.com/contact/company-overview.aspx" />
    <link href='//fonts.googleapis.com/css?family=Montserrat:400,700|Lora:400,400italic,700,700italic|Muli:400,300italic,300' rel='stylesheet' type='text/css' />
    <script src="../JS/modernizr-custom.js"></script>
    <script>
        if (!Modernizr.svg) var i = document.getElementsByTagName("img"), j, y; for (j = i.length; j--;)y = i[j].src, y.match(/svg$/) && (i[j].src = y.slice(0, -3) + "png")</script>

    <script src="https://code.jquery.com/jquery-1.12.0.min.js"></script>
    <script src="https://code.jquery.com/jquery-migrate-1.2.1.min.js"></script>
    <link href="../Style/CSS/tier2-sdi-structural.css" rel="stylesheet" type="text/css" />
    <script>
        $(document).ready(function () {

            $('#menu-toggle').click(function () {
                $('#menu').toggleClass('open');
                e.preventDefault();
            });

        });
    </script>
    <style>
        .mainheader.structuralcontact {
            background-image: url(../images/headers/structural-contact-header.jpg);
        }

        .sidebar {
            width: 20.390070921985815%; /*230px ÷ 1128px*/
            float: left;
            background-color: #f7f7f7;
            -webkit-box-shadow: -10px 10px 10px rgba(0, 0, 0, 0.1);
            box-shadow: -10px 10px 10px rgba(0, 0, 0, 0.1);
            margin-top: 8px;
            padding-bottom: 15px;
        }

            .sidebar h5 {
                display: none;
                text-indent: -5000px;
            }

        .sideNav ul {
            margin-bottom: 25px;
        }

            .sideNav ul li a:link, .sideNav ul li a:visited, .sideNav ul li a:active {
                display: block;
                font-size: 14px; /*14px ÷ 16px*/
                line-height: 18px; /*18px ÷ 14px*/
                font-family: 'Montserrat', sans-serif;
                font-weight: 400;
                color: #313131; /*Dark Grey*/
                text-decoration: none;
                padding-top: 12px;
                padding-bottom: 12px;
                padding-left: 19.56521739130435%; /*45px ÷ 230px*/
                padding-right: 2.1739130434782608%; /*5px ÷ 230px*/
                border-bottom: 1px solid #d0cfcf;
                background-image: url(../images/tier2/arrow-grey.png);
                background-repeat: no-repeat;
                background-position: 20px 15px;
            }

            .sideNav ul li a:hover {
                color: #c02e39; /*red*/
            }

            .sideNav ul li a.current {
                color: #FFFFFF; /*Dark Grey*/
                background-image: url(../images/tier2/arrow-white.png);
                background-color: #c02e39; /*red*/
                cursor: default;
            }

        Items li p {
            line-height: 22px;
        }

        .Items li p.sub {
            font-size: 18px; /*18px ÷ 16px*/
            padding-bottom: 15px;
            padding-top: 0px;
            line-height: 20px;
        }

        .Items li img.square {
            width: 19.230769230769232%; /*130px ÷ 676px*/
            height: auto;
            border: #C7C7C7;
            border: 3px solid #CECECE;
            display: block;
            float: left;
            margin-right: 1.282051282051282%; /*10px ÷ 780px*/
        }

        .Items li img.wide {
            display: none;
        }

        .Items .copy {
            width: 72.8448275862069%; /*507px ÷ 696px*/
            float: left;
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
            background-color: #c02e39; /*red*/
            border-radius: 10px;
            background-image: url(../images/tier2/small-red-arrow.png);
            background-repeat: no-repeat;
            background-position: 0px 1px;
        }

        .Items li a:hover, .Items li a:focus {
            background-color: #B1B1B2;
        }

        .col2 {
            width: 60%; /*300px ÷ 850px*/
            float: none;
            clear: both;
        }

        .catalog a:link, .catalog a:visited, .catalog a:active {
            display: block;
            font-size: 16px; /*16px ÷ 16px*/
            font-family: 'Montserrat', sans-serif;
            font-weight: 400;
            color: #FFFFFF; /*Dark Grey*/
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

        .catalog a:hover {
            color: #979797;
        }

        .catalog a.current {
            color: #979797;
        }

        .mainheader.company {
            background-image: url(../images/headers/company-header.jpg);
        }

        #breadcrumbs ul li a:link, #breadcrumbs ul li a:active, #breadcrumbs ul li a:visited {
            display: block;
            color: #313131;
            text-decoration: none;
            background-image: url(../images/tier2/small-red-arrow.png);
            background-repeat: no-repeat;
            background-position: 0px 1px;
            padding-left: 25px;
        }

        select {
            background-color: #eee;
            font-size: 108%;
            width: 300px;
            height: 36px;
            border: 1px solid #ccc;
            webkit-border-radius: 6px;
            -moz-border-radius: 6px;
            border-radius: 6px
        }

        .auto-style1 {
            width: 372px;
            height: 31px;
        }

        .auto-style2 {
            text-align: left;
        }
    </style>
    <div class="mainheader structuralcontact clear">
        <h3 title="Contact">Contact</h3>
    </div>
    <!-- End Header Image -->

    <div class="clear"></div>
    <!-- the content -->
    <div class="content">
        <!-- InstanceBeginEditable name="Area1" -->
        <div class="RightColumn">

            <div id="breadcrumbs">
                <ul>
                    <li><a href="structural-contact-us.aspx">Contact Us</a></li>
                    <li><a href="structural-sales-team.aspx" class="current">Sales Team</a></li>
                </ul>
            </div>
            <div class="clear"></div>

            <div class="col1 margintop1">
                <h4 title="Sales Team">Sales Team</h4>

                <div class="spacer25"></div>
                <form>
                    <fieldset>
                        <table class="contact">
                            <tbody>
                                <tr>
                                    <td class="auto-style2">
                                        <select class="auto-style1" id="statesList">
                                            <option>Find my sales rep by state</option>
                                            <option value="AL">Alabama</option>
                                            <option value="AK">Alaska</option>
                                            <option value="AZ">Arizona</option>
                                            <option value="AR">Arkansas</option>
                                            <option value="CA">California</option>
                                            <option value="CO">Colorado</option>
                                            <option value="CT">Connecticut</option>
                                            <option value="DE">Delaware</option>
                                            <option value="DC">District of Columbia</option>
                                            <option value="FL">Florida</option>
                                            <option value="GA">Georgia</option>
                                            <option value="HI">Hawaii</option>
                                            <option value="ID">Idaho</option>
                                            <option value="IL">Illinois</option>
                                            <option value="IN">Indiana</option>
                                            <option value="IA">Iowa</option>
                                            <option value="KS">Kansas</option>
                                            <option value="KY">Kentucky</option>
                                            <option value="LA">Louisiana</option>
                                            <option value="ME">Maine</option>
                                            <option value="MD">Maryland</option>
                                            <option value="MA">Massachusetts</option>
                                            <option value="MI">Michigan</option>
                                            <option value="MN">Minnesota</option>
                                            <option value="MS">Mississippi</option>
                                            <option value="MO">Missouri</option>
                                            <option value="MT">Montana</option>
                                            <option value="NE">Nebraska</option>
                                            <option value="NV">Nevada</option>
                                            <option value="NH">New Hampshire</option>
                                            <option value="NJ">New Jersey</option>
                                            <option value="NM">New Mexico</option>
                                            <option value="NY">New York</option>
                                            <option value="NC">North Carolina</option>
                                            <option value="ND">North Dakota</option>
                                            <option value="OH">Ohio</option>
                                            <option value="OK">Oklahoma</option>
                                            <option value="OR">Oregon</option>
                                            <option value="PA">Pennsylvania</option>
                                            <option value="PR">Puerto Rico</option>
                                            <option value="RI">Rhode Island</option>
                                            <option value="SC">South Carolina</option>
                                            <option value="SD">South Dakota</option>
                                            <option value="TN">Tennessee</option>
                                            <option value="TX">Texas</option>
                                            <option value="UT">Utah</option>
                                            <option value="VT">Vermont</option>
                                            <option value="VA">Virginia</option>
                                            <option value="WA">Washington</option>
                                            <option value="WV">West Virginia</option>
                                            <option value="WI">Wisconsin</option>
                                            <option value="WY">Wyoming</option>
                                            <option value="CC">Alberta</option>
                                            <option value="CC">British Columbia</option>
                                            <option value="CC">Manitoba</option>
                                            <option value="CC">New Brunswick</option>
                                            <option value="CC">Newfoundland and Labrador</option>
                                            <option value="CC">Nova Scotia</option>
                                            <option value="CC">Ontario</option>
                                            <option value="CC">Prince Edward Island</option>
                                            <option value="CC">Quebec</option>
                                            <option value="CC">Saskatchewan</option>
                                        </select>
                                    </td>
                                </tr>
                            </tbody>
                        </table>
                    </fieldset>
                </form>
                <div class="clear"></div>
                <h5 title="Sales Manager" class="margintop1">Sales & Marketing Manager</h5>

                <img src="../images/staff/Rob-King.jpg" alt="Rob King" title="Rob King" class="leadership  margintop1" />
                <ul class="bullets  margintop1">
                    <li class="nobullet bold">Rob King</li>
                    <li class="nobullet">Sales & Marketing Manager</li>
                    <li class="nobullet bold"><a href="mailto: rob.king@steeldynamics.com">rob.king@steeldynamics.com</a></li>
                    <li class="nobullet"><a href="tel:+12606258824" class="tel">Phone: 260-625-8824</a></li>
                </ul>

                <div class="greybar"></div>

                <!--h5 title="Regional Sales" class="margintop2">Regional Sales</h5-->
                <h5 title="Product Manager" class="margintop2">Product Manager</h5>

                <img src="../images/staff/Robert-Carter.png" alt="Robert Carter" title="Robert Carter" class="leadership  margintop1" />
                <!--ul class="bullets margintop1" data-location="IN, MI"-->
                <ul class="bullets  margintop1">
                    <li class="nobullet bold">Robert Carter</li>
                    <li class="nobullet">Product Manager - Structural</li>
                    <!--li class="nobullet">IN, MI</li-->
                    <li class="nobullet bold"><a href="mailto:robert.carter@steeldynamics.com">robert.carter@steeldynamics.com</a></li>
                    <li class="nobullet"><a href="tel:+12604137130" class="tel">Phone: 260-413-7130</a></li>
                </ul>

                <div class="greybar"></div>

                <h5 title="Regional Sales" class="margintop2">Regional Sales</h5>

                <img src="../images/staff/Dave-Tokos.png" alt="Dave Tokos" title="Dave Tokos" class="leadership  margintop1" />
                <ul class="bullets margintop1">
                    <li class="nobullet bold">Dave Tokos</li>
                    <li class="nobullet">Manager of Strategic Sales</li>
                    <li class="nobullet">H-Pile and Semi-Finished</li>
                    <li class="nobullet bold"><a href="mailto:dave.tokos@steeldynamics.com">dave.tokos@steeldynamics.com</a></li>
                    <li class="nobullet"><a href="tel:+12604030843" class="tel">Phone: 260-403-0843</a></li>
                </ul>

                <div class="spacer25 clear"></div>
                <!--div class="spacer25 clear"></div-->

                <img src="../images/staff/Johnny-Brewer.png" alt="Johnny Brewer" title="Johnny Brewer" class="leadership  margintop1" />
                <ul class="bullets margintop1" data-location="FL, LA, MS, AL, GA, SC, NC">
                    <li class="nobullet bold">Johnny Brewer</li>
                    <li class="nobullet">Regional Sales Manager</li>
                    <li class="nobullet">FL, LA, MS, AL, GA, SC, NC</li>
                    <li class="nobullet bold"><a href="mailto:johnny.brewer@steeldynamics.com">johnny.brewer@steeldynamics.com</a></li>
                    <li class="nobullet"><a href="tel:+18137160262" class="tel">Phone: 813-716-0262</a></li>
                </ul>

                <div class="spacer25 clear"></div>

                <img src="../images/staff/Bob-Barrick.png" alt="Bob Barrick" title="Bob Barrick" class="leadership  margintop1" />
                <ul class="bullets margintop1" data-location="KY, TN, OH, WV, VA">
                    <li class="nobullet bold">Bob Barrick</li>
                    <li class="nobullet">Regional Sales Manager</li>
                    <li class="nobullet">KY, TN, OH, WV, VA, NC</li>
                    <li class="nobullet bold"><a href="mailto:bob.barrick@steeldynamics.com">bob.barrick@steeldynamics.com</a></li>
                    <li class="nobullet"><a href="tel:+18436210818" class="tel">Phone: 843-621-0818</a></li>
                </ul>

                <div class="spacer25 clear"></div>

                <img src="../images/staff/Ben-Parks.png" alt="Ben Parks" title="Ben Parks" class="leadership  margintop1" />
                <ul class="bullets margintop1" data-location="CC, IL, WI, IA, MN, NE, ND, SD">
                    <li class="nobullet bold">Ben Parks</li>
                    <li class="nobullet">Regional Sales Manager</li>
                    <li class="nobullet">Canada, IL, WI, IA, MN, NE, ND, SD</li>
                    <li class="nobullet bold"><a href="mailto:ben.parks@steeldynamics.com">ben.parks@steeldynamics.com</a></li>
                    <li class="nobullet"><a href="tel:+12604426506" class="tel">Phone: 260-442-6506</a></li>
                </ul>


                <div class="greybar"></div>

                <h5 title="Sales and Marketing Representatives – Mexico and Exports" class="margintop2">Sales and Marketing Representatives – Mexico and Exports</h5>

                <img src="../images/staff/Roxy-Hagans.png" alt="Roxy Hagans" title="Roxy Hagans" class="leadership  margintop1" />

                <ul class="bullets margintop1">
                    <li class="nobullet bold">Roxy Hagans</li>
                    <li class="nobullet">Marketing Representative</li>
                    <li class="nobullet bold"><a href="mailto:roxy.hagans@steeldynamics.com">roxy.hagans@steeldynamics.com</a></li>
                    <li class="nobullet"><a href="tel:+18667408721" class="tel">Phone: 866-740-8721</a></li>
                </ul>

                <div class="spacer25 clear"></div>

                <img src="../images/staff/Kelly-Penrod.png" alt="Kelly Penrod" title="Kelly Penrod" class="leadership  margintop1" />

                <ul class="bullets margintop1">
                    <li class="nobullet bold">Kelly Penrod</li>
                    <li class="nobullet">Marketing Representative</li>
                    <li class="nobullet bold"><a href="mailto:kelly.penrod@steeldynamics.com">kelly.penrod@steeldynamics.com</a></li>
                    <li class="nobullet"><a href="tel:+18667408720" class="tel">Phone: 866-740-8720</a></li>
                </ul>

                <div class="greybar"></div>

                <h5 title="Customer Service Representatives" class="margintop2">Customer Service Representatives</h5>

                <img src="../images/staff/Ann-Frank.png" alt="Ann Frank" title="Ann Frank" class="leadership  margintop1" />
                <ul class="bullets margintop1">
                    <li class="nobullet bold">Ann Frank</li>
                    <li class="nobullet">Customer Service Representative</li>
                    <li class="nobullet bold"><a href="mailto:ann.frank@steeldynamics.com">ann.frank@steeldynamics.com</a></li>
                    <li class="nobullet"><a href="tel:+18667408715" class="tel">Phone: 866-740-8715</a></li>
                </ul>

                <div class="spacer25 clear"></div>

                <img src="../images/staff/Becky-Carder.png" alt="Becky Carder" title="Becky Carder" class="leadership  margintop1" />
                <ul class="bullets margintop1">
                    <li class="nobullet bold">Becky Carder</li>
                    <li class="nobullet">Customer Service Representative</li>
                    <li class="nobullet bold"><a href="mailto:becky.carder@steeldynamics.com">becky.carder@steeldynamics.com</a></li>
                    <li class="nobullet"><a href="tel:+18666793168" class="tel">Phone: 866-679-3168</a></li>
                </ul>

                <div class="spacer25 clear"></div>

                <img src="../images/staff/Nicole-Happel.jpg" alt="Nicole Happel" title="Nicole Happel" class="leadership  margintop1" />
                <ul class="bullets margintop1">
                    <li class="nobullet bold">Nicole Happel</li>
                    <li class="nobullet">Customer Service Representative</li>
                    <li class="nobullet bold"><a href="mailto:nicole.happel@steeldynamics.com">nicole.happel@steeldynamics.com</a></li>
                    <li class="nobullet"><a href="tel:+18667408714" class="tel">Phone: 866-740-8714</a></li>
                </ul>

                <div class="spacer25 clear"></div>
                <img src="../images/staff/Sandy-Swing.png" alt="Sandy Swing" title="Sandy Swing" class="leadership  margintop1" />

                <ul class="bullets margintop1">
                    <li class="nobullet bold">Sandy Swing</li>
                    <li class="nobullet">Customer Service Representative</li>
                    <li class="nobullet bold"><a href="mailto:sandy.swing@steeldynamics.com">sandy.swing@steeldynamics.com</a></li>
                    <li class="nobullet"><a href="tel:+18667408717" class="tel">Phone: 866-740-8717</a></li>
                </ul>

                <div class="greybar"></div>

                <h5 title="West Region" class="margintop2" data-location="OR, WA, ID, MT, AK, AZ, CA, NV, UT, CO, WY, NM, HI">West Region<br>
                    OR, WA, ID, MT, AK, AZ, CA, NV, UT, CO, WY, NM, HI</h5>

                <ul class="bullets margintop1">
                    <li class="nobullet bold">Western Sales Associates LLC</li>
                </ul>


                <img src="../images/staff/Colby-Ramaker.png" alt="Colby Ramaker" title="Colby Ramaker" class="leadership  margintop1" />
                <ul class="bullets margintop1">
                    <li class="nobullet bold">Colby Ramaker</li>
                    <li class="nobullet">Customer Service Representative</li>
                    <li class="nobullet bold"><a href="mailto:colbyramaker@cohosteelsales.com">colbyramaker@cohosteelsales.com</a></li>
                    <li class="nobullet"><a href="tel:+1503-384-9510" class="tel">Phone: 503-384-9510</a></li>
                </ul>

                <div class="greybar"></div>

                <h5 title="Northeast Region" class="margintop2" data-location="PA, NY, MD, NJ, NH, ME, MA, CT, RI, DE">Northeast Region<br>
                    PA, NY, MD, NJ, NH, ME, MA, CT, RI, DE</h5>

                <ul class="bullets margintop1">
                    <li class="nobullet bold">Responsive Marketing, Inc.</li>
                    <li class="nobullet"><a href="tel:+16104560985" class="tel">Phone: 610-456-09851</a></li>
                </ul>


                <div class="spacer25 clear"></div>


                <img src="../images/staff/ken-rampolla.jpg" alt="Ken Rampolla" title="Ken Rampolla" class="leadership  margintop1" />
                <ul class="bullets margintop1">
                    <li class="nobullet bold">Ken Rampolla</li>
                    <li class="nobullet bold"><a href="mailto:k.rampolla@rmi-steel.com">k.rampolla@rmi-steel.com</a></li>
                </ul>

                <div class="spacer25 clear"></div>

                <img src="../images/staff/Kenny-Rampolla.png" alt="Kenny Rampolla" title="Kenny Rampolla" class="leadership  margintop1" />
                <ul class="bullets margintop1">
                    <li class="nobullet bold">Kenny Rampolla</li>
                    <li class="nobullet bold"><a href="mailto:kt.rampolla@rmi-steel.com">kt.rampolla@rmi-steel.com</a></li>
                </ul>

                <div class="spacer25 clear"></div>

                <img src="../images/staff/Liz-Lentis.jpg" alt="Liz Lentis" title="Liz Lentis" class="leadership  margintop1" />
                <ul class="bullets margintop1">
                    <li class="nobullet bold">Liz Lentis</li>
                    <li class="nobullet bold"><a href="mailto:l.lentis@rmi-steel.com">l.lentis@rmi-steel.com</a></li>
                </ul>

                <div class="spacer25 clear"></div>

                <img src="../images/staff/Penn-Whitlow.png" alt="Penn Whitlow" title="Penn Whitlow" class="leadership  margintop1" />
                <ul class="bullets margintop1">
                    <li class="nobullet bold">Penn Whitlow</li>
                    <li class="nobullet bold"><a href="mailto:p.whitlow@rmi-steel.com">p.whitlow@rmi-steel.com</a></li>
                </ul>

                <div class="spacer25 clear"></div>

                <img src="../images/staff/Ryan-Angst.jpg" alt="Ryan Angst" title="Ryan Angst" class="leadership  margintop1" />
                <ul class="bullets margintop1">
                    <li class="nobullet bold">Ryan Angst</li>
                    <li class="nobullet bold"><a href="mailto:r.angst@rmi-steel.com">r.angst@rmi-steel.com</a></li>
                </ul>

                <div class="greybar"></div>

                <h5 title="Central Region" class="margintop2" data-location="KS, MO, AR, OK , TX">Central Region
                    <br>
                    KS, MO, AR, OK , TX</h5>

                <ul class="bullets margintop1">
                    <li class="nobullet bold">Kirkwood Metal Sales, LLC.</li>
                </ul>

                <img src="../images/staff/Ben-Bishop.jpg" alt="Ben Bishop" title="Ben Bishop" class="leadership  margintop1" />
                <ul class="bullets margintop1">
                    <li class="nobullet bold">Ben Bishop</li>
                    <li class="nobullet bold"><a href="mailto:ben.bishop@steeldynamics.com">ben.bishop@steeldynamics.com</a></li>
                    <li class="nobullet bold"><a href="mailto:benbishop@emssteel.com">benbishop@emssteel.com</a></li>
                    <li class="nobullet"><a href="tel:+14195666800" class="tel">Phone: 419-566-6800</a></li>
                </ul>

                <div class="spacer25 clear"></div>

                <img src="../images/staff/Craig-Weiss.png" alt="Craig Weiss" title="Timothy Semonich" class="leadership  margintop1" />
                <ul class="bullets margintop1">
                    <li class="nobullet bold">Craig Weiss</li>
                    <li class="nobullet">General Manager</li>
                    <li class="nobullet bold"><a href="mailto:axlegto@aol.com">axlegto@aol.com</a></li>
                    <li class="nobullet"><a href="tel:+13149091459" class="tel">Phone: 314-909-1459</a></li>
                </ul>


                <div class="spacer25 clear"></div>

                <img src="../images/staff/Keith-Padgett.png" alt="Keith Padgett" title="Keith Padgett" class="leadership  margintop1" />
                <ul class="bullets margintop2">
                    <li class="nobullet bold">Keith Padgett</li>
                    <li class="nobullet">Western Sales Manager</li>
                    <li class="nobullet bold"><a href="mailto:keithpadgett@earthlink.net">keithpadgett@earthlink.net</a></li>
                    <li class="nobullet"><a href="tel:+19134611440" class="tel">Phone: 913-461-1440</a></li>
                </ul>


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
                    <li><a href="structural-contact-us.aspx" title="Contact Us" class="">Contact Us</a></li>
                    <li><a href="structural-sales-team.aspx" title="Sales Team" class="current">Sales Team</a></li>
                    <li><a href="structural-request-quote.aspx" title="Request a Quote" class="">Request a Quote</a></li>
                    <li><a href="register-mysdi.aspx" title="Register for MySDI<" class="">Register for MySDI</a></li>
                    <li><a href="structural-driving-directions.aspx" title="Driving Directions" class="">Driving Directions</a></li>
                    <li><a href="structural-careers.aspx" title="Careers" class="">Careers</a></li>
                    <li><a href="structural-facilities.aspx" title="SDI Facilities" class="">SDI Facilities</a></li>
                </ul>
            </div>
            <div class="catalog">
                <a href="../resources/structural-product-guides.aspx" title="Product Guides">Product Guides</a>
            </div>

            <div class="extras">
                <ul>
                    Quick Links:
                    <li><a href="../resources/price-list.aspx">Price List</a></li>
                    <li><a href="../resources/inventory-list.aspx">Inventory List</a></li>
                    <li><a href="../resources/rolling-schedule.aspx">Rolling Schedule</a></li>
                    <li><a href="../resources/bundle-chart.aspx">Bundle Chart</a></li>
                    <li><a href="../resources/freight-rate.aspx">Get Freight Rate</a></li>
                </ul>
            </div>
        </aside>
        <div class="clear"></div>

    </div>

    <!-- script for State Scroll -->
    <!-- InstanceBeginEditable name="Scripts" -->
    <script>
        var locations = {};

        $('[data-location]').each(function () {
            var $node = $(this);
            var locs = $node.attr('data-location').split(', ');
            locs.forEach(function (item, index) {
                item = $.trim(item);
                locations[item] = $node;
            });
        });

        $('#statesList').on('change', function () {
            var location = $(this).val();
            if (locations[location]) {
                var scrollTop = locations[location].offset().top;
                $('html, body').animate({ 'scrollTop': scrollTop }, 500);
            }
        });

    </script>
    <!-- End content -->
</asp:Content>
