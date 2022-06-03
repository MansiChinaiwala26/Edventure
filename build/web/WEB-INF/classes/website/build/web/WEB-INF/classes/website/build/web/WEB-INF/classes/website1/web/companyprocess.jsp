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
                             <li class="active"><a href="index.jsp">Home</a></li>   
                             <li><a href="companylogin.jsp">Login</a></li>
                       
                        </ul>
                    </div>
                </div><!--/.container-->
            </nav><!--/nav-->

        </header><!--/header-->
    <center>
        <%
            Cookie comName = new Cookie("coname",
                    request.getParameter("coname"));
            Cookie fieldName = new Cookie("field",
                    request.getParameter("field"));
            
            Cookie addName = new Cookie("address",
                    request.getParameter("address"));
            Cookie stateName = new Cookie("state",
                    request.getParameter("state"));

            Cookie cityName = new Cookie("city",
                    request.getParameter("city"));
            
            Cookie websiteName = new Cookie("emname",
                    request.getParameter("emname"));
            
            Cookie emailName = new Cookie("ename",
                    request.getParameter("ename"));

            Cookie cntName = new Cookie("cnt",
                    request.getParameter("cnt"));
            
            Cookie ftName = new Cookie("ftname",
                    request.getParameter("ftname"));
            Cookie usName = new Cookie("usname",
                    request.getParameter("usname"));
            Cookie psName = new Cookie("psname",
                    request.getParameter("psname"));

            comName.setMaxAge(60 * 60 * 24);
            fieldName.setMaxAge(60 * 60 * 24);
            addName.setMaxAge(60 * 60 * 24);
            stateName.setMaxAge(60 * 60 * 24);
            cityName.setMaxAge(60 * 60 * 24);
            websiteName.setMaxAge(60 * 60 * 24);
            emailName.setMaxAge(60 * 60 * 24);
            cntName.setMaxAge(60 * 60 * 24);
            ftName.setMaxAge(60 * 60 * 24);
            usName.setMaxAge(60 * 60 * 24);          
            psName.setMaxAge(60 * 60 * 24);

            response.addCookie(comName);
            response.addCookie(fieldName);
            response.addCookie(addName);
            response.addCookie(stateName);
            response.addCookie(cityName);
            response.addCookie(websiteName);
            response.addCookie(emailName);
            response.addCookie(cntName);
            response.addCookie(ftName);
            response.addCookie(usName);          
            response.addCookie(psName);
        %>
        <%!                Integer in = 0;
            Integer r = -1;
        %>
        <%

            String coname = request.getParameter("coname");
            String field = request.getParameter("field");
            String address = request.getParameter("address");
            String state = request.getParameter("state");
            String city = request.getParameter("city");
            String emname = request.getParameter("emname");
            String ename = request.getParameter("ename");
            String cnt = request.getParameter("cnt");
            String ftname = request.getParameter("ftname");
            String usname = request.getParameter("usname");
            String psname = request.getParameter("psname");

            Connection cn = null;
            try {
                Class.forName("com.mysql.jdbc.Driver");
                cn = DriverManager.getConnection("jdbc:mysql://localhost:3306/edventure", "root", "");
                Statement st = cn.createStatement();
                String query = "INSERT INTO companydisplay(Companyname,Field,Address,State,City,Website,Email,Contactno,YourFavouriteTeacher,User_Id,Password)"
                        + " values ('" + coname + "','" + address + "','" + state + "','" + city + "','" + emname + "','" + ename + "',"
                        + "'" + cnt + "','" + ftname + "','" + usname + "','" + psname + "')";
                // String query = "UPDATE student SET First_Name = 'Raj',Last_Name = 'Chinaiwala',Gender = 'Male',Date_Of_Birth = '1998/04/04',Address = 'Nanpura',City = 'Surat',State = 'Gujarat',Email = 'rajchinaiwala@gmail.com',Contact_no = '7864764856',Qulification = 'Diploma',User_Id = 'a',Password = 'a' WHERE ID=15"
                st.executeUpdate(query);
                in = st.executeUpdate(query, Statement.RETURN_GENERATED_KEYS);

                ResultSet rs = st.getGeneratedKeys();
                if (rs.next()) {
                    r = rs.getInt(1);
                }

        %>
    </center>
     <input type="hidden" name="IDX" value="<%=r%>">
    <%


            st.close();
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
            <td height="24" colspan="4"><div align="center" class="style4"><font size="12">Registered Successfully</font></div></td>
            <tr><td></td></tr>
            <tr><td></td></tr>
        </table>
        <table cellpadding="5">
            <tr  wdth ="100%">
            <tr>
                <td>
                    <p><b>Your Company Name:</b>
                        <%= request.getParameter("coname")%>
                    </p>
                </td>
            </tr>
            <tr>
                <td>
                    <p><b>Your Company Field:</b>
                        <%= request.getParameter("field")%>
                    </p>
                </td>
            </tr>
            <tr>
                <td>
                    <p><b>Your Company Address:</b>
                        <%= request.getParameter("address")%>
                    </p>
                </td>
            </tr>
            
            <tr>
                <td>
                    <p><b>Your Company State:</b>
                        <%= request.getParameter("state")%>
                    </p>
                </td>
            </tr>
            <tr>
                <td>
                    <p><b>Your Company City:</b>
                        <%= request.getParameter("city")%>
                    </p>
                </td>
            </tr>
            <tr>
                <td>
                    <p><b>Your Company Website:</b>
                        <%= request.getParameter("emname")%>
                    </p>
                </td>
            </tr>
            <tr>
                <td>
                    <p><b>Your Company Email Id:</b>
                        <%= request.getParameter("ename")%>
                    </p>
                </td>
            </tr>
            <tr>
                <td>
                    <p><b>Your Company Contact No:</b>
                        <%= request.getParameter("cnt")%>
                    </p>
                </td>
            </tr>
            <tr>
                <td>
                    <p><b>Your Company Favourite Teacher:</b>
                        <%= request.getParameter("ftname")%>
                    </p>
                </td>
            </tr>
            <tr>
                <td>
                    <p><b>Your Company Id:</b>
                        <%= request.getParameter("usname")%>
                    </p>
                </td>
            </tr>
            <tr>
                <td>
                    <p><b>Password:</b>
                        <%= request.getParameter("psname")%>
                    </p>
                </td>
            </tr>
        </table> 
        <form name="details" method="POST" action="companylogin.jsp">

            <input type="submit" value="Confirm" name="submit" formaction="companylogin.jsp" onclick="SetCookie()" class="btn btn-primary btn-lg">
            <input type="submit" value="Edit" name="edit" formaction="companyupdate.jsp" onclick="SetCookie()" class="btn btn-primary btn-lg">
   
    
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
