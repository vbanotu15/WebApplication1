<%@ Page Title="" Language="C#" MasterPageFile="~/Master/Site.Master" AutoEventWireup="true" CodeBehind="Structural-Driving-Directions.aspx.cs" Inherits="WebApplication1.Contact.Structural_Driving_Directions" %>

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

        table.contact select.custom option {
            margin-bottom: 10px;
        }

        table.contact td.paddingtop {
            padding-top: 20px;
        }

        table.contact.full, table.contact2.full {
            width: 100%;
        }

            table.contact.full.spacing {
                border-collapse: separate;
                border-spacing: 25px 5px;
            }

        table.contact p, table.contact2 p {
            font-family: 'Montserrat', sans-serif !important;
            font-weight: 400 !important;
            font-size: 16px;
            line-height: 28px;
            color: #424242 !important;
            padding-bottom: 0px;
        }

        table.contact input.textfield1 {
            font-family: 'Montserrat', sans-serif !important;
            font-weight: 400 !important;
            width: 100%;
            height: 40px;
            padding-top: 5px;
            padding-right: 5px; /*5px Ã· 330px*/
            padding-left: 5px; /*5px Ã· 330px*/
            padding-bottom: 5px;
            font-size: 16px; /*16px Ã· 16px*/
            color: #424242 !important;
            border: 1px solid #424242;
            background-color: #EAEAEA;
        }


        table.contact input.textfield2 {
            font-family: 'Montserrat', sans-serif !important;
            font-weight: 400 !important;
            width: 96%;
            height: 40px;
            padding-top: 5px;
            padding-right: 5px; /*5px Ã· 330px*/
            padding-left: 5px; /*5px Ã· 330px*/
            padding-bottom: 5px;
            font-size: 16px; /*16px Ã· 16px*/
            color: #424242 !important;
            border: 1px solid #424242;
            background-color: #EAEAEA;
        }

        .sideNav ul li a:link, .sideNav ul li a:visited, .sideNav ul li a:active {
            background-image: url(../../images/tier2/arrow-grey.png);
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
            background-image: url(../../images/tier2/download-arrow.gif);
            background-repeat: no-repeat;
            background-position: left top;
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

        .more a:link, .more a:visited, .more a:active {
            font-family: 'Montserrat', sans-serif;
            font-weight: 400;
            font-size: 0.875em; /*14px ÷ 16px*/
            color: #c02e39;
            display: block;
            cursor: pointer;
            background-color: none;
            padding-top: 10px;
            padding-left: 25px;
            padding-bottom: 10px;
            padding-right: 10px;
            text-decoration: none;
            background-image: url(../../images/home/small-red-arrow.png);
            background-position: left 10px;
            background-repeat: no-repeat;
        }

        #gmap_canvas img {
            max-width: none !important;
            background: none !important
        }

        #getDirections {
            font-family: Arial, Helvetica, sans-serif;
            font-size: 16px;
            color: #FFFFFF !important;
            width: 150px;
            height: 44px;
            background-color: #424242;
            margin-top: 10px;
            border: none;
            -webkit-appearance: none;
            -moz-border-radius: 10px;
            -webkit-border-radius: 10px;
            border-radius: 10px;
            -webkit-box-shadow: -8px 8px 15px 0 #BBBBBE;
            box-shadow: -8px 8px 15px 0 #BBBBBE;
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
                    <li><a href="structural-driving-directions.aspx" class="current">Driving Directions</a></li>
                </ul>
            </div>
            <div class="clear"></div>

            <div class="col1 margintop1">
                <h4 title="Driving Directions">Driving Directions</h4>

                <div class="col1 margintop1">
                    <table class="contact full">
                        <tbody>
                            <tr>
                                <td>
                                    <table class="profession B">
                                        <tbody>
                                            <tr>
                                                <td class="small">
                                                    <input type="radio" name="destination" id="passenger" value="41.123904,-85.357067" checked="checked"></td>
                                                <td>
                                                    <p>
                                                        <label for="passenger">Passenger</label>
                                                    </p>
                                                </td>
                                            </tr>
                                        </tbody>
                                    </table>

                                    <table class="profession B">
                                        <tbody>
                                            <tr>
                                                <td class="small">
                                                    <input type="radio" name="destination" id="semi-truck" value="41.121942,-85.337684"></td>
                                                <td>
                                                    <p>
                                                        <label for="semi-truck">Semi-Truck</label>
                                                    </p>
                                                </td>
                                            </tr>
                                        </tbody>
                                    </table>

                                </td>
                            </tr>
                            <tr>
                                <td>

                                    <div class="col1 margintop1" id="passenger-address">
                                        <!-- Passenger-->
                                        <p>Steel Dynamics Structural and Rail Division</p>
                                        <p>2601 S County Road 700 E</p>
                                        <p>Columbia City, Indiana 46725</p>
                                    </div>


                                    <div class="col1 margintop1" id="semi-truck-address" style="display: none">
                                        <!--Semi Truck-->
                                        <p>Steel Dynamics Structural and Rail Division</p>
                                        <p>2700 S 800 E</p>
                                        <p>Columbia City, Indiana 46725</p>
                                    </div>

                                </td>
                            </tr>
                            <tr>
                                <td class="description1">
                                    <input id="startingAddress" name="startingAddress" type="text" class="textfield2" placeholder="Starting Address" required="required" />
                                    <input type="button" value="go" id="getDirections" />
                                </td>
                            </tr>
                        </tbody>
                    </table>
                </div>
                <div class="clear spacer25"></div>
                <!-- AIzaSyAAbSbk2mOM6biy1AhxJBTAk83wsgkfmMk -->
                <script src='https://maps.googleapis.com/maps/api/js?v=3.exp&key=AIzaSyBy6qJ5aoGBxO05hnNCuY0kMsLIQJoj99w'></script>
                <div style='overflow: hidden; height: 300px; width: 100%;'>
                    <div id='gmap_canvas' style='height: 300px; width: 100%;'></div>
                    <div><small><a href="http://embedgooglemaps.com">embed google maps</a></small></div>
                    <div><small><a href="https://termsofusegenerator.net">terms of use generator</a></small></div>
                </div>
                <div id="drivingDirections"></div>

                <!--
                <table class="One B desktop margintop2">
                    <tbody>
                        <tr>
                            <td class="grey bottom smaller">
                                <div class="markers red"></div>
                            </td>
                            <td class="grey bottom large">
                                <p>Chicago, IL 60623, USA</p>
                            </td>
                            <td class="grey bottom smaller"></td>
                        </tr>
                        <tr>
                            <td class="bottom smaller"></td>
                            <td class="bottom large">
                                <p>Head northwest on Adams St toward Plainfield Rd</p>
                            </td>
                            <td class="bottom small">
                                <p>52ft</p>
                            </td>
                        </tr>
                        <tr>
                            <td class="bottom smaller">
                                <div class="directions right"></div>
                            </td>
                            <td class="bottom large">
                                <p>Turn right onto Plainfield Rd</p>
                            </td>
                            <td class="bottom small">
                                <p>0.2mi</p>
                            </td>
                        </tr>
                        <tr>
                            <td class="bottom smaller"></td>
                            <td class="bottom large">
                                <p>Take exit 277b to merge onto I-294 S toward Indiana Partial toll road</p>
                            </td>
                            <td class="bottom small">
                                <p>24.2mi</p>
                            </td>
                        </tr>
                        <tr>
                            <td class="grey bottom smaller">
                                <div class="markers green"></div>
                            </td>
                            <td class="grey bottom large">
                                <p>2622 S 700 E, Columbia City, IN 46725, USA</p>
                            </td>
                            <td class="grey bottom smaller"></td>
                        </tr>
                    </tbody>
                </table>
             -->
                <div class="clear"></div>


            </div>
            <!--End col1-->

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
                    <li><a href="structural-sales-team.aspx" title="Sales Team" class="">Sales Team</a></li>
                    <li><a href="structural-request-quote.aspx" title="Request a Quote" class="">Request a Quote</a></li>
                    <li><a href="register-mysdi.aspx" title="Register for MySDI<" class="">Register for MySDI</a></li>
                    <li><a href="structural-driving-directions.aspx" title="Driving Directions" class="current">Driving Directions</a></li>
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
    <!-- End content -->
    <script>
        $(document).ready(function () {

            $('#menu-toggle').click(function () {
                $('#menu').toggleClass('open');
                e.preventDefault();
            });

        });
</script>

    <!--Add scripts here-->
    <!-- InstanceBeginEditable name="Scripts" -->

    <script>
        $('#getDirections').on('click', function (e) {
            e.preventDefault();
            calcRoute();
        });

        var directionsDisplay;
        var directionsService = new google.maps.DirectionsService();
        var map = null;
        var $startingAddress = $('#startingAddress');

        var truckMarker = {};
        var passengerMarker = {};

        var infoWindow = {};

        var passengerContent = '<strong>Steel Dynamics Structural and Rail Division</strong><br>2601 S County Road 700 E<br/>Columbia City, Indiana 46725<br>';
        var truckContent = '<strong>Steel Dynamics Structural and Rail Division</strong><br>2700 S 800 E<br/>Columbia City, Indiana 46725<br>';

        google.maps.event.addDomListener(window, 'load', initialize);
        google.maps.visualRefresh = true;

        function initialize() {
            directionsDisplay = new google.maps.DirectionsRenderer();
            var SRD = new google.maps.LatLng(41.121328, -85.347297);
            map = new google.maps.Map(document.getElementById('gmap_canvas'), {
                zoom: 10,
                // used to be 41.265755,-85.53992299999999
                center: new google.maps.LatLng(41.123904, -85.357067),
                mapTypeId: google.maps.MapTypeId.ROADMAP
            });
            directionsDisplay.setMap(map);
            directionsDisplay.setPanel(document.getElementById("drivingDirections"));

            // passenger used to be 41.265755,-85.53992299999999
            passengerMarker = new google.maps.Marker({
                'map': map,
                'position': new google.maps.LatLng(41.123904, -85.357067)
            });

            truckMarker = new google.maps.Marker({
                'map': map,
                'position': new google.maps.LatLng(41.121942, -85.337684),
                'visible': false
            });

            infoWindow = new google.maps.InfoWindow({ content: passengerContent });

            /*google.maps.event.addListener(marker, 'click', function(){
             infoWindow.open(map,passengerMarker);
            });*/

            infoWindow.open(map, passengerMarker);
        }



        /*
         "41.123904,-85.357067" // passenger
         "41.121942,-85.337684" // truck
        * */


        function calcRoute() {
            var start = $startingAddress.val();
            if (start == '') {
                alert('Please indicate your starting address');
                $startingAddress.focus();
                return false;
            }

            var end = $('[name="destination"]:checked').val();

            if (start == "" || end == "") {
                return;
            }

            var request = {
                'origin': start,
                'destination': end,
                'travelMode': google.maps.DirectionsTravelMode.DRIVING
            };

            map.setMapTypeId(google.maps.MapTypeId.ROADMAP);

            directionsService.route(request, function (response, status) {
                console.log('route');
                if (status == google.maps.DirectionsStatus.OK) {
                    console.log('resolve');
                    directionsDisplay.setDirections(response);
                }
            });

            //document.getElementById("print_lbl").style.visibility = "visible";
        }

        $startingAddress.on('keydown', function (e) {
            if (e.which === 13 && $startingAddress.val() !== '') {
                calcRoute();
            }
        });

        var $passengerAddress = $('#passenger-address');
        var $semiTruckAddress = $('#semi-truck-address');

        $('[name="destination"]').on('click', function () {
            if ($(this).attr('id') === 'passenger') {
                $passengerAddress.show();
                $semiTruckAddress.hide();

                passengerMarker.setVisible(true);
                truckMarker.setVisible(false);

                infoWindow.close();
                infoWindow.setContent(passengerContent);
                infoWindow.open(map, passengerMarker);

                /*google.maps.event.addListener(marker, 'click', function(){
                 infoWindow.open(map,passengerMarker);
                 });*/


            }
            else {
                $passengerAddress.hide();
                $semiTruckAddress.show();

                truckMarker.setVisible(true);
                passengerMarker.setVisible(false);

                infoWindow.close();
                infoWindow.setContent(truckContent);
                infoWindow.open(map, truckMarker);
            }
        });

        google.maps.event.addDomListener(window, 'load', initialize);
</script>

</asp:Content>
