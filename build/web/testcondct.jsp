<%-- 
    Document   : testcondct
    Created on : Dec 30, 2015, 3:25:50 PM
    Author     : user
--%>

<%@ page import="java.io.*,java.util.*,java.sql.Connection,java.sql.DriverManager,java.sql.Statement,java.sql.ResultSet,java.util.Scanner" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta http-equiv="Cache-Control"content="no-cache,no-store,must-revalidate"/>
        <meta http-equiv="Pragma"content="no-cache"/>
        <meta http-equiv="Expires"content="0"/>
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

        <script type="text/javascript" src="http://code.jquery.com/jquery-1.4.3.min.js"></script>

        <!--        <script type="text/javascript">
                    $(document).ready(function(){
                        $("button").bind("click",function(){
                            $("#question").html();
                        });
                    });
                            
                    
                </script>-->
    </head><!--/head-->

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

        <section id="contact-page">
            <div class="container" >
                <div class="row contact-wrap"> 
                    <div class="status alert alert-success" style="display: none" overflow="hidden">

                    </div>

                    <form id="main-contact-form123" class="contact-form" name="test" 
                          method="GET" action="testcal.jsp"> <center>
                            <%! String chc[] = new String[200];%>

                            <%
                                String choice[] = new String[50];
                                Connection cn = null;

                                try {
                                    Class.forName("com.mysql.jdbc.Driver");
                                    cn = DriverManager.getConnection("jdbc:mysql://localhost:3306/edventure", "root", "");
                                    Statement st = cn.createStatement();
                                    String q = "SELECT ID FROM test";
                                    ResultSet rs;
                                    rs = st.executeQuery(q);
                                    int m = 0;
                                    int n = 0;
                                    int id;
                            %>
                            <table cellpadding="5">
                                <tr  wdth ="100%">
                                <tr><td></td></tr>
                                <tr><td></td></tr>
                                <td height="24" colspan="4"><div align="center" class="style4"><font size="12">Test Form</font></div></td>
                                <tr><td></td></tr>
                                <tr><td></td></tr>
                            </table>
                        </center>

                        <div id="question" >

                            <%
                                Statement str = cn.createStatement();

                                String ans[] = new String[200];

                                String query = "SELECT * FROM test";
                                rs = str.executeQuery(query);

                                while (rs.next()) {
                                    id = rs.getInt("ID");
                                    String quest = rs.getString("Question");
                                    String op1 = rs.getString("Option1");
                                    String op2 = rs.getString("Option2");
                                    String op3 = rs.getString("Option3");
                                    String op4 = rs.getString("Option4");
                                    ans[id] = rs.getString("Answer");
                            %>
                            <div class="form-group" id="options">  
                                <table>
                                    <tr width="100">        
                                        <td><b>Question <%=id%> :</b>    &nbsp;<%=quest%>  <br><br></td> 
                                    </tr>
                                    <tr width="100">
                                        <td><input type="radio" id="opt" name="<%=id%>" value="<%=op1%>"> <%=op1%></td>
                                    </tr>
                                    <tr width="100">
                                        <td><input type="radio" id="opt"name="<%=id%>" value="<%=op2%>" > <%=op2%></td> 
                                    </tr>
                                    <tr width="100">
                                        <td><input type="radio" id="opt"name="<%=id%>"  value="<%=op3%>" ><%=op3%></td>
                                    </tr>
                                    <tr width="100">
                                        <td><input type="radio" id="opt" name="<%=id%>"  value="<%=op4%>" ><%=op4%> <br> <br></td>
                                    </tr>
                                </table>
                            </div>
                            <%
                                }

                            %>
                            <div>

                                <center>
                                    <button name="submit" class="btn btn-primary btn-lg"value="submit" >submit</button>
                                </center>

                            </div>

                        </div>



                        <%



                            } catch (Exception e) {
                                e.printStackTrace();
                            }

                        %>
                    </form>
                </div>
            </div>
        </section>
        <input type="hidden" name="choice" value="<%=choice%>">

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
