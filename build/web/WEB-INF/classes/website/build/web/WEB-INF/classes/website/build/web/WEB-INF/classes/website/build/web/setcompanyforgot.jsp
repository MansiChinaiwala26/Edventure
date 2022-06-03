<%@page import="ets.SendEmail"%>
<%@page import="java.net.Authenticator"%>
<%@page import="javax.validation.Validation"%>
<%@page import="javax.mail.MessagingException"%>
<%@page import="javax.mail.Transport"%>
<%@page import="javax.mail.Message"%>
<%@page import="javax.mail.internet.InternetAddress"%>
<%@page import="javax.mail.internet.MimeMessage"%>
<%@page import="javax.mail.Session"%>
<%@ page import="java.io.*,java.util.*,java.sql.Connection,java.sql.DriverManager,java.sql.Statement,java.sql.ResultSet,java.util.Scanner,java.util.Random;" %>
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

        <br></br>
        <br></br>
    <center>
        <%! String registeredEmail, registeredFavouriteTeacher;%>
        <%
            registeredEmail = request.getParameter("ename").toString().trim();


            registeredFavouriteTeacher = request.getParameter("ftname").toString().trim();



            Connection cn = null;
            try {

                Class.forName("com.mysql.jdbc.Driver");
                cn = DriverManager.getConnection("jdbc:mysql://localhost:3306/edventure", "root", "");
                Statement st = cn.createStatement();
                Statement st2 = cn.createStatement();
                String query = "SELECT count(*) AS COUNT FROM `companydisplay` WHERE  Email='" + registeredEmail + "'AND YourFavouriteTeacher='" + registeredFavouriteTeacher + "'";

                ResultSet resultSet = st.executeQuery(query);
                int count = 0;
                if (resultSet.next()) {
                    count = resultSet.getInt("COUNT");
                }

                if (count == 0) {
                    out.println("Invalid Email Id or Username<br/>");
                    out.println("Please Re-enter");
        %>

        <center>
            <form name="details" method="POST" action="setcompanyforgot.jsp">
                <table cellpadding="5">
                    <tr  wdth ="100%">
                    <tr><td></td></tr>
                    <tr><td></td></tr>
                    <td height="24" colspan="4"><div align="center" class="style4"><font size="12">Login</font></div></td>
                    <tr><td></td></tr>
                    <tr><td></td></tr>

                </table>

                <table>
                    <tr>
                        <th>Enter your Email</th>
                        <td><input type="text" name="ename" required="required"></td>
                    </tr>

                    <tr>
                        <th>Enter your Registered Favourite Teacher</th>
                        <td><input type="text" name="ftname" required="required"></td>
                    </tr>

                    <tr>
                        <td align="center" colspan="2"><input type="submit" value="Submit" name="submit"></td>
                    </tr>

                </table>
            </form>
        </center>

        <%
            } else {

                String dCase = "abcdefghijklmnopqrstuvwxyz";
                String uCase = "ABCDEFGHIJKLMNOPQRSTUVWXYZ";
                String intChar = "0123456789";
                Random r = new Random();
                String psname = "";
                String to = request.getParameter("ename");

                while (psname.length() != 4) {
                    int rPick = r.nextInt(3);
                    if (rPick == 0) {
                        int spot = r.nextInt(25);
                        psname += dCase.charAt(spot);
                    } else if (rPick == 1) {
                        int spot = r.nextInt(25);
                        psname += uCase.charAt(spot);
                    } else if (rPick == 2) {
                        int spot = r.nextInt(9);
                        psname += intChar.charAt(spot);
                    }
                }
                //UPDATE `edventure`.`registration` SET `Password` = 'pass' WHERE  Email = '" + registeredMail + "' AND User_id='" + registeredUsername + "';
                query = "UPDATE edventure.companydisplay SET Password = '" + psname + "' WHERE  YourFavouriteTeacher = '" + registeredFavouriteTeacher + "' AND Email='" + registeredEmail + "'";
                st.executeUpdate(query);
                //UPDATE `edventure`.`login` SET `password` = 'nidhi1' WHERE `login`.`ID` = 1;
                /*
                query = "UPDATE `edventure`.`login` SET `Password` = '" + password + "' WHERE Username = '" + registeredUsername + "'";
                st.executeUpdate(query);
                 */
                

                out.println("Please Check Your Verification Code on Your Mail: "+registeredEmail+" <BR> <a href='companylogin.jsp'>Click Me</a>");
                String msg = "Hi!! Your Verification Code:  " + psname+" Use this as your password to Login.";
                new SendEmail(msg, to);

                //Do Your mail related work at this place
                //response.sendRedirect("index.jsp");
            }

            //String query = "UPDATE student SET First_Name = 'Raj',Last_Name = 'Chinaiwala',Gender = 'Male',Date_Of_Birth = '1998/04/04',Address = 'Nanpura',City = 'Surat',State = 'Gujarat',Email = 'rajchinaiwala@gmail.com',Contact_no = '7864764856',Qulification = 'Diploma',User_Id = 'a',Password = 'a' WHERE ID=15" //INSERT INTO `edventure`.`registration` (`ID`, `FirstName`, `LastName`, `Gender`, `DateOfBirth`, `Address`, `City`, `State`, `Email`, `Contactno`, `Qualification`, `User_id`, `Password`) VALUES (NULL, 'Nidhi', 'Kamdar', 'Female', '01/01/1992', 'Nidhi_Address', 'Nidhi_City', 'Nidhi_State', 'nidhi@gmail.com', '1234567891', 'Diplo', 'nidhi@gmail.com', 'nidhi');  
            //st.executeUpdate(query);
            //String query1 = "insert into login(username,password) values ('" + uname + "','" + pname + "')";
            //st2.executeUpdate(query1);
        %>
    </center>
    <%            st.close();
            cn.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
    %>
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
