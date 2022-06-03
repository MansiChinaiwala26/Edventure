

<%@page import="javax.mail.internet.MimeMessage"%>
<%@page import="javax.mail.Session"%>
<%@page import="javax.mail.Message"%>
<%@page import="javax.mail.internet.InternetAddress"%>
<%@page import="javax.mail.Transport"%>
<%@page import="javax.mail.MessagingException"%>
<%@page import="sun.net.smtp.SmtpClient"%>
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
        <% Cookie Name = new Cookie("name",
                    request.getParameter("name"));
            Cookie Age = new Cookie("age",
                    request.getParameter("age"));
            Cookie Address = new Cookie("add",
                    request.getParameter("add"));
            Cookie State = new Cookie("sname",
                    request.getParameter("sname"));
            Cookie city = new Cookie("cname",
                    request.getParameter("cname"));
            Cookie Emaillid = new Cookie("ename",
                    request.getParameter("ename"));
            Cookie contactNo = new Cookie("ctname",
                    request.getParameter("ctname"));
            Cookie Designation = new Cookie("desname",
                    request.getParameter("desname"));
            Cookie BOS = new Cookie("branch",
                    request.getParameter("branch"));
            Cookie pcompany = new Cookie("cyname",
                    request.getParameter("cyname"));
            Cookie deg = new Cookie("degree",
                    request.getParameter("degree"));
            Cookie es = new Cookie("exps",
                    request.getParameter("exps"));
            Cookie exp = new Cookie("expyear",
                    request.getParameter("expyear"));

            Name.setMaxAge(60 * 60 * 24);
            Age.setMaxAge(60 * 60 * 24);
            Address.setMaxAge(60 * 60 * 24);
            State.setMaxAge(60 * 60 * 24);
            city.setMaxAge(60 * 60 * 24);
            Emaillid.setMaxAge(60 * 60 * 24);
            contactNo.setMaxAge(60 * 60 * 24);
            Designation.setMaxAge(60 * 60 * 24);
            BOS.setMaxAge(60 * 60 * 24);
            pcompany.setMaxAge(60 * 60 * 24);
            deg.setMaxAge(60 * 60 * 24);
            es.setMaxAge(60 * 60 * 24);
            exp.setMaxAge(60 * 60 * 24);

            response.addCookie(Name);
            response.addCookie(Age);
            response.addCookie(Address);
            response.addCookie(State);
            response.addCookie(city);
            response.addCookie(Emaillid);
            response.addCookie(contactNo);
            response.addCookie(Designation);
            response.addCookie(BOS);
            response.addCookie(pcompany);
            response.addCookie(deg);
            response.addCookie(es);
            response.addCookie(es);
            response.addCookie(exp);

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

    <center>

        <%

            String name = request.getParameter("name");
            String age = request.getParameter("age");
            String add = request.getParameter("add");
            String sname = request.getParameter("sname");
            String cname = request.getParameter("cname");
            String ename = request.getParameter("ename");
            String ctname = request.getParameter("ctname");
            String desname = request.getParameter("desname");
            String branch = request.getParameter("branch");
            String cyname = request.getParameter("cyname");
            String degree = request.getParameter("degree");
            String exps = request.getParameter("exps");
            String expyear = request.getParameter("expyear");

            Connection cn = null;
            try {
                Class.forName("com.mysql.jdbc.Driver");
                cn = DriverManager.getConnection("jdbc:mysql://localhost:3306/edventure", "root", "");
                Statement st = cn.createStatement();
                String query = "INSERT INTO jobdetail(Name,Age,Address,State,City,Email,ContactNo,Designation,BranchofStudy,Company,Degree,ExpectedSalary,Experience)"
                        + " values ('" + name + "','" + age + "','" + add + "','" + sname + "','" + cname + "','" + ename + "','" + ctname + "','" + desname + "','" + branch + "',"
                        + "'" + cyname + "','" + degree + "','" + exps + "','" + expyear + "')";
                // String query = "UPDATE student SET First_Name = 'Raj',Last_Name = 'Chinaiwala',Gender = 'Male',Date_Of_Birth = '1998/04/04',Address = 'Nanpura',City = 'Surat',State = 'Gujarat',Email = 'rajchinaiwala@gmail.com',Contact_no = '7864764856',Qulification = 'Diploma',User_Id = 'a',Password = 'a' WHERE ID=15"
                st.executeUpdate(query);



        %>
    </center>
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
    </center>
    <center>
        <table cellpadding="5">
            <tr  wdth ="100%">
            <tr>
                <td>
                    <p><b>Your Name:</b>
                        <%= request.getParameter("name")%>
                    </p>
                </td>
            </tr>
            <tr>
                <td>
                    <p><b>Age:</b>
                        <%= request.getParameter("age")%>
                    </p>
                </td>
            </tr>
            <tr>
                <td>
                    <p><b>Address:</b>
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
                    </p>
                </td>
            </tr>
            <tr>
                <td>
                    <p><b>Your Email:</b>
                        <%= request.getParameter("ename")%>
                    </p>
                </td>
            </tr>
            <tr>
                <td>
                    <p><b>Your ContactNo:</b>
                        <%= request.getParameter("ctname")%>
                    </p>
                </td>
            </tr>
            <tr>
                <td>
                    <p><b>Your Designation:</b>
                        <%= request.getParameter("desname")%>
                    </p>
                </td>
            </tr>
            <tr>
                <td>
                    <p><b>Your Branch OF Study:</b>
                        <%= request.getParameter("branch")%>
                    </p>
                </td>
            </tr>

            <tr>
                <td>
                    <p><b>Your Previous Company:</b>
                        <%= request.getParameter("cyname")%>
                    </p>
                </td>
            </tr>
            <tr>
                <td>
                    <p><b>Your Degree:</b>
                        <%= request.getParameter("degree")%>
                    </p>
                </td>
            </tr>

            <tr>
                <td>
                    <p><b>Your Expected Salary:</b>
                        <%= request.getParameter("exps")%>
                    </p>
                </td>
            </tr>
            <tr>
                <td>
                    <p><b>Experience:</b>
                        <%= request.getParameter("expyear")%>
                    </p>
                </td>
            </tr>
        </table> 
         
 <form name="details" method="POST" action="">
            <input type="submit" value="Confirm" name="submit" formaction="jobconfirm.jsp" onclick="SetCookie()"class="btn btn-primary btn-lg">
            <input type="submit" value="Edit" name="edit" formaction="JobUpdate.jsp" onclick="SetCookie()"class="btn btn-primary btn-lg">
        
            <input type="hidden" value="<%=sname%>" name="state"/> 
            <input type="hidden" value="<%=cname%>" name="city"/>
       

        </form>

        
    </table> 
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
