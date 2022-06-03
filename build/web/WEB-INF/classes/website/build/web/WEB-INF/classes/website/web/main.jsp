
<%@ page import="java.io.*,java.util.*,java.sql.Connection,java.sql.DriverManager,java.sql.Statement,java.sql.ResultSet,java.util.Scanner" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    // Create cookies for first and last names.      
    Cookie firstName = new Cookie("fname",
            request.getParameter("fname"));
    Cookie lastName = new Cookie("lname",
            request.getParameter("lname"));
    Cookie Gender = new Cookie("gender",
            request.getParameter("gender"));

    Cookie bd = new Cookie("bdate",
            request.getParameter("bdate"));
    Cookie Add = new Cookie("add",
            request.getParameter("add"));
    Cookie State = new Cookie("sname",
            request.getParameter("sname"));
    Cookie City = new Cookie("cname",
            request.getParameter("cname"));
Cookie email = new Cookie("ename",
            request.getParameter("ename"));
    
    Cookie Ctname = new Cookie("ctname",
            request.getParameter("ctname"));
    Cookie Qualification = new Cookie("qname",
            request.getParameter("qname"));
    Cookie FavTeacher = new Cookie("fav",
            request.getParameter("fav"));
    Cookie Uname = new Cookie("uname",
            request.getParameter("uname")); // Set expiry date after 24 Hrs for both the cookies.
    Cookie Pname = new Cookie("pname",
            request.getParameter("pname")); // Set expiry date after 24 Hrs for both the cookies.

    firstName.setMaxAge(60 * 60 * 24);
    lastName.setMaxAge(60 * 60 * 24);
    Gender.setMaxAge(60 * 60 * 24);
    bd.setMaxAge(60 * 60 * 24);
    Add.setMaxAge(60 * 60 * 24);
    State.setMaxAge(60 * 60 * 24);
    City.setMaxAge(60 * 60 * 24);

    email.setMaxAge(60 * 60 * 24);
    Ctname.setMaxAge(60 * 60 * 24);
    Qualification.setMaxAge(60 * 60 * 24);
    FavTeacher.setMaxAge(60 * 60 * 24);
    Uname.setMaxAge(60 * 60 * 24);
    Pname.setMaxAge(60 * 60 * 24);
    // Add both the cookies in the response header.
    response.addCookie(firstName);
    response.addCookie(lastName);
    response.addCookie(Gender);
    response.addCookie(bd);
    response.addCookie(Add);
    response.addCookie(State);
    response.addCookie(City);

    response.addCookie(email);
    response.addCookie(Ctname);
    response.addCookie(Qualification);
    response.addCookie(FavTeacher);
    response.addCookie(Uname);
    response.addCookie(Pname);

%>

<html>
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta name="description" content="">
        <meta name="author" content="">
        <title>Home | EDventure</title>
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
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
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
                            <li><a href="register.jsp">Registration</a></li>
                        </ul>
                    </div><!--/.container-->
            </nav><!--/nav-->

        </header><!--/header-->

    <center>
        <%!                Integer in = 0;
            Integer r = -1;
            String gender;
            
        %>
        <%

            String fname = request.getParameter("fname");
            String lname = request.getParameter("lname");
            gender = request.getParameter("gender");
            String bdate = request.getParameter("bdate");
            String add = request.getParameter("add");
            String sname = request.getParameter("sname");
            String cname = request.getParameter("cname");
            String ename = request.getParameter("ename");
            String ctname = request.getParameter("ctname");
            String qname = request.getParameter("qname");
            String fav = request.getParameter("fav");
            String uname = request.getParameter("uname");
            String pname = request.getParameter("pname");


            Connection cn = null;
            try {
                Class.forName("com.mysql.jdbc.Driver");
                cn = DriverManager.getConnection("jdbc:mysql://localhost:3306/edventure", "root", "");
                Statement stm = cn.createStatement();
                String query = "INSERT INTO student(LastName , FirstName , Gender , DateOfBirth , Address , State, City , Email , Contactno , Qualification ,FavTeacher, User_ID , Password)"
                        + " values ('" + lname + "','" + fname + "', '" + gender + "','" + bdate + "','" + add + "','" + sname + "','" + cname + "','" + ename + "',"
                        + "'" + ctname + "','" + qname + "','" + fav + "','" + uname + "','" + pname + "')";
                // String query = "UPDATE student SET First_Name = 'Raj',Last_Name = 'Chinaiwala',Gender = 'Male',Date_Of_Birth = '1998/04/04',Address = 'Nanpura',City = 'Surat',State = 'Gujarat',Email = 'rajchinaiwala@gmail.com',Contact_no = '7864764856',Qulification = 'Diploma',User_Id = 'a',Password = 'a' WHERE ID=15"
                in = stm.executeUpdate(query, Statement.RETURN_GENERATED_KEYS);

                ResultSet rs = stm.getGeneratedKeys();
                if (rs.next()) {
                    r = rs.getInt(1);
                }
                String to = request.getParameter("ename");

                String msg = "You have Successfully Registerted to EDventure";

        %>
        <%--new SendEmail(msg, to);--%>
        <input type="hidden" name="IDX" value="<%=r%>">
        <input type="hidden" name="gend" value="<%=gender%>">
        
    </center>
    <% stm.close();
            cn.close();
        } catch (Exception e) {
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
                    <p><b>Your State:</b>
                        <%= request.getParameter("sname")%>
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
                <td
                    <p><b>Your Favourite Teacher:</b>
                        <%= request.getParameter("fav")%>
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
        <form name="details" method="POST" action="userlogin.jsp">

            <input type="submit" value="Confirm" name="confirm" formaction="regconfirm.jsp" onclick="SetCookie()"class="btn btn-primary btn-lg">
            <input type="submit" value="Edit" name="edit" formaction="update.jsp" onclick="SetCookie()"class="btn btn-primary btn-lg">
            <input type="hidden" name="gend" value="<%=gender%>">
            
        </form>
    </center>
    <br>
    <br>
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
