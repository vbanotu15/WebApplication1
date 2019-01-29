<%@ Page Title="" Language="C#" MasterPageFile="~/Master/Site.Master" AutoEventWireup="true" CodeBehind="Management.aspx.cs" Inherits="WebApplication1.About.Management" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <link href="../Style/CSS/tier2-sdi-structural.css" rel="stylesheet" />
    <style>
        .mainheader.company {
            background-image: url(../images/headers/company-header.jpg);
        }
    </style>
    <script>
        if (!Modernizr.svg) var i = document.getElementsByTagName("img"), j, y; for (j = i.length; j--;)y = i[j].src, y.match(/svg$/) && (i[j].src = y.slice(0, -3) + "png")</script>
    <!--EndModernizer-->

    <script src="https://code.jquery.com/jquery-1.12.0.min.js"></script>
    <script src="https://code.jquery.com/jquery-migrate-1.2.1.min.js"></script>

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
                    <li><a href="management.aspx" class="current">Our Management</a></li>
                </ul>
            </div>
            <div class="clear"></div>

            <div class="col1 margintop1">
                <h4 title="Our Management">Our Management</h4>
                <p style="width: 100%">Our management team is made up of seasoned industry experts who are committed to ensuring you receive the highest quality products by continually improving our processes, equipment, and systems. Our goal is to be the most innovative world class supplier that consistently provides greater value and exceeds your expectations.</p>

                <img src="../images/staff/Chris-Gionti.jpg" alt="Chris Gionti" title="Chris Gionti" class="leadership" />
                <div class="team">
                    <ul class="bullets">
                        <li class="nobullet bold">Chris Gionti - Operations Manager</li>
                        <li class="nobullet">
                            <p>Chris has over 25 years of experience in the steel industry. He began his career with North Star Steel in 1988, where he worked as a maintenance supervisor and a project engineer for 9 years at two Greenfield sites as well as the bar mill in Iowa. In 1997, he transitioned to Birmingham Steel in Memphis, TN where served as Rolling and Shipping Manager.</p>
                            <p>
                                Chris began his career with Steel Dynamics in 1998 as a Plant Mechanical Engineer at the Butler Flat Roll Facility and was responsible for various capital projects throughout the plant including the addition of the F7 rolling stand in the hot mill. In 2003, Chris was promoted to Rolling Mill Manager of the newly acquired Engineered Bar Products Division in Pittsboro, Indiana. He was also involved in the design, modification, and startup of this brownfield site. In 2015, Chris was promoted to the role of Operations Manager at The Techs Division in Pittsburgh, Pennsylvania. In June 2016, we welcomed him to Steel Dynamics Structural and Rail Division as Operations Manager. 
                            </p>
                            <p>Chris graduated in 1988 with a B.S. in Mechanical Engineering from the University of Pittsburgh.</p>
                        </li>
                        <li class="nobullet bold"><a href="mailto:Chris.gionti@steeldynamics.com">Chris.gionti@steeldynamics.com</a></li>
                        <li class="nobullet"><a href="tel:+12606258800" class="tel">Phone: 260-625-8800</a></li>
                    </ul>
                </div>
                <div class="clear"></div>
                <div class="greybar"></div>

                <img src="../images/staff/Sheila-Curry.jpg" alt="Sheila Curry" title="Sheila Curry" class="leadership" />
                <div class="team">
                    <ul class="bullets">
                        <li class="nobullet bold">Sheila Curry – Administrative Assistant</li>
                        <li class="nobullet">
                            <p>Sheila has been with Steel Dynamics since 2016. She keeps our mill’s management team rolling in countless ways and is vital to keeping our company’s tight-knit culture intact.</p>
                        </li>
                        <li class="nobullet bold"><a href="mailto:sheila.curry@steeldynamics.com">sheila.curry@steeldynamics.com</a></li>
                        <li class="nobullet"><a href="tel:+12606258834" class="tel">Phone: 260-625-8834</a></li>
                    </ul>
                </div>
                <div class="clear"></div>
                <div class="greybar"></div>

                <img src="../images/staff/Rob-King.jpg" alt="Rob King" title="Rob King" class="leadership" />
                <div class="team">
                    <ul class="bullets">
                        <li class="nobullet bold">Rob King – Sales & Marketing Manager</li>
                        <li class="nobullet">
                            <p>Rob has over 19 years of experience in the manufacturing and commercial sales of Rail Products. He began his career in the steel industry in 1997 with CF&I Co. (EVRAZ Inc. NA, Pueblo, CO), where he worked on various projects within the rail quality assurance department. In 2000, he transitioned to the rail sales department, where he held various sales positions, until assuming the role of Sales Manager in 2010.</p>
                            <p>In 2011, Rob joined Steel Dynamics, Inc. as Sales Manager - Rail, and in 2017 was promoted into his current role as Sales & Marketing Manager at the Steel Dynamics Structural and Rail Division in Columbia City, IN.</p>
                            <p>Rob has a Bachelor’s Degree in Business Management and currently serves on the Board of Directors for the Northern Indiana Passenger Rail Association.</p>
                        </li>
                        <li class="nobullet bold"><a href="mailto:Rob.king@steeldynamics.com">Rob.king@steeldynamics.com</a></li>
                        <li class="nobullet"><a href="tel:+12606258824" class="tel">Phone: 260-625-8824</a></li>
                    </ul>
                </div>
                <div class="clear"></div>
                <div class="greybar"></div>

                <img src="../images/staff/Stephan-Ferenczy.jpg" alt="Stephan Ferenczy" title="Stephan Ferenczy" class="leadership" />
                <div class="team">
                    <ul class="bullets">
                        <li class="nobullet bold">Stephan Ferenczy – Melting and Casting Manager</li>
                        <li class="nobullet">
                            <p>Stephan has over 20 years of experience in electric arc furnace (EAF) melting and casting. He has commissioned 13 EAF melt shops across North America. His career began with Fuchs Systems as a process/start-up engineer. He also has worked as a process engineer at Slater Steel and CSC.</p>
                            <p>In 2001, Stephan joined the start-up team at the Steel Dynamics Structural and Rail Division. He worked multiple positions ranging from process metallurgist to melting supervisor to refractory supervisor for 8 years. In 2009, he transferred to the Flat Roll Division in Butler, IN and served as Casting Manager until 2014. He then re-joined the Steel Dynamics Structural and Rail Division in 2014 and is currently the Melting/Casting manager.</p>
                            <p>Stephan received his Bachelor of Science in Mathematics at Dalhousie University, Bachelor of Engineering Metallurgy at the Technical University of Nova Scotia, and Masters of Applied Science – Metallurgy at the University of Toronto. He has served on the AIST Electric Steelmaking Technical Committee since 2010 and is currently Chairman of the Board.</p>
                        </li>
                        <li class="nobullet bold"><a href="mailto:Stephan.Ferenczy@steeldynamics.com">Stephan.Ferenczy@steeldynamics.com</a></li>
                        <li class="nobullet"><a href="tel:+12606258480" class="tel">Phone: 260-625-8480</a></li>
                    </ul>
                </div>
                <div class="clear"></div>
                <div class="greybar"></div>

                <img src="../images/staff/kevin-perela.jpg" alt="Kevin Perala" title="Kevin Perala" class="leadership" />
                <div class="team">
                    <ul class="bullets">
                        <li class="nobullet bold">Kevin Perala – Medium Section Rolling &amp; Finishing Manager</li>
                        <li class="nobullet">
                            <p>Kevin has 30+ years of experience in the steel industry. Kevin started his career at Inland Steel Company in East Chicago, Indiana, where he worked in a variety of departments through their supervisory training program.</p>
                            <p>In 1987, Kevin left Inland to be a part of the construction/startup crew at Nucor’s groundbreaking CSP plant in Crawfordsville, Indiana.  Once the plant became operational in 1991, he transferred to Nucor’s second CSP plant in Blytheville, Arkansas and worked as a Melting Supervisor.</p>
                            <p>In August 1994, Kevin joined Steel Dynamics, Inc. as a Casting Supervisor at the Butler Flat Roll Division, and worked in that position until 1998 when he was assigned to the second furnace and caster expansion.  Once the expansion was completed, he became the Melt Shop Manager of SDI’s Structural and Rail Division in Columbia City, IN.</p>
                            <p>In October of 2011, Kevin became the Medium Section Mill Manager at the Steel Dynamics Structural and Rail Division in Columbia City, IN and is currently still in that position.</p>
                            <p>Kevin graduated from Michigan Technological University in 1982 with a BSME degree.</p>
                        </li>
                        <li class="nobullet bold"><a href="mailto:Kevin.perala@steeldynamics.com">Kevin.perala@steeldynamics.com</a></li>
                        <li class="nobullet"><a href="tel:+12606258805" class="tel">Phone: 260-625-8805</a></li>
                    </ul>
                </div>

                <div class="clear"></div>
                <div class="greybar"></div>

                <img src="../images/staff/Jeremy-Cronkhite.jpg" alt="Jeremy Cronkhite" title="Jeremy Cronkhite" class="leadership" />
                <div class="team">
                    <ul class="bullets">
                        <li class="nobullet bold">Jeremy Cronkhite – Heavy Section Mill Manager</li>
                        <li class="nobullet">
                            <p>Jeremy has over 13 years of experience in the steel industry. He began his career in 2003 as a Process Metallurgy Intern in the heavy section mill at the Steel Dynamics Structural and Rail Division. In 2005, he started working full-time as a Process Metallurgist in the heavy section mill. In 2009, Jeremy took over as the Non-Destructive Rail Testing Supervisor and was part of the team that was responsible for the building and commissioning of Steel Dynamics Structural and Rail Division’s new rail finishing and rail head hardening facilities. In 2014, he transitioned to a Shift Supervisor in the heavy section rolling mill.</p>
                            <p>In April 2015, Jeremy was promoted to Quality Manager and Rail Weld Manager, and then to Heavy Section Mill Manager in November 2016.</p>
                            <p>Jeremy currently sits on the American Railway Engineering and Maintenance-of-Way Association (AREMA) Committee and is the current Vice Chairman of AREMA’s sub-committee which handles recommended practices for the rolling of rail.</p>
                            <p>Jeremy received his degree in Materials Science Engineering in May 2005 from Purdue University.</p>
                        </li>
                        <li class="nobullet bold"><a href="mailto:Jeremy.Cronkhite@steeldynamics.com">Jeremy.Cronkhite@steeldynamics.com</a></li>
                        <li class="nobullet"><a href="tel:+12606258434" class="tel">Phone: 260-625-8434</a></li>
                    </ul>
                </div>
                <div class="clear"></div>
                <div class="greybar"></div>


                <img src="../images/staff/Tom-Lutes.jpg" alt="Tom Lutes" title="Tom Lutes" class="leadership" />
                <div class="team">
                    <ul class="bullets">
                        <li class="nobullet bold">Tom Lutes – Materials and Transportation Manager</li>
                        <li class="nobullet">
                            <p>Tom holds over 20 years of experience in the steel industry. He began his steel career in 1996, as a Process Engineer at Iron Dynamics (IDI). He was later promoted to a Supervisor position and served 10 years at IDI.  He then moved on to become Plant Manager at Mining Resources, followed by Plant Manager at Mesabi Nugget where he spent 8 years. Tom also served as a Process Engineer with Cleveland Cliffs at the Empire Mine.</p>
                            <p>Tom joined Steel Dynamics, Inc. in 1997. He is currently Manager of Materials and Transportation at the Steel Dynamics Structural and Rail Division in Columbia City, IN.</p>
                            <p>Tom received his Bachelor of Science in Chemical Engineering from Michigan Technological University.</p>
                        </li>
                        <li class="nobullet bold"><a href="mailto:Tom.lutes@steeldynamics.com">Tom.lutes@steeldynamics.com</a></li>
                        <li class="nobullet"><a href="tel:+12606258509" class="tel">Phone: 260-625-8509</a></li>
                    </ul>
                </div>
                <div class="clear"></div>
                <div class="greybar"></div>


                <img src="../images/staff/Josh-Horning.jpg" alt="Josh Horning" title="Josh Horning" class="leadership" />
                <div class="team">
                    <ul class="bullets">
                        <li class="nobullet bold">Josh Horning – Engineering Manager</li>
                        <li class="nobullet">
                            <p>Josh has 16+ years of experience in the steel industry. He began his career in steel tubular products at LTV Copperweld as Manufacturing Engineer in 2000. In 2002, he became a Plant Engineer. He joined Steel Dynamics, Inc. as a Plant Mechanical Engineer at the Engineered Bar Products Division in Pittsboro, IN in 2003. In 2008, he transferred to the Flat Roll Division in Butler, IN and served as a Cold Mill Mechanical Engineer.</p>
                            <p>In 2015, Josh was promoted to his current position of Engineering Manager at Steel Dynamics Structural and Rail Division.</p>
                            <p>Josh graduated from Youngstown State University in 2000 with a B.E. in Mechanical Engineering.</p>
                        </li>
                        <li class="nobullet bold"><a href="mailto:Josh.horning@steeldynamics.com">Josh.horning@steeldynamics.com</a></li>
                        <li class="nobullet"><a href="tel:+12606258508" class="tel">Phone: 260-625-8508</a></li>
                    </ul>
                </div>
                <div class="clear"></div>
                <div class="greybar"></div>

                <img src="../images/staff/Troy-Bayman.jpg" alt="Troy Bayman" title="Troy Bayman" class="leadership" />
                <div class="team">
                    <ul class="bullets">
                        <li class="nobullet bold">Troy Bayman - Controller</li>
                        <li class="nobullet">
                            <p>Troy has been with Steel Dynamics, Inc. for over 15 years. He began his professional career in 1995 at BKD LLP and served on the audit staff for 6 years. He also worked at Dana Holding Corporation for 2 years as a Senior Internal Auditor.</p>
                            <p>In 2000, Troy started his career with Steel Dynamics, Inc. as an Accountant at the corporate office in Fort Wayne, IN. In 2004, he transitioned to Accounting Supervisor at SDI’s New Millennium Building Systems (NMBS) in Butler, IN. He was promoted to Controller at NMBS in Continental, OH in 2006. Then in 2009, he transitioned to Senior Financial Analyst at NMBS corporate office, before being promoted to Controller in 2011.</p>
                            <p>Troy transferred to the Steel Dynamics Structural and Rail Division in 2014 to work in his current position as Division Controller.</p>
                            <p>Troy graduated from the Indiana Institute of Technology with a B.S. in Accounting in 2001.</p>
                        </li>
                        <li class="nobullet bold"><a href="mailto:Troy.bayman@steeldynamics.com">Troy.bayman@steeldynamics.com</a></li>
                        <li class="nobullet"><a href="tel:+12606258832" class="tel">Phone: 260-625-8832</a></li>
                    </ul>
                </div>
                <div class="clear"></div>
                <div class="greybar"></div>

                <img src="../images/staff/David-Hauze.jpg" alt="David Hauze" title="David Hauze" class="leadership" />
                <div class="team">
                    <ul class="bullets">
                        <li class="nobullet bold">David Hauze – Information Technology Manager</li>
                        <li class="nobullet">
                            <p>Prior to joining Steel Dynamics, Inc., David spent 9 years in the US Navy as a Sonar Technician on submarines, holding various technology, information technology, and management roles. He spent the 15 years prior to the US Navy as a software engineer with various businesses as well as in his spare time as a personal interest.</p>
                            <p>David joined Steel Dynamics, Inc. in 2005 as a software engineer at the Engineered Bar Products division in Pittsboro, IN. In 2010, David transferred to SDI’s fabrication division – New Millennium Building Systems as the Information Technology Manager. David joined the Steel Dynamics Structural and Rail Division in Columbia City, IN in 2015 where he currently serves as the Information Technology Manager.</p>
                            <p>David graduated in 2004 with a Bachelor’s Degree in Information Technology. He received his Masters of Business Administration 2009.</p>
                        </li>
                        <li class="nobullet bold"><a href="mailto:David.hauze@steeldynamics.com">David.hauze@steeldynamics.com</a></li>
                        <li class="nobullet"><a href="tel:+12606258600" class="tel">Phone: 260-625-8600</a></li>
                    </ul>
                </div>
                <div class="clear"></div>
                <div class="greybar"></div>

                <img src="../images/staff/Todd-Bashford.jpg" alt="Todd Bashford" title="Todd Bashford" class="leadership" />
                <div class="team">
                    <ul class="bullets">
                        <li class="nobullet bold">Todd Bashford – Quality / Rail Welding Manager</li>
                        <li class="nobullet">
                            <p>Todd has over 18 years of experience in the steel industry.  He began his career with Steel Dynamics in 1998 in the Engineering Department at the Structural and Rail Division in Columbia City, IN.  He was involved in the construction and commissioning of the Heavy Section Mill and was promoted to Shift Supervisor in 2005.  Todd then transferred to the Medium Section Mill in 2007 where he was again part of the construction and commissioning team.  He served as a Production Supervisor as well as a Roll Shop Supervisor until selected as the Quality and Rail Welding Manager in 2016.</p>
                            <p>Todd is a graduate of the University of Cincinnati with a Bachelor of Science degree in Industrial Management.</p>
                        </li>

                        <li class="nobullet bold"><a href="mailto:todd.bashford@steeldynamics.com">todd.bashford@steeldynamics.com</a></li>
                        <li class="nobullet"><a href="tel:+12606258435" class="tel">Phone: 260-625-8435</a></li>
                    </ul>
                </div>
                <div class="clear"></div>

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
                    <li><a href="management.aspx" title="Leadership" class="current">Our Management</a></li>
                    <li><a href="culture.aspx" title="Culture" class="">Culture</a></li>
                    <li><a href="safety.aspx" title="Safety" class="">Safety</a></li>
                    <li><a href="environment.aspx" title="Environment" class="">Environment</a></li>
                    <li><a href="community.aspx" title="Community" class="">Community</a></li>
                    <li><a href="structural-products-video.aspx" title="Video" class="">Video</a></li>
                    <li><a href="news-and-events.aspx" title="News & Events" class="">News &amp; Events</a></li>
                    <li><a href="web-policy.aspx" title="Web Policy" class="">Web Policy</a></li>
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
