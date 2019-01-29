<%@ Page Title="" Language="C#" MasterPageFile="~/Master/About.Master" AutoEventWireup="true" CodeBehind="company-overview1.aspx.cs" Inherits="WebApplication1.About.company_overview1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <style>
          .mainheader.company {
            background-image: url(../images/headers/company-header.jpg);
        }
        body {
    background-image: url(../images/body.jpg);
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
    </style>
    
    <div class="col1 margintop1">
        <h4 title="About Steel Dynamics Structural and Rail Division">About Steel Dynamics Structural and Rail Division</h4>
        <p>Commissioned in 2002 and located in Columbia City, Indiana, we are SDI's third-largest steel operation and proudly serve the structural and rail markets.</p>
        <p>Our structural products are used primarily in construction: commercial, industrial, and institutional buildings including skyscrapers, hospitals, airport terminals, stadiums, parking garages, office buildings, and distribution centers. They are also used in bridges, energy projects such as bio-diesel and ethanol plants, and in the manufacturing of truck, trailer, and RV frames.</p>
        <p>In 2009, we entered the rail market and have never looked back, shipping our one millionth ton of rail in 2015. Due to our unique capabilities, we are the only mill in the Western Hemisphere that produces rail in lengths of 320 feet. Our rail products are used in railway track by Class 1 railroads, short and commuter lines, and industrial plants. With the addition of a state-of-the-art SDI Research and Development Center, we are actively pursuing product development initiatives to bring the next generation of quality rail products to market.</p>
    </div>
    <div class="col1 one">
        <div class="Items">

            <ul>
                <li>
                    <img src="../images/eaf-charging-square.jpg" alt="EAF Charging" title="EAF Charging" class="square">
                    <img src="../images/eaf-charging-wide.jpg" alt="EAF Charging" title="EAF Charging" class="wide">
                    <div class="copy">
                        <p class="sub">Capabilities</p>
                        <p>Discover how our mill is uniquely designed to meet your steel product needs, resulting in optimized project cost and performance.</p>
                        <a href="capabilities.aspx">Learn more</a>
                    </div>
                    <div class="clear"></div>
                </li>

                <li>
                    <img src="../images/management-square.jpg" alt="Our Management" title="Our Management" class="square">
                    <img src="../images/management-wide.jpg" alt="Our Management" title="Our Management" class="wide">
                    <div class="copy">
                        <p class="sub">Our Management</p>
                        <p>We value your business and are determined to provide you with the best products, with the best service and support. Meet the people who help lead our organization to deliver on that promise.</p>
                        <a href="management.aspx">Learn more</a>
                    </div>
                    <div class="clear"></div>
                </li>

                <li>
                    <img src="../images/safety-square.jpg" alt="Safety" title="Safety" class="square">
                    <img src="../images/safety-wide.jpg" alt="Safety" title="Safety" class="wide">
                    <div class="copy">
                        <p class="sub">Safety</p>
                        <p>We have a company-wide commitment to safety and continuously strive to ensure the safety of our people throughout our division.</p>
                        <a href="safety.aspx">Learn more</a>
                    </div>
                    <div class="clear"></div>
                </li>

                <li>
                    <img src="../images/environment-square.jpg" alt="Environment" title="Environment" class="square">
                    <img src="../images/environment-wide.jpg" alt="Environment" title="Environment" class="wide">
                    <div class="copy">
                        <p class="sub">Environment</p>
                        <p>Steel Dynamics is one the largest steel recyclers in North America, sourcing 96% of our scrap from within a 500 mile radius. Our products can be used toward LEED credits.</p>
                        <a href="environment.aspx">Learn more</a>
                    </div>
                    <div class="clear"></div>
                </li>

                <li>
                    <img src="../images/culture-2-mill-workers-square.jpg" alt="Culture" title="Culture" class="square">
                    <img src="../images/culture-2-mill-workers-wide.jpg" alt="Culture" title="Culture" class="wide">
                    <div class="copy">
                        <p class="sub">Culture</p>
                        <p>We are proud of our people and of the ways we conduct ourselves as we strive to make a difference in the lives of our customers.</p>
                        <a href="culture.aspx">Learn more</a>
                    </div>
                    <div class="clear"></div>
                </li>

                <li>
                    <img src="../images/culture-square.jpg" alt="Community" title="Community" class="square">
                    <img src="../images/culture-wide.jpg" alt="Community" title="Community" class="wide">
                    <div class="copy">
                        <p class="sub">Community</p>
                        <p>As a leading employer and contributor to the northeastern Indiana economy, we believe in vitally supporting the communities where we work and live.</p>
                        <a href="community.aspx">Learn more</a>
                    </div>
                    <div class="clear"></div>
                </li>

                <li>
                    <img src="../images/video-square.jpg" alt="Community" title="Community" class="square">
                    <img src="../images/video-wide.jpg" alt="Community" title="Community" class="wide">
                    <div class="copy">
                        <p class="sub">Structural Products Video</p>
                        <a href="structural-products-video.aspx">Learn More</a>
                    </div>
                    <div class="clear"></div>
                </li>

                <li>
                    <img src="../images/sdi-ships-rail-square.jpg" alt="News & Events" title="News & Events" class="square">
                    <img src="../images/sdi-ships-rail-wide.jpg" alt="News & Events" title="News & Events" class="wide">
                    <div class="copy">
                        <p class="sub">News &amp; Events</p>
                        <p>Keep current with all things related to Steel Dynamics Structural and Rail Division. Here you will find the latest products, new developments, upcoming events and achievements.</p>
                        <a href="news-and-events.aspx">Go to news</a>
                    </div>
                    <div class="clear"></div>
                </li>

            </ul>
        </div>
    </div>


</asp:Content>
