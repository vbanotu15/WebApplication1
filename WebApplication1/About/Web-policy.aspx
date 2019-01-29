<%@ Page Title="" Language="C#" MasterPageFile="~/Master/Site.Master" AutoEventWireup="true" CodeBehind="Web-policy.aspx.cs" Inherits="WebApplication1.About.Web_policy" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <link href="../Style/CSS/tier2-sdi-structural.css" rel="stylesheet" />
    <!--Modernizer-->
    <script>
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

        .Items li a:link, .Items li a:visited, .Items li a:active {
            width: 145px;
            color: #FFFFFF;
            font-size: 16px;
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
            background-repeat: none;
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

        #breadcrumbs ul li a.current {
            color: #c02e39;
            cursor: default;
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
    </style>

    <!-- the slider -->

    <div class="mainheader company clear">
        <h3 title="About">About</h3>
    </div>
    <!-- End Header Image -->


    <div class="clear"></div>
    <!-- the content -->
    <div class="content">
        <!-- InstanceBeginEditable name="Area1" -->
        <div class="RightColumn">
            <div id="breadcrumbs">
                <ul>
                    <li><a href="company-overview.aspx">About</a></li>
                    <li><a href="web-policy.aspx" class="current">Web Policy</a></li>
                </ul>
            </div>
            <div class="clear"></div>

            <div class="col1 margintop1">
                <h4 title="Web Policy">Web Policy</h4>

                <p>Your privacy is important to us. When you provide information to us via our Website, we protect it according to this policy. If you have any questions, please don't hesitate to let us know.</p>

                <p>
                    By using this website, you agree to the following terms and conditions. If you do not agree, then do not use this website. Steel Dynamics, Inc. may revise and update the following terms and conditions at any time. Your continued usage of the website will mean you accept those changes.
                </p>

                <p>The contents of Steel Dynamics websites, such as text, graphics, images, logos, trademarks, service marks, specifications, technical guidelines, catalogs, software, data, information, and other material contained on the website are protected by copyright, trademark, and/or other laws of the United States and other countries. Ownership of the content remains with Steel Dynamics, its licensors, or third-party content providers. The content of the website and related features are subject to change or termination without notice in the sole discretion of Steel Dynamics. Content may contain technical inaccuracies or typographical errors. All rights not expressly granted herein are reserved to Steel Dynamics and its licensors.</p>

                <p>
                    In your use of the website, you agree to act responsibly in a manner demonstrating the exercise of good judgment. For example and without limitation, you agree not to (a) use the website for any purpose in violation of local, state, national or international laws, (b) insert your own or a third party’s advertising, branding, or other promotional content into any of the content or use, redistribute, republish or exploit the content for any further commercial or promotional purposes, (c) infringe or violate the rights of any third party, including without limitation, intellectual property, privacy, publicity or contractual rights, (d) engage in spidering, “screen scraping”, “database scraping”, harvesting of e-mail addresses, wireless addresses or other contact or personal information, or any other automatic means of obtaining lists of users or other information from or through the website or the services offered on or through the website, including without limitation any information residing on any server or database connected to the website or the services offered on or through this website, (e) interfere with, interrupt, damage, disable, overburden, or impair the website, the content or the services made available on or through the website, including without limitation through the use of viruses, cancel bots, Trojan horses, harmful code, flood pings, denial of service attacks, packet or IP spoofing, forged routing or electronic email address information or similar methods of technology, (f) attempt to gain unauthorized access to other computer systems through the website; or (g) assist anyone else in doing any of the above.
                </p>

                <p class="red">What Information Do We Collect Online?</p>

                <p>Unless otherwise stated in another, more specific policy on the Web pages you are viewing, we collect the following types of information when you browse any Steel Dynamics Website:</p>

                <ul class="bullets">
                    <li>Information you provide directly, such as your name or ordering information when you register or fill out an online form, or any e-mail messages you send us.</li>
                    <ul>
                        <li>Web pages your Internet browser visits.</li>
                    </ul>
                    <li>Aggregate data, such as the number of hits per week, per Web page.</li>
                </ul>

                <p class="red margintop1">How Do We Use This Information?</p>

                <p>Steel Dynamics does not rent or sell customer lists to other companies. Instead, we use information collected via the Website in the following ways:</p>

                <ul class="bullets">
                    <li>For information you provide directly, such as ordering information or e-mail messages, we use the information to respond to your orders and requests.</li>
                    <li>For some registration and use data, we may direct you to particular Web pages, customize the Web pages you see, or otherwise increase the relevance of the information you access through the Website.</li>
                    <li>For information about Web pages visited, page hits per week, and the like, we use this information internally to improve the design of our Web pages.</li>
                </ul>

                <p class="margintop1">
                    Steel Dynamics may use third-party storage or service-provider companies to perform some functions including the processing of data.
Steel Dynamics may disclose information to protect our rights or property, to enforce our terms of use and legal notices, as required or permitted by law, or at the request of government regulators or other law enforcement officials and the courts (including the issuance of a valid subpoena). We shall have no duty to notify you of such compliance with the law.
                </p>

                <p class="red">Other Web Sites and Links</p>

                <p>This website contains links to other websites. The privacy practices of those websites are not covered by this privacy statement and we are not responsible for the privacy practices or the content of such websites. Steel Dynamics is not responsible for the content of linked websites and does not make any representations regarding their content or accuracy. Your use of linked websites is at your own risk and subject to the terms and conditions of use for such websites.</p>

                <p class="red">E-Mail Lists</p>
                <p>Steel Dynamics maintains e-mail lists to keep interested parties informed about our company, events, products, support, and more. We do not sell the addresses on our list, but we may make information available to specific business partners, sponsors, or service providers. Users may voluntarily request to join our mailing lists by signing up or opting in through a form on our Website. To be removed from a Steel Dynamics mailing list, simply contact us now.</p>

                <p class="red">Notification of Data Processing in the United States of America</p>
                <p>When you choose to submit information through the website, Steel Dynamics and its affiliates may transfer, process and store the information in countries in which Steel Dynamics and its affiliates maintain offices, including the United States. The United States does not regulate data protection in the same manner as other countries, including the Member States of the European Union. Accordingly, the data that you submit to Steel Dynamics may be transferred to, processed, or stored in countries where the data protection laws are different than those of your country of residence. Steel Dynamics principal office is in Fort Wayne, Indiana in the United States of America. Steel Dynamics makes no claims that this website and the content are appropriate or may be downloaded outside of the United States. Access to the content may not be legal for certain persons or in certain countries. If you access this website from outside the United States, you do so at your own risk and are responsible for compliance with the laws of your jurisdiction.</p>

                <p class="red">Information Storage and Updates</p>
                <p>You can update your contact information by contacting us at any time. We may keep all information in an off-line form, for archival purposes or as otherwise required by law.</p>

                <p class="red">Web Site Revisions</p>

                <p>We constantly update the features of our Website to better serve you, so this policy may also be revised from time to time. Steel Dynamics may modify this policy without advance notice and any modifications are effective when they are posted here. By using our Website, you indicate your understanding and acceptance of the terms of the policy posted at the time of your use. If you have any questions, please contact us at your convenience.</p>

                <p class="red">Liability</p>
                <p>
                    Your use of the website and the content is at your own risk. STEEL DYNAMICS IS NOT RESPONSIBLE FOR ANY VIRUSES OR OTHER ROUTINES THAT HARM YOUR COMPUTER OR SOFTWARE, WHICH YOU MAY COME IN CONTACT WITH WHILE USING THE SITE; NOR IS STEEL DYNAMICS RESPONSIBLE FOR ANY FAILURE, MECHANICAL OR OTHERWISE, OF THE SITE OR OF ANY CONTENT OR SERVICES AVAILABLE THROUGH THE SITE. FURTHERMORE, WHEN using the website, information will be transmitted over a medium that may be beyond the control and jurisdiction of Steel Dynamics. Accordingly, Steel Dynamics assumes no liability for or relating to any delay, failure, interruption, or corruption of any data or other information or material transmitted to or received from this website.
                </p>

                <p>
                    The Site and the Content are provided on an “AS IS WHERE IS” basis. STEEL DYNAMICS, ITS LICENSORS, AND ITS THIRD-PARTY CONTENT PROVIDERS, TO THE FULLEST EXTENT PERMITTED BY LAW, DISCLAIM ALL WARRANTIES, EITHER EXPRESS OR IMPLIED, STATUTORY OR OTHERWISE, INCLUDING BUT NOT LIMITED TO THE IMPLIED WARRANTIES OF MERCHANTABILITY, NON-INFRINGEMENT OF THIRD-PARTYS’ RIGHTS, AND FITNESS FOR A PARTICULAR PURPOSE.
                </p>

                <p>To the best of Steel Dynamics knowledge, the information contained in the content is accurate. However, Steel Dynamics, its licensors, and its third-party content providers make no representations or warranties, either express or implied, that the content included in or available through the site is accurate, reliable, current or correct; that the content will be available at any particular time or location; that any defects or errors will be corrected, or that the content is free of viruses or other harmful components.</p>

                <p>In no event shall Steel Dynamics, its licensors, its suppliers, or any third parties mentioned on the Site be liable for any damages (including, without limitation, incidental and consequential damages, personal injury/wrongful death, lost profits, or damages resulting from lost data or business interruption) resulting from your use of or inability to use the Site or the Content, whether based on warranty, contract, tort, or any other legal theory, and whether or not Steel Dynamics, its licensors, its third party content providers mentioned on the Site are advised of the possibility of such damages.</p>

                <p>Any claims arising in connection with your use of the website or any content, must be brought within one (1) year of the date of the event giving rise to such action occurred. Remedies under these terms and conditions are exclusive and are limited to those expressly provided in these terms and conditions.</p>

                <p class="red">Legal</p>
                <p>You agree to defend (using counsel acceptable to Steel Dynamics, in its sole discretion), indemnify and hold Steel Dynamics, its officers, directors, employees, agents, licensors, and suppliers, harmless from and against any and all liabilities, claims, expenses, causes of action, demands, settlements, and/or damages (including reasonable attorneys’ fees and costs) resulting from, or alleged to result from: (i) or use of and access to the Site; (ii) your violation of any term of these Terms and Conditions; (iii) information or material provided to Steel Dynamics by you; (iv) a third-party’s rights (including, but not limited to, patents, copyrights, trademarks, trade secrets, or other proprietary right, moral rights, rights of privacy, and reputational rights) that were violated by any information or material provided to Steel Dynamics by you or by Steel Dynamics publication or other lawful use of any information or material provided to Steel Dynamics by you. Steel Dynamics reserves the right to assume the defense and control of any matter otherwise subject to indemnification by you, in which event you will cooperate with Steel Dynamics in asserting any available defenses.</p>

                <p>You expressly agree that exclusive jurisdiction for any dispute with Steel Dynamics, or in any way relating to your use of this Site, resides in the state courts of Allen County, Indiana, and in the federal courts of the Northern District, Fort Wayne Division, and you further agree and expressly consent to the exercise of personal jurisdiction of such courts in connection with any such dispute including any claim involving Steel Dynamics, affiliates, subsidiaries, employees, contractors, officers, and directors.</p>

                <p>These Terms and Conditions are governed by the internal substantive laws of the State of Indiana, without respect to its conflict of laws principals. If any provision of these Terms and Conditions is found to be invalid by any court having competent jurisdiction, the invalidity of such provision shall not affect the validity of the remaining provisions of these Terms and Conditions, which shall remain in full force and effect. No waiver of any of the Terms and Conditions shall be deemed a further or continuing waiver of such Term or Condition or any other Term or Condition. These Terms and Conditions constitute the entire agreement between you and Steel Dynamics with respect to the use of the Site and Content.</p>

                <p class="red">Forward Looking Statements</p>
                <p>
                    This website may contain predictive statements about future events, including obtaining financing, construction of facilities, the successful operation of iron-making facilities, mining operations, and iron-concentrating facilities, as well as logistical support for these activities. These statements are intended to be made as “forward-looking,” subject to many risks and uncertainties, within the safe harbor protections of the Private Securities Litigation Reform Act of 1995. Such predictive statements are not guarantees of future performance, and actual results could differ materially from our current expectations.
We refer you to Steel Dynamics detailed explanation of the many factors and risks that may cause such predictive statements to turn out differently, as set forth in our most recent Annual Report on Form 10-K and in other reports which we from time to time file with the Securities and Exchange Commission, available publicly on the SEC’s Website, www.sec.gov , and on the company’s Website, <a href="http://www.steeldynamics.com/" target="_blank">www.steeldynamics.com</a>.
                </p>


            </div>

            <div class="top"><a href="#top">TOP</a></div>
        </div>
        <!-- InstanceEndEditable -->

        <!-- the sidebar -->
        <aside class="sidebar">
            <h5>Side Navigation</h5>
            <div class="sideNav">
                <ul>
                    <li><a href="company-overview.aspx" title="About" class="">About</a></li>
                    <li><a href="capabilities.aspx" title="Capabilities" class="">Capabilities</a></li>
                    <li><a href="management.aspx" title="Leadership" class="">Our Management</a></li>
                    <li><a href="culture.aspx" title="Culture" class="">Culture</a></li>
                    <li><a href="safety.aspx" title="Safety" class="">Safety</a></li>
                    <li><a href="environment.aspx" title="Environment" class="">Environment</a></li>
                    <li><a href="community.aspx" title="Community" class="">Community</a></li>
                    <li><a href="structural-products-video.aspx" title="Video" class="">Video</a></li>
                    <li><a href="news-and-events.aspx" title="News & Events" class="">News &amp; Events</a></li>
                    <li><a href="web-policy.aspx" title="Web Policy" class="current">Web-Policy</a></li>
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
</asp:Content>
