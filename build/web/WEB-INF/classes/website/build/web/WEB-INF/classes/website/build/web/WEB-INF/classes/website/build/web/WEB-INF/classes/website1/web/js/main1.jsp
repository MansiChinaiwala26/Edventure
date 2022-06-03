<%-- 
    Document   : main
    Created on : 18 Aug, 2015, 8:30:01 PM
    Author     : Abc
--%>
<%@ page import="java.io.*,java.util.*,java.sql.Connection,java.sql.DriverManager,java.sql.Statement,java.sql.ResultSet,java.util.Scanner" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
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
   
        <title>JSP Page</title>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body class="homepage">
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
                                    <li><a href="#"><i class="fa fa-facebook"></i></a></li>
                                    <li><a href="#"><i class="fa fa-twitter"></i></a></li>
                                    <li><a href="#"><i class="fa fa-linkedin"></i></a></li> 
                                    <li><a href="#"><i class="fa fa-dribbble"></i></a></li>
                                    <li><a href="#"><i class="fa fa-skype"></i></a></li>
                                </ul>
                                <div class="search">
                                    <form role="form">
                                        <input type="text" class="search-form" autocomplete="off" placeholder="Search">
                                        <i class="fa fa-search"></i>
                                    </form>
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
                        <a class="navbar-brand" href="index.html"><img src="images/edventurelogo.png" alt="logo"></a>
                    </div>

                    <div class="collapse navbar-collapse navbar-right">
                        <ul class="nav navbar-nav">
                            <li class="active"><a href="index.jsp">Home</a></li>
                            <li><a href="about-us.html">About Us</a></li>
                            <li><a href="register.jsp">Registration</a></li>
                            <li><a href="portfolio.html">Portfolio</a></li>
                            <li class="dropdown">
                                <a href="#" class="dropdown-toggle" data-toggle="dropdown">Pages <i class="fa fa-angle-down"></i></a>
                                <ul class="dropdown-menu">
                                    <li><a href="blog-item.html">Blog Single</a></li>
                                    <li><a href="pricing.html">Pricing</a></li>
                                    <li><a href="404.html">404</a></li>
                                    <li><a href="shortcodes.html">Shortcodes</a></li>
                                </ul>
                            </li>
                            <li><a href="blog.html">Blog</a></li> 
                            <li><a href="contact.jsp">Contact</a></li>                        
                        </ul>
                    </div>
                </div><!--/.container-->
            </nav><!--/nav-->

        </header><!--/header-->
        
        <center>
        
         <%
            
                String fname = request.getParameter("fname");
                String lname = request.getParameter("lname");
                String gender = request.getParameter("gender");
                String bdate = request.getParameter("bdate");
                String add = request.getParameter("add");
                String cname = request.getParameter("cname");
                String sname = request.getParameter("sname");
                String ename = request.getParameter("ename");
                String ctname = request.getParameter("ctname");
                String qname = request.getParameter("qname");
                String uname = request.getParameter("uname");
                String pname = request.getParameter("pname");
                  
            Connection cn = null;
            try {
                Class.forName("com.mysql.jdbc.Driver");
                cn = DriverManager.getConnection("jdbc:mysql://localhost:3306/edventure", "root", "");
                  Statement st = cn.createStatement();
                  Statement st2 = cn.createStatement();
                String query = "insert into registration(FirstName,LastName,Gender,DateOfBirth,Address,City,State,Email,Contactno,Qualification,User_id,Password) values ('"+fname+"','"+lname+"','"+gender+"','"+bdate+"','"+add+"','"+cname+"','"+sname+"','"+ename+"',"+ctname+",'"+qname+"','"+uname+"','"+pname+"')";
             // String query = "UPDATE student SET First_Name = 'Raj',Last_Name = 'Chinaiwala',Gender = 'Male',Date_Of_Birth = '1998/04/04',Address = 'Nanpura',City = 'Surat',State = 'Gujarat',Email = 'rajchinaiwala@gmail.com',Contact_no = '7864764856',Qulification = 'Diploma',User_Id = 'a',Password = 'a' WHERE ID=15"
                //INSERT INTO `edventure`.`registration` (`ID`, `FirstName`, `LastName`, `Gender`, `DateOfBirth`, `Address`, `City`, `State`, `Email`, `Contactno`, `Qualification`, `User_id`, `Password`) VALUES (NULL, 'Nidhi', 'Kamdar', 'Female', '01/01/1992', 'Nidhi_Address', 'Nidhi_City', 'Nidhi_State', 'nidhi@gmail.com', '1234567891', 'Diplo', 'nidhi@gmail.com', 'nidhi');  
                st.executeUpdate(query);
                  String query1 = "insert into login(username,password) values ('"+uname+"','"+pname+"')";
                    st2.executeUpdate(query1);
            %>
    </center>
            <%
                
                
    st.close();
    cn.close();
            }
            catch(Exception e)
            {
               e.printStackTrace();
            }
        %>
    <center>
    <table cellpadding="5">
                <tr  wdth ="100%">
                        <tr><td></td></tr>
                        <tr><td></td></tr>
                            <td height="24" colspan="4"><div align="center" class="style4"><font size="12">Welcome to EDventure</font></div></td>
                            <tr><td></td></tr>
                            <tr><td></td></tr>
                        </tr>
</table>
    </center>
  <center>
      <table cellpadding="5">
       <tr  wdth ="100%">
       <tr>
           <td
        <p><b>Your First Name:</b>
            <%= request.getParameter("fname")%>
        </p>
           </td>
       </tr>
       <tr>
           <td>
        <p><b>Your Last Name:</b>
            <%= request.getParameter("lname")%>
        </p>
        </td>
       </tr>
       <tr>
           <td>
        <p><b>Your Gender:</b>
            <%= request.getParameter("gender")%>
        </p>
           </td>
       </tr>
       <tr>
           <td>
        <p><b>Your Birth Date:</b>
            <%= request.getParameter("bdate")%>
        </p>
           </td>
       </tr>
       <tr>
           <td>
        <p><b>Your Address:</b>
            <%= request.getParameter("add")%>
        </p>
           </td>
       </tr>
       <tr>
           <td>
        <p><b>Your City:</b>
            <%= request.getParameter("cname")%>
        </p
           </td>
       </tr>
       <tr>
           <td>
        <p><b>Your State:</b>
            <%= request.getParameter("sname")%>
        </p>
           </td>
       </tr>
       <tr>
           <td>
        <p><b>Your Email Id:</b>
            <%= request.getParameter("ename")%>
        </p>
           </td>
       </tr>
       <tr>
           <td>
        <p><b>Your Contact No:</b>
            <%= request.getParameter("ctname")%>
        </p>
           </td>
       </tr>
       <tr>
           <td
        <p><b>Your Qualification:</b>
            <%= request.getParameter("qname")%>
        </p>
           </td>
       </tr>
       <tr>
           <td>
        <p><b>Your User Id:</b>
            <%= request.getParameter("uname")%>
        </p>
           </td>
       </tr>
       <tr>
           <td>
        <p><b>Password:</b>
            <%= request.getParameter("pname")%>
        </p>
           </td>
       </tr>
      </table>
    </center>
        <form name="details" method="POST" action="update.jsp">
        <center>
         <input type="submit" value="Edit" name="edit">
          
        </center>
            <br></br>
            <br></br>
    <section id = "bottom">
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
                    &copy; 2013 <a target="_blank" href="http://shapebootstrap.net/" title="Free Twitter Bootstrap WordPress Themes and HTML templates">EDventure</a>. All Rights Reserved.
                </div>
                <div class="col-sm-6">
                    <ul class="pull-right">
                        <li><a href="#">Home</a></li>
                        <li><a href="#">About Us</a></li>
                        <li><a href="#">Faq</a></li>
                        <li><a href="#">Contact Us</a></li>
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
