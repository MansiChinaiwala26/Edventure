<%-- 
    Document   : contact
    Created on : Oct 2, 2015, 3:30:35 AM
    Author     : pppppp
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta name="description" content="">
        <meta name="author" content="">
        <title>EDventure</title>

        <!-- core CSS -->
        <link href="css/bootstrap.min.css" rel="stylesheet">
        <link href="css/font-awesome.min.css" rel="stylesheet">
        <link href="css/prettyPhoto.css" rel="stylesheet">
        <link href="css/animate.min.css" rel="stylesheet">
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

    <body>
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
                            <div class="top-number"><p><i class="fa fa-phone-square"></i>  +7600015802</p></div>
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

        <br />
        <br />
        <br />
        <section id="contact-page">
            <div class="container">
                <div class="center">        
                    <h2>Drop Your Message</h2>
                </div> 
                <div class="row contact-wrap"> 
                    <div class="status alert alert-success" style="display: none"></div>
                    <form id="main-contact-form123" class="contact-form" name="contact-form" 
                          method="post" action="sendemail.jsp">
                        <div class="col-sm-5 col-sm-offset-1">
                            <div class="form-group">
                                <label>First Name *</label>
                                <input type="text" name="fname" class="form-control" required="required">
                            </div>
                            <div class="form-group">
                                <label>Last Name *</label>
                                <input type="text" name="lname" class="form-control" required="required">
                            </div>

                            <div class="form-group">
                                <label>Email *</label>
                                <input type="email" name="email" class="form-control" required="required">
                            </div>
                            <div class="form-group">
                                <label>Phone</label>
                                <input type="number" name="pname" class="form-control">
                            </div>

                        </div>
                        <div class="col-sm-5">
                            <div class="form-group">
                                <label>Subject *</label>
                                <input type="text" name="subject" class="form-control" required="required">
                            </div>
                            <div class="form-group">
                                <label>Message *</label>
                                <textarea name="message" id="message" required="required" class="form-control" rows="8"></textarea>
                            </div>                        
                            <div class="form-group">
                                <input type="submit" name="submit" class="btn btn-primary btn-lg" required="required" value='Submit Message'/>
                            </div>
                        </div>
                    </form> 
                </div><!--/.row-->
            </div><!--/.container-->
        </section><!--/#contact-page-->

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
                        &copy; 2018 <a target="_blank" href="https://accounts.google.com">EDventure</a>. All Rights Reserved.
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
