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
                    <td><input type="text" name="fname" value="${cookie.fname.value}"</td>
                </tr>
                <tr>
                    <th>Last Name  </th>
                    <td><input type="text" name="lname" required="required" value="${cookie.lname.value}"></td>
                </tr>
                <tr>

                    <th>Gender 

                    </th>


                    <%

                        if (request.getParameter("gend").equalsIgnoreCase("Female")) {

                    %>

                    <td><input type="radio" name="gender" value="Male"/>Male <input type="radio" name="gender" value="Female" checked="checked"/>Female </td>


                    <%} else if (request.getParameter("gend").equalsIgnoreCase("Male")) {%>

                    <td><input type="radio" name="gender" value="Male" checked="checked"/>Male <input type="radio" name="gen" value="Female"/>Female </td>

                    <% }%>

                </tr>
                </tr>
                <tr>
                    <th>Date of Birth  </th>
                    <td><input type="datetime" name="bdate" placeholder="YYYY/MM/DD" required="required"value="${cookie.bdate.value}"></td>
                </tr>
                <tr>
                    <th>Address  </th>
                    <td><input type="textbox" name="add" required="required"value="${cookie.add.value}"></td>
                </tr>
                
                <tr>
            
            <th>State </th>
            <td><select name="sname" class="form-control" value="${cookie.sname.value}" required="required">

                                <option>Arunachal Pradesh</option>
                                <option>Assam</option>
                                <option>Bihar</option>
                                <option>Goa</option>
                                <option>Chhattisgarh</option>
                                <option>Gujarat</option>
                                <option>Haryana</option>
                                <option>Himachal Pradesh</option>
                                <option>Jammu & Kashmir</option>
                                <option>Jharkhand</option>
                                <option>Karnataka</option>
                                <option>Kerala</option>
                                <option>Madhya Pradesh</option>
                                <option>Maharashtra</option>
                                <option>Manipur</option>
                                <option>Meghalaya</option>
                                <option>Mizoram</option>
                                <option>Nagaland</option>
                                <option>Orissa</option>
                                <option>Punjab</option>
                                <option>Rajasthan</option>
                                <option>Sikkim</option>
                                <option>Tamil Nadu</option>
                                <option>Tripura</option>
                                <option>Uttar Pradesh</option>
                                <option>Uttarakhand</option>
                                <option>West Bengal</option>
                    </select>
                </tr>
                <tr>
                    <th>City </th>
                    <td>                        
                        <select name="cname"  class="form-control" required="required"value="${cookie.cname.value}">
                            <option>Abhayapuri</option>
                                <option>Achabbal</option>
                                <option>Amritsar</option>
                                <option>Ahmedabad</option>
                                <option>Bharuch</option>
                                <option>Bhavnagar</option>
                                <option>Bhopal</option>
                                <option>Chandigarh</option>
                                <option>Chennai</option>
                                <option>Daman</option>
                                <option>Diu </option>
                                <option>Faridabad</option>
                                <option>Gandhinagar</option>
                                <option>Gwalior</option>
                                <option>Haridwar</option>
                                <option>Hyderabad</option>
                                <option>Indore</option>
                                <option>Jaipur</option>
                                <option>Jammu</option>
                                <option>Jamnagar</option>
                                <option>Junagadh</option>
                                <option>Kolkata</option>
                                <option>Kutch</option>
                                <option>Lucknow </option>
                                <option>Ludhiana</option>
                                <option>Mainpuri</option>
                                <option>Mumbai</option>
                                <option>Mysore</option>
                                <option>Navsari</option>
                                <option>Nagpur</option>
                                <option>New Delhi</option>
                                <option>Osmanabad</option>
                                <option>Panipat</option>
                                <option>Porbandar</option>
                                <option>Pune</option>
                                <option>Raipur</option>
                                <option>Solapur</option>
                                <option>Surat</option>
                                <option>Srinagar</option>
                                <option>Surat</option>
                                <option>Thiruvananthapuram</option>
                                <option>Thane</option>
                                <option>Udaipur</option>
                                <option>Ujjain</option>
                                <option>Vadodara</option>
                                <option>Valsad</option>
                                <option>Yavatmal</option>
                                <option>Zunheboto</option>
                                
                        </select>
</td>
                </tr>
                <tr>
                <th>Email Id </th>
                <td><input type="email" name="ename" required="required"value="${cookie.ename.value}"></td>
            </tr>
<tr>
                <th>Contact No </th>
                <td><input type="number" name="ctname" required="required"value="${cookie.ctname.value}"></td>
            </tr>

            
                        <tr>
                <th>Qualification </th>
                <td><select name="qname" class="form-control" required="required" value="${cookie.qname.value}">
                                 <option>Diploma in Computer Engg.</option>
                                  <option>Diploma in Mechanical Engg.</option>
                                   <option>Diploma in Automobile Engg.</option>
                                    <option>Diploma in Civil Engg.</option>
                                     <option>Diploma in Electrical Engg.</option>
                                      <option>Diploma in Chemical Engg.</option>
                                       <option>Diploma in Information Engg.</option>
                                        <option>BTech in Computer Engg.</option>
                                  <option>BTech in Mechanical Engg.</option>
                                   <option>BTech in Automobile Engg.</option>
                                   <option>BTech in Civil Engg.</option>
                                     <option>BTech in Electrical Engg.</option>
                                      <option>BTech in Chemical Engg.</option>
                                       <option>BTech in Information Engg.</option>
                                       <option>MTech in Computer Engg.</option>
                                <option>MTech in Mechanical Engg.</option>
                                   <option>MTech in Automobile Engg.</option>
                                   <option>MTech in Civil Engg.</option>
                                     <option>MTech in Electrical Engg.</option>
                                      <option>MTech in Chemical Engg.</option>
                                       <option>MTech in Information Engg.</option>
                    </select>
                                       </td>
            </tr>

            <tr>
                <th>Your Favourite Teacher </th>
                <td><input type="text" name="fav" required="required" value="${cookie.fav.value}"></td>
            </tr>
            <tr>
                <th>User Id </th>
                <td><input type="text" name="uname" required="required"value="${cookie.uname.value}"></td>
            </tr>
            <tr>
                <th>Password </th>
                <td><input type="password" name="pname" required="required"value="${cookie.pname.value}"></input></td>
            </tr>
            <tr>
            
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
