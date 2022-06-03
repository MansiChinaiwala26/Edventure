<%@ page import="java.io.*,java.util.*,java.sql.Connection,java.sql.DriverManager,java.sql.Statement,java.sql.ResultSet,java.util.Scanner" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Cache-Control"content="no-cache,no-store,must-revalidate"/>
        <meta http-equiv="Pragma"content="no-cache"/>
        <meta http-equiv="Expires"content="0"/>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta name="description" content="">
        <meta name="author" content="">
        <title>EDventure</title>
        <!-- core CSS -->
        <link href="css/bootstrap.min.css" rel="stylesheet">
        <link href="css/font-awesome.min.css" rel="stylesheet">
        <link href="css/animate.min.css" rel="stylesheet">
        <link href="css/prettyPhoto.css" rel="stylesheet">
        <link href="css/main.css" rel="stylesheet">
        <link href="css/responsive.css" rel="stylesheet">
        <!--[if lt IE 9]>
        <script src="js/html5shiv.js"></script>
        <script src="js/respond.min.js"></script>
        <![endif]-->
        <link rel="shortcut icon" href="images/ico/e1.ico">
        <link rel="apple-touch-icon-precomposed" sizes="144x144" href="images/ico/e-144.png">
        <link rel="apple-touch-icon-precomposed" sizes="114x114" href="images/ico/e-114.png">
        <link rel="apple-touch-icon-precomposed" sizes="72x72" href="images/ico/e-72.png">
        <link rel="apple-touch-icon-precomposed" href="images/ico/e-57.png">

    </head><!--/head-->
    <body class="homepage">
    <background-image src="back.jpeg"></background-image>
    <%

        response.addHeader("Cache-Control", "no-cache,no-store,private,must-revalidate,max-stale=0,post-check=0,pre-check=0");
        response.addHeader("Pragma", "no-cache");
        response.addDateHeader("Expires", 0);
    %>
    <%
        if (session.getAttribute("user") == null) {
            response.sendRedirect("index.jsp");
        }
    %>

    <header id="header">
        <div class="top-bar">
            <div class="container">
                <div class="row">
                    <div class="col-sm-6 col-xs-4">
                        
                    </div>
                    <div class="col-sm-6 col-xs-8">
                        <div class="social">
                            <ul class="social-share">
                                <li><a href="https://www.facebook.com/EDventure-533619816791577/timeline/"><i class="fa fa-facebook"></i></a></li>
                                <li><a href="https://twitter.com/EDventure03"><i class="fa fa-twitter"></i></a></li>
                                <li><a href="https://in.linkedin.com/in/EDventure"><i class="fa fa-linkedin"></i></a></li> 
                                <li><a href="https://dribbble.com/EDventure03"><i class="fa fa-dribbble"></i></a></li>

                            </ul>

                        </div>
                    </div>
                </div>
            </div><!--/.container-->
        </div><!--/.top-bar-->

        <nav class="navbar navbar-inverse" role="banner">
            <div class="container">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <a class="navbar-brand" href="index.jsp"><img src="images/edventurelogo.png" alt="logo"></a>
                </div>

                <div class="collapse navbar-collapse navbar-right">
                    <ul class="nav navbar-nav">
                        <li class="active"><a href="home.jsp">Home</a></li>
                        <li><a href="colleges.jsp">Colleges</a></li>
                        <li><a href="testcondct.jsp">Test Form</a></li>
                        <li><a href="companydisplay.jsp">Company</a></li>
                        <li><a href="jobrecuriment.jsp">Job Recruitment</a></li>



                        <li class="dropdown">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown">Profile <i class="fa fa-angle-down"></i></a>
                            <ul class="dropdown-menu">
                                <li><a href="jobapplication.jsp">Job Application</a></li>
                                <li><a href="Changepsw.jsp">Change Password</a></li>
                                <li><a href="logout.jsp">Logout</a></li>
                            </ul>
                        </li>

                    </ul>
                </div>
            </div><!--/.container-->
        </nav><!--/nav-->

    </header><!--/header-->
    <section id="blog" class="container">
        <div class="center">
            <center>
                <table cellpadding="5">
                    <tr  wdth ="100%">
                    <tr><td></td></tr>
                    <tr><td></td></tr>
                    <td height="24" colspan="4"><div align="center" class="style4"><font size="12" color="black">Job Application</font></div></td>
                    <tr><td></td></tr>
                    <tr><td></td></tr>
                    </tr>
                </table>
            </center>

        </div>
        <div class="row contact-wrap"> 
            <div class="status alert alert-success" style="display: none"></div>
            <form id="main-contact-form123" class="contact-form" name="contact-form" 
                  method="post" action="JobEdit.jsp">
                <div class="col-sm-5 col-sm-offset-1">
                    <div class="form-group">
                        <label> Name</label>
                        <input type="text" name="name" value="${cookie.name.value}" class="form-control"required="required">
                    </div>

                    <div class="form-group">
                        <label>Age </label>
                        <input type="text" name="age" value="${cookie.age.value}" class="form-control"required="required">
                    </div>


                    <div class="form-group">
                        <label>Address</label>
                        <input type="textbox" name="add" value="${cookie.add.value}" class="form-control" required="required">
                    </div>
                    <div class="form-group">
                        <label>State</label>
                        <%
                            String sname = request.getParameter("state");
                        %>
                        <select name="sn" required="required">


                            <option <%= (sname.equals("Arunachal Pradesh") ? "selected='selected'" : "")%>>Arunachal Pradesh</option>
                            <option <%= (sname.equals("Assam") ? "selected='selected'" : "")%>>Assam</option>
                            <option <%= (sname.equals("Bihar") ? "selected='selected'" : "")%> >Bihar</option>
                            <option <%= (sname.equals("Goa") ? "selected='selected'" : "")%>>Goa</option>
                            <option <%= (sname.equals("Chhattisgarh") ? "selected='selected'" : "")%>>Chhattisgarh</option>
                            <option <%= (sname.equals("Gujarat") ? "selected='selected'" : "")%>>Gujarat</option>
                            <option <%= (sname.equals("Haryana") ? "selected='selected'" : "")%>>Haryana</option>
                            <option <%= (sname.equals("Himachal Pradesh") ? "selected='selected'" : "")%>>Himachal Pradesh</option>
                            <option <%= (sname.equals("Jammu & Kashmir") ? "selected='selected'" : "")%>>Jammu & Kashmir</option>
                            <option <%= (sname.equals("Jharkhand") ? "selected='selected'" : "")%>>Jharkhand</option>
                            <option <%= (sname.equals("Karnataka") ? "selected='selected'" : "")%>>Karnataka</option>
                            <option <%= (sname.equals("Kerala") ? "selected='selected'" : "")%>>Kerala</option>
                            <option <%= (sname.equals("Madhya Pradesh") ? "selected='selected'" : "")%>>Madhya Pradesh</option>
                            <option <%= (sname.equals("Maharashtra") ? "selected='selected'" : "")%>>Maharashtra</option>
                            <option <%= (sname.equals("Manipur") ? "selected='selected'" : "")%>>Manipur</option>
                            <option <%= (sname.equals("Meghalaya") ? "selected='selected'" : "")%>>Meghalaya</option>
                            <option <%= (sname.equals("Mizoram") ? "selected='selected'" : "")%>>Mizoram</option>
                            <option <%= (sname.equals("Nagaland") ? "selected='selected'" : "")%>>Nagaland</option>
                            <option <%= (sname.equals("Orissa") ? "selected='selected'" : "")%>>Orissa</option>
                            <option <%= (sname.equals("Punjab") ? "selected='selected'" : "")%>>Punjab</option>
                            <option <%= (sname.equals("Rajasthan") ? "selected='selected'" : "")%>>Rajasthan</option>
                            <option <%= (sname.equals("Sikkim") ? "selected='selected'" : "")%>>Sikkim</option>
                            <option <%= (sname.equals("Tamil Nadu") ? "selected='selected'" : "")%>>Tamil Nadu</option>
                            <option <%= (sname.equals("Tripura") ? "selected='selected'" : "")%>>Tripura</option>
                            <option <%= (sname.equals("Uttar Pradesh") ? "selected='selected'" : "")%>>Uttar Pradesh</option>
                            <option <%= (sname.equals("Uttarakhand") ? "selected='selected'" : "")%>>Uttarakhand</option>
                            <option <%= (sname.equals("West Bengal") ? "selected='selected'" : "")%>>West Bengal</option>
                        </select>

                    </div>

                    <div class="form-group">
                        <label>City</label>
                        <%
                            String cname = request.getParameter("city");
                        %>
                        <select name="cname"  class="form-control" required="required">
                            <option<%= (cname.equals("Abhayapuri") ? "selected='selected'" : "")%>>Abhayapuri</option>
                            <option<%= (cname.equals("Achabbal") ? "selected='selected'" : "")%>>Achabbal</option>
                            <option<%= (cname.equals("Amritsar") ? "selected='selected'" : "")%>>Amritsar</option>
                            <option<%= (cname.equals("Ahmedabad") ? "selected='selected'" : "")%>>Ahmedabad</option>
                            <option<%= (cname.equals("Bharuch") ? "selected='selected'" : "")%>>Bharuch</option>
                            <option<%= (cname.equals("Bhavnagar") ? "selected='selected'" : "")%>>Bhavnagar</option>
                            <option><%= (cname.equals("Bhopal") ? "selected='selected'" : "")%>Bhopal</option>
                            <option<%= (cname.equals("Chandigarh") ? "selected='selected'" : "")%>>Chandigarh</option>
                            <option<%= (cname.equals("Chennai") ? "selected='selected'" : "")%>>Chennai</option>
                            <option<%= (cname.equals("Daman") ? "selected='selected'" : "")%>>Daman</option>
                            <option><%= (cname.equals("Diu") ? "selected='selected'" : "")%>Diu </option>
                            <option<%= (cname.equals("Faridabad") ? "selected='selected'" : "")%>>Faridabad</option>
                            <option<%= (cname.equals("Gandhinagar") ? "selected='selected'" : "")%>>Gandhinagar</option>
                            <option<%= (cname.equals("Gwalior") ? "selected='selected'" : "")%>>Gwalior</option>
                            <option<%= (cname.equals("Haridwar") ? "selected='selected'" : "")%>>Haridwar</option>
                            <option<%= (cname.equals("Hyderabad") ? "selected='selected'" : "")%>>Hyderabad</option>
                            <option<%= (cname.equals("Indore") ? "selected='selected'" : "")%>>Indore</option>
                            <option<%= (cname.equals("Jaipur") ? "selected='selected'" : "")%>>Jaipur</option>
                            <option<%= (cname.equals("Jammu") ? "selected='selected'" : "")%>>Jammu</option>
                            <option<%= (cname.equals("Jamnagar") ? "selected='selected'" : "")%>>Jamnagar</option>
                            <option<%= (cname.equals("Junagadh") ? "selected='selected'" : "")%>>Junagadh</option>
                            <option<%= (cname.equals("Kolkata") ? "selected='selected'" : "")%>>Kolkata</option>
                            <option<%= (cname.equals("Kutch") ? "selected='selected'" : "")%>>Kutch</option>
                            <option<%= (cname.equals("Lucknow ") ? "selected='selected'" : "")%>>Lucknow </option>
                            <option<%= (cname.equals("Ludhiana") ? "selected='selected'" : "")%>>Ludhiana</option>
                            <option<%= (cname.equals("Mainpuri") ? "selected='selected'" : "")%>>Mainpuri</option>
                            <option<%= (cname.equals("Mumbai") ? "selected='selected'" : "")%>>Mumbai</option>
                            <option<%= (cname.equals("Mysore") ? "selected='selected'" : "")%>>Mysore</option>
                            <option<%= (cname.equals("Navsari") ? "selected='selected'" : "")%>>Navsari</option>
                            <option<%= (cname.equals("Nagpur") ? "selected='selected'" : "")%>>Nagpur</option>
                            <option<%= (cname.equals("New Delhi") ? "selected='selected'" : "")%>>New Delhi</option>
                            <option<%= (cname.equals("Osmanabad") ? "selected='selected'" : "")%>>Osmanabad</option>
                            <option<%= (cname.equals("Panipat") ? "selected='selected'" : "")%>>Panipat</option>
                            <option<%= (cname.equals("Porbandar") ? "selected='selected'" : "")%>>Porbandar</option>
                            <option<%= (cname.equals("Pune") ? "selected='selected'" : "")%>>Pune</option>
                            <option<%= (cname.equals("Raipur") ? "selected='selected'" : "")%>>Raipur</option>
                            <option<%= (cname.equals("Solapur") ? "selected='selected'" : "")%>>Solapur</option>
                            <option<%= (cname.equals("Srinagar") ? "selected='selected'" : "")%>>Srinagar</option>
                            <option<%= (cname.equals("Surat") ? "selected='selected'" : "")%>>Surat</option>
                            <option<%= (cname.equals("Thiruvananthapuram") ? "selected='selected'" : "")%>>Thiruvananthapuram</option>
                            <option<%= (cname.equals("Thane") ? "selected='selected'" : "")%>>Thane</option>
                            <option<%= (cname.equals("Udaipur") ? "selected='selected'" : "")%>>Udaipur</option>
                            <option<%= (cname.equals("Ujjain") ? "selected='selected'" : "")%>>Ujjain</option>
                            <option<%= (cname.equals("Vadodara") ? "selected='selected'" : "")%>>Vadodara</option>
                            <option<%= (cname.equals("Valsad") ? "selected='selected'" : "")%>>Valsad</option>
                            <option<%= (cname.equals("Yavatmal") ? "selected='selected'" : "")%>>Yavatmal</option>
                            <option<%= (cname.equals("Zunheboto") ? "selected='selected'" : "")%>>Zunheboto</option>




                        </select>
                    </div>

                    <div class="form-group">
                        <label>Email Id</label>
                        <input type="email" name="ename" value="${cookie.ename.value} "class="form-control" required="required">
                    </div>


                    <div class="form-group">
                        <label>Contact No</label>
                        <input type="number" name="ctname" value="${cookie.ctname.value}" class="form-control" required="required">
                    </div>
                    <div class="form-group">
                        <label>Designation</label>
                        <input type="text" name="desname" value="${cookie.desname.value}" class="form-control" required="required">

                    </div>
                    <div class="form-group">
                        <label>Branch of Study</label>
                        <select name="branch" value="${cookie.branch.value}" class="form-control" required="required">
                            <option  value="">------Select--------- </option>
                            <option  value="Applied Electro            ">Applied Electronics </option>
                            <option  value="Applied Physics            ">Applied Physics </option>
                            <option  value="B C A                      ">B C A </option>
                            <option  value="Bioinformatics              ">Bioinformatics </option>
                            <option  value="Biotechnology              ">Biotechnology </option>
                            <option  value="Chemistry                  ">Chemistry </option>
                            <option  value="Comp and Networking        ">Computer and Networking </option>
                            <option  value="Comp Application           ">Computer Application </option>
                            <option  value="Comp Application &amp; IT      ">Computer Application &amp; IT </option>
                            <option  value="Comp Hardware Maintenance  ">Computer Hardware Maintenance </option>
                            <option  value="Comp Information Systems   ">Computer Information Systems </option>
                            <option  value="Comp Maintenance           ">Computer Maintenance </option>
                            <option  value="Comp Maintenance &amp; Electro ">Computer Maintenance &amp; Electronics </option>
                            <option  value="Comp Science               ">Computer Science </option>
                            <option  value="Comp Science &amp; Information ">Computer Science &amp; Information </option>
                            <option  value="Comp Technology            ">Computer Technology </option>
                            <option  value="Electro                    ">Electronics </option>
                            <option  value="Electro &amp; Communication    ">Electronics &amp; Communication </option>
                            <option  value="Electro &amp; Comp Hardware    ">Electronics &amp; Computer Hardware </option>
                            <option  value="Electro &amp; Comp Maintenance ">Electronics &amp; Computer Maintenance </option>
                            <option  value="Industrial Chemistry       ">Industrial Chemistry </option>
                            <option  value="Information Technology     ">Information Technology </option>
                            <option  value="Instrumentation            ">Instrumentation </option>
                            <option  value="Optical Instrumentation    ">Optical Instrumentation </option>
                            <option  value="Physics                    ">Physics </option>
                            <option  value="Physics &amp; Electro          ">Physics &amp; Electronics </option>
                            <option  value="Physics Instrumentation    ">Physics Instrumentation </option>
                            <option  value="Physics with Comp App      ">Physics with Comp Applications </option>
                            <option  value="Software Systems           ">Software Systems </option>
                            <option  value="Software Technology        ">Software Technology </option>
                        </select>
                    </div>
                    <div class="form-group">
                        <label>Previous Company</label>
                        <input type="company" name="cyname" value="${cookie.cyname.value}" class="form-control" required="required">

                    </div>
                    <div class="form-group">
                        <label>Degree</label>
                        <select name="degree" value="${cookie.degree.value}" class="form-control" required="required">
                            <option value ="BTech">BTech</option>
                            <option value ="MTech">MTech</option>
                            <option value ="MCA">MCA</option>
                            <option value ="BCA">BCA</option>
                            <option value ="BSc">BSC</option>
                            <option value ="MSc">MSc</option>
                        </select> 

                    </div>
                    <div class="form-group">
                        <label>Expected Salary</label>
                        <input type="text" name="exps" value="${cookie.exps.value}" class="form-control" required="required">

                    </div>
                    <div class="form-group">
                        <label>Experience</label>
                        <select name="expyear" value="${cookie.expyear.value}" class="form-control" required="required">
                            <option value ="1-2Years">1-2Years</option>
                            <option value ="3-5Years">3-5Years</option>
                            <option value ="5-7Years">5-7Years</option>
                            <option value ="Above">7 Above</option>
                        </select> 

                    </div>

                    <input type="submit" value="Submit" name="submit" class="btn btn-primary btn-lg"onclick="SetCookie()">
                </div>
        </div>
    </form>
</div>
</div>
<br>
</section>
<section id="bottom">
    <div class="container wow fadeInDown" data-wow-duration="1000ms" data-wow-delay="600ms">
        <div class="row">
            <div class="col-md-3 col-sm-6">
                <div class="widget">
                    <h3>Company</h3>
                    <ul>
                        <li><a href="#">About us</a></li>
                        <li><a href="#">We are hiring</a></li>
                        <li><a href="#">Meet the team</a></li>
                        <li><a href="#">Copyright</a></li>
                        <li><a href="#">Terms of use</a></li>
                        <li><a href="#">Privacy policy</a></li>
                        <li><a href="#">Contact us</a></li>
                    </ul>
                </div>    
            </div><!--/.col-md-3-->

            <div class="col-md-3 col-sm-6">
                <div class="widget">
                    <h3>Support</h3>
                    <ul>
                        <li><a href="#">Faq</a></li>
                        <li><a href="#">Blog</a></li>
                        <li><a href="#">Forum</a></li>
                        <li><a href="#">Documentation</a></li>
                        <li><a href="#">Refund policy</a></li>
                        <li><a href="#">Ticket system</a></li>
                        <li><a href="#">Billing system</a></li>
                    </ul>
                </div>    
            </div><!--/.col-md-3-->

            <div class="col-md-3 col-sm-6">
                <div class="widget">
                    <h3>Developers</h3>
                    <ul>
                        <li><a href="#">Web Development</a></li>
                        <li><a href="#">SEO Marketing</a></li>
                        <li><a href="#">Theme</a></li>
                        <li><a href="#">Development</a></li>
                        <li><a href="#">Email Marketing</a></li>
                        <li><a href="#">Plugin Development</a></li>
                        <li><a href="#">Article Writing</a></li>
                    </ul>
                </div>    
            </div><!--/.col-md-3-->

            <div class="col-md-3 col-sm-6">
                <div class="widget">
                    <h3>Our Partners</h3>
                    <ul>
                        <li><a href="#">Adipisicing Elit</a></li>
                        <li><a href="#">Eiusmod</a></li>
                        <li><a href="#">Tempor</a></li>
                        <li><a href="#">Veniam</a></li>
                        <li><a href="#">Exercitation</a></li>
                        <li><a href="#">Ullamco</a></li>
                        <li><a href="#">Laboris</a></li>
                    </ul>
                </div>    
            </div><!--/.col-md-3-->
        </div>
    </div>
</section><!--/#bottom-->

<footer id="footer" class="midnight-blue">
    <div class="container">
        <div class="row">
            <div class="col-sm-6">
                &copy; 2015 <a target="_blank" href="https://accounts.google.com">EDventure</a>. All Rights Reserved.
            </div>
            <div class="col-sm-6">
                <ul class="pull-right">
                    <li><a href="index.jsp">Home</a></li>
                    <li><a href="about.jsp">About Us</a></li>
                    <li><a href="contact.jsp">Contact Us</a></li>

                </ul>
            </div>
        </div>
    </div>
</footer><!--/#footer-->

<script src="js/jquery.js"></script>
<script src="js/bootstrap.min.js"></script>
<script src="js/jquery.prettyPhoto.js"></script>
<script src="js/jquery.isotope.min.js"></script>
<script src="js/main.js"></script>
<script src="js/wow.min.js"></script>

</body>
</html>
