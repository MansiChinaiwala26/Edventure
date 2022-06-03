<%@page import="java.sql.PreparedStatement"%>
<%@ page import="java.io.*,java.util.*,java.sql.Connection,java.sql.DriverManager,java.sql.Statement,java.sql.ResultSet,java.util.Scanner" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta name="description" content="">
        <meta name="author" content="">
        <title>Home</title>
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
    <header id="header">
        <div class="top-bar">
            <div class="container">
                <div class="row">
                    <div class="col-sm-6 col-xs-4">
                        <div class="top-number"><p><i class="fa fa-phone-square"></i></p></div>
                    </div>
                    <div class="col-sm-6 col-xs-8">
                        <div class="social">
                            <ul class="social-share">
                                <li><a href="https://www.facebook.com/EDventure-533619816791577/timeline/"><i class="fa fa-facebook"></i></a></li>
                                <li><a href="https://twitter.com/EDventure03"><i class="fa fa-twitter"></i></a></li>
                                <li><a href="https://in.linkedin.com/in/EDventure"><i class="fa fa-linkedin"></i></a></li> 
                                <li><a href="https://dribbble.com/EDventure03"><i class="fa fa-dribbble"></i></a></li>

                            </ul>
                            <div class="search">
                                
                            </div>
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
                        <li class="active"><a href="index.jsp">Home</a></li>
                       <li><a href="userlogin.jsp">Login</a></li>
                    </ul>
                </div>
            </div><!--/.container-->
        </nav><!--/nav-->

    </header><!--/header-->

</head>
<%--

    String fname = null;
    fname = request.getParameter("fname");
    String lname = null;
    lname = request.getParameter("lname");
    String gender = null;
    gender = request.getParameter("gender");
    String bdate = null;
    bdate = request.getParameter("bdate");
    String add = null;
    add = request.getParameter("add");
    String cname = null;
    cname = request.getParameter("cname");
    String sname = null;
    sname = request.getParameter("sname");
    String ename = null;
    ename = request.getParameter("ename");
    String ctname = null;
    ctname = request.getParameter("ctname");
    String qname = null;
    qname = request.getParameter("qname");
    String fav = null;
    fav = request.getParameter("fav");
    String uname = null;
    uname = request.getParameter("uname");
    String pname = null;
    pname = request.getParameter("pname");

--%>
<body>
<center>
    <%--  Cookie cookie = null;
        Cookie[] cookies = null;
        // Get an array of Cookies associated with this domain
        cookies = request.getCookies();
        if (cookies != null) {
            for (int i = 0; i < cookies.length; i++) {
                cookie = cookies[i];
            }
        } else {
        }
    --%>

    <form name="details" method="GET" action="edit.jsp">
        <table cellpadding="5">
            <tr>
                <th colspan="2"> Re-enter Your Detail Which You Want To Edit. </th>
            </tr>

            <tbody align="left">
                <tr>
                    <th>First Name  </th>
                    <td><input type="text" name="fn" value="${cookie.fname.value}"</td>
                </tr>
                <tr>
                    <th>Last Name  </th>
                    <td><input type="text" name="ln" required="required" value="${cookie.lname.value}"></td>
                </tr>
                <tr>

                    <th>Gender 

                    </th>


                    <%

                        if (request.getParameter("gend").equalsIgnoreCase("Female")) {

                    %>

                    <td><input type="radio" name="gen" value="Male"/>Male <input type="radio" name="gen" value="Female" checked="checked"/>Female </td>


                    <%} else if (request.getParameter("gend").equalsIgnoreCase("Male")) {%>

                    <td><input type="radio" name="gen" value="Male" checked="checked"/>Male <input type="radio" name="gen" value="Female"/>Female </td>

                    <% }%>

                </tr>
                </tr>
                <tr>
                    <th>Date of Birth  </th>
                    <td><input type="datetime" name="bdate" placeholder="YYYY/MM/DD" required="required"value="${cookie.bdate.value}"></td>
                </tr>
                <tr>
                    <th>Address  </th>
                    <td><input type="textbox" name="ad" required="required"value="${cookie.add.value}"></td>
                </tr>
                <tr>
                    <th>City </th>
                    <td>                        <%
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
</td>
                </tr>

                <tr>
            <input type="hidden"name="s1" value="${cookie.sname.value}">
            <%
                    String sname = request.getParameter("state");
                    %>
            <th>State </th>
            <td><select name="sn" required="required">


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
                </tr>
            <tr>
                <th>Email Id </th>
                <td><input type="email" name="en" required="required"value="${cookie.ename.value}"></td>
            </tr>
            <tr>
                <th>Contact No </th>
                <td><input type="number" name="ctn" required="required"value="${cookie.ctname.value}"></td>
            </tr>
            <tr>
                <th>Qualification </th>
                <td><input type="text" name="qn" required="required"value="${cookie.qname.value}"></td>
            </tr>

            <tr>
                <th>Your Favourite Teacher </th>
                <td><input type="text" name="fv" required="required" value="${cookie.fav.value}"></td>
            </tr>
            <tr>
                <th>User Id </th>
                <td><input type="text" name="un" required="required"value="${cookie.uname.value}"></td>
            </tr>
            <tr>
                <th>Password </th>
                <td><input type="password" name="pn" required="required"value="${cookie.pname.value}"></input></td>
            </tr>
            <tr>
            <tr>
                <th>Re-Password </th>
                <td><input type="password" name="rpwd" required="required"value="${cookie.rpname.value}"></input></td>
            </tr>
            <tr>
                <td align="center" colspan="2"><input type="submit" value="Submit" name="submit" class="btn btn-primary btn-lg" onclick="setCookie()"></td>
            </tr>
            </tbody>
        </table>
    </form>
</center>
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
