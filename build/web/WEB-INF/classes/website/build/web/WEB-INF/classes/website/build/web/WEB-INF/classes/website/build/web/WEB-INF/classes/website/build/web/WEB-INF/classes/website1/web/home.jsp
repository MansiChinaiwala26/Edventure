<%@ page import="java.io.*,java.util.*,java.sql.Connection,java.sql.DriverManager,java.sql.Statement,java.sql.ResultSet,java.util.Scanner,java.sql.PreparedStatement" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>
    <head>
        <title>JSP Page</title>
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


   

        <div  style="background-image: url(images/bg_services.jpg)">
             <table style="float:left" border="2" width="200" cellspacing="2" cellpadding="5">
                        <tr>
                            <td>

                                <ul id="navlist">
                                    <li><a href="home.jsp">Home</a></li><br></br>
                                    <li><a href="about.jsp">About Us</a></li><br></br>
                                    <li><a href="services.jsp">Services</a></li><br></br>
                                    <li><a href="Portfolio.jsp">Portfolio</a></li><br></br>
                                    <li><a href="contact.jsp">Contact</a></li>
                               </ul>
                            </td>

                        </tr>
                    </table>
                     <table style="float: right" border="2"  width="300" cellspacing="2" cellpadding="10" background="website4.jpg">
                         <td height="24" colspan="4"><font size="5" color="#B40404"><center><b>Score Board</b></center></font></td>   
                                <tr >
                                    <th><font color="white">Name</font></th>
                                    <th><font color="white">Score</font></th>
                                </tr>
                                <%
                                    Connection cn = null;

                                    try {
                                        Class.forName("com.mysql.jdbc.Driver");
                                        cn = DriverManager.getConnection("jdbc:mysql://localhost:3306/edventure", "root", "");
                                        Statement st = cn.createStatement();
                                        String q = "SELECT * FROM marks";
                                        ResultSet r;
                                        r = st.executeQuery(q);

                                        while (r.next()) {
                                            int id = r.getInt("ID");
                                            String name = r.getString("Name");
                                            int marks = r.getInt("Marks");

                                %>

                                <tr>
                                    <td><font color="white"><%=name%> </font></td>
                                    <td><font color="white"><%=marks%> </font></td>
                                </tr>
                                <% }
                                    } catch (Exception e) {
                                        e.printStackTrace();

                                    }
                                %>
                                </body>
                            </table>
                            </aside>
                            &nbsp;&nbsp;
                              <center>
                      <class id="bg">
                        <table cellpadding="5">
                            <tr  wdth ="100%">
                            <tr><td></td></tr>
                            <tr><td></td></tr>
                            <td height="24" colspan="4"><font face="Algerian" color="white" size="12">Welcome to EDventure</font></td>
                            <tr><td></td></tr>
                            <tr><td></td></tr>
                        </table>
                     </class>
                    </center>
              

            <div class="container">
                <div class="row slide-margin">
                    <div class="col-sm-6">
                        <div class="carousel-content">

                        </div>
                    </div>
                   

                    
                        </div>
                    </div>
^
                
                            <br>
                            <br> 
       
    <div class="row">
        <div class="col-md-4 wow fadeInDown">
            <div class="clients-comments text-center">
                <img src="images/client1.png" class="img-circle" alt="">
                <h3>If you want to achieve greatness stop asking for permission..</h3>
                <h4><span>-EDventure /</span>  .com</h4>
            </div>
        </div>
        <div class="col-md-4 wow fadeInDown">
            <div class="clients-comments text-center">
                <img src="images/client2.png" class="img-circle" alt="">
                <h3>You don't have to be a genius or a visionary or even a college graduate to be successful. You just need a framework and a dream.

                </h3>
                <h4><span>-EDventure /</span>  .com</h4>
            </div>
        </div>
        <div class="col-md-4 wow fadeInDown">
            <div class="clients-comments text-center">
                <img src="images/client3.png" class="img-circle" alt="">
                <h3>Gratitude can transform common days into thanks givings, turn routine jobs into joy, and change ordinary opportunities into blessings.
                </h3>
                <h4><span>-EDventure /</span>  .com</h4>
            </div>
        </div>
    </div>

</div><!--/.container-->


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
                &copy; 2016 <a target="_blank" href="https://accounts.google.com">EDventure</a>. All Rights Reserved.
            </div>
            <div class="col-sm-6">
                <ul class="pull-right">
                    <li><a href="home.jsp">Home</a></li>
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
