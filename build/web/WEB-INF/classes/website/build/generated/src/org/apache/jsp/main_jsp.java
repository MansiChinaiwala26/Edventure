package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.io.*;
import java.util.*;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.Statement;
import java.sql.ResultSet;
import java.util.Scanner;

public final class main_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

                Integer in = 0;
            Integer r = -1;
            String gender;
            
        
  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.Vector _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public Object getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");

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


      out.write("\n");
      out.write("\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta charset=\"utf-8\">\n");
      out.write("        <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\n");
      out.write("        <meta name=\"description\" content=\"\">\n");
      out.write("        <meta name=\"author\" content=\"\">\n");
      out.write("        <title>Home | EDventure</title>\n");
      out.write("        <!-- core CSS -->\n");
      out.write("        <link href=\"css/bootstrap.min.css\" rel=\"stylesheet\">\n");
      out.write("        <link href=\"css/font-awesome.min.css\" rel=\"stylesheet\">\n");
      out.write("        <link href=\"css/animate.min.css\" rel=\"stylesheet\">\n");
      out.write("        <link href=\"css/prettyPhoto.css\" rel=\"stylesheet\">\n");
      out.write("        <link href=\"css/main.css\" rel=\"stylesheet\">\n");
      out.write("        <link href=\"css/responsive.css\" rel=\"stylesheet\">\n");
      out.write("        <!--[if lt IE 9]>\n");
      out.write("        <script src=\"js/html5shiv.js\"></script>\n");
      out.write("        <script src=\"js/respond.min.js\"></script>\n");
      out.write("        <![endif]-->  \n");
      out.write("        <link rel=\"shortcut icon\" href=\"images/ico/e1.ico\">\n");
      out.write("        <link rel=\"apple-touch-icon-precomposed\" sizes=\"144x144\" href=\"images/ico/e-144.png\">\n");
      out.write("        <link rel=\"apple-touch-icon-precomposed\" sizes=\"114x114\" href=\"images/ico/e-114.png\">\n");
      out.write("        <link rel=\"apple-touch-icon-precomposed\" sizes=\"72x72\" href=\"images/ico/e-72.png\">\n");
      out.write("        <link rel=\"apple-touch-icon-precomposed\" href=\"images/ico/e-57.png\">\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>JSP Page</title>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>JSP Page</title>\n");
      out.write("    </head>\n");
      out.write("    <body class=\"homepage\">\n");
      out.write("        <header id=\"header\">\n");
      out.write("            <div class=\"top-bar\">\n");
      out.write("                <div class=\"container\">\n");
      out.write("                    <div class=\"row\">\n");
      out.write("                        <div class=\"col-sm-6 col-xs-4\">\n");
      out.write("\n");
      out.write("                        </div>\n");
      out.write("                        <div class=\"col-sm-6 col-xs-8\">\n");
      out.write("                            <div class=\"social\">\n");
      out.write("                                <ul class=\"social-share\">\n");
      out.write("                                    <li><a href=\"#\"><i class=\"fa fa-facebook\"></i></a></li>\n");
      out.write("                                    <li><a href=\"#\"><i class=\"fa fa-twitter\"></i></a></li>\n");
      out.write("                                    <li><a href=\"#\"><i class=\"fa fa-linkedin\"></i></a></li> \n");
      out.write("                                    <li><a href=\"#\"><i class=\"fa fa-dribbble\"></i></a></li>\n");
      out.write("                                    <li><a href=\"#\"><i class=\"fa fa-skype\"></i></a></li>\n");
      out.write("                                </ul>\n");
      out.write("\n");
      out.write("                            </div>\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("                </div><!--/.container-->\n");
      out.write("            </div><!--/.top-bar-->\n");
      out.write("\n");
      out.write("            <nav class=\"navbar navbar-inverse\" role=\"banner\">\n");
      out.write("                <div class=\"container\">\n");
      out.write("                    <div class=\"navbar-header\">\n");
      out.write("                        <button type=\"button\" class=\"navbar-toggle\" data-toggle=\"collapse\" data-target=\".navbar-collapse\">\n");
      out.write("                            <span class=\"sr-only\">Toggle navigation</span>\n");
      out.write("                            <span class=\"icon-bar\"></span>\n");
      out.write("                            <span class=\"icon-bar\"></span>\n");
      out.write("                            <span class=\"icon-bar\"></span>\n");
      out.write("                        </button>\n");
      out.write("                        <a class=\"navbar-brand\" href=\"index.jsp\"><img src=\"images/edventurelogo.png\" alt=\"logo\"></a>\n");
      out.write("                    </div>\n");
      out.write("\n");
      out.write("                    <div class=\"collapse navbar-collapse navbar-right\">\n");
      out.write("                        <ul class=\"nav navbar-nav\">\n");
      out.write("                            <li class=\"active\"><a href=\"index.jsp\">Home</a></li>\n");
      out.write("                            <li><a href=\"register.jsp\">Registration</a></li>\n");
      out.write("                        </ul>\n");
      out.write("                    </div><!--/.container-->\n");
      out.write("            </nav><!--/nav-->\n");
      out.write("\n");
      out.write("        </header><!--/header-->\n");
      out.write("\n");
      out.write("    <center>\n");
      out.write("        ");
      out.write("\n");
      out.write("        ");


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
                cn = DriverManager.getConnection("jdbc:mysql://localhost:8080/edventure", "root", "");
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

        
      out.write("\n");
      out.write("        ");
      out.write("\n");
      out.write("        <input type=\"hidden\" name=\"IDX\" value=\"");
      out.print(r);
      out.write("\">\n");
      out.write("        <input type=\"hidden\" name=\"gend\" value=\"");
      out.print(gender);
      out.write("\">\n");
      out.write("        \n");
      out.write("    </center>\n");
      out.write("    ");
 stm.close();
            cn.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
    
      out.write("\n");
      out.write("    <center>\n");
      out.write("\n");
      out.write("        <table cellpadding=\"5\">\n");
      out.write("            <tr  wdth =\"100%\">\n");
      out.write("            <tr><td></td></tr>\n");
      out.write("            <tr><td></td></tr>\n");
      out.write("            <td height=\"24\" colspan=\"4\"><div align=\"center\" class=\"style4\"><font size=\"12\">Welcome to EDventure</font></div></td>\n");
      out.write("            <tr><td></td></tr>\n");
      out.write("            <tr><td></td></tr>\n");
      out.write("        </table>\n");
      out.write("    </center>\n");
      out.write("    <center>\n");
      out.write("        <table cellpadding=\"5\">\n");
      out.write("            <tr  wdth =\"100%\">\n");
      out.write("            <tr>\n");
      out.write("                <td\n");
      out.write("                    <p><b>Your First Name:</b>\n");
      out.write("                        ");
      out.print( request.getParameter("fname"));
      out.write("\n");
      out.write("                    </p>\n");
      out.write("                </td>\n");
      out.write("            </tr>\n");
      out.write("            <tr>\n");
      out.write("                <td>\n");
      out.write("                    <p><b>Your Last Name:</b>\n");
      out.write("                        ");
      out.print( request.getParameter("lname"));
      out.write("\n");
      out.write("                    </p>\n");
      out.write("                </td>\n");
      out.write("            </tr>\n");
      out.write("            <tr>\n");
      out.write("                <td>\n");
      out.write("                    <p><b>Your Gender:</b>\n");
      out.write("                        ");
      out.print( request.getParameter("gender"));
      out.write("\n");
      out.write("                    </p>\n");
      out.write("                </td>\n");
      out.write("            </tr>\n");
      out.write("            <tr>\n");
      out.write("                <td>\n");
      out.write("                    <p><b>Your Birth Date:</b>\n");
      out.write("                        ");
      out.print( request.getParameter("bdate"));
      out.write("\n");
      out.write("                    </p>\n");
      out.write("                </td>\n");
      out.write("            </tr>\n");
      out.write("            <tr>\n");
      out.write("                <td>\n");
      out.write("                    <p><b>Your Address:</b>\n");
      out.write("                        ");
      out.print( request.getParameter("add"));
      out.write("\n");
      out.write("                    </p>\n");
      out.write("                </td>\n");
      out.write("            </tr>\n");
      out.write("            <tr>\n");
      out.write("                <td>\n");
      out.write("                    <p><b>Your State:</b>\n");
      out.write("                        ");
      out.print( request.getParameter("sname"));
      out.write("\n");
      out.write("                    </p>\n");
      out.write("                </td>\n");
      out.write("            </tr>\n");
      out.write("            <tr>\n");
      out.write("                <td>\n");
      out.write("                    <p><b>Your City:</b>\n");
      out.write("                        ");
      out.print( request.getParameter("cname"));
      out.write("\n");
      out.write("                    </p\n");
      out.write("                </td>\n");
      out.write("            </tr>\n");
      out.write("\n");
      out.write("            <tr>\n");
      out.write("                <td>\n");
      out.write("                    <p><b>Your Email Id:</b>\n");
      out.write("                        ");
      out.print( request.getParameter("ename"));
      out.write("\n");
      out.write("                    </p>\n");
      out.write("                </td>\n");
      out.write("            </tr>\n");
      out.write("            <tr>\n");
      out.write("                <td>\n");
      out.write("                    <p><b>Your Contact No:</b>\n");
      out.write("                        ");
      out.print( request.getParameter("ctname"));
      out.write("\n");
      out.write("                    </p>\n");
      out.write("                </td>\n");
      out.write("            </tr>\n");
      out.write("            <tr>\n");
      out.write("                <td\n");
      out.write("                    <p><b>Your Qualification:</b>\n");
      out.write("                        ");
      out.print( request.getParameter("qname"));
      out.write("\n");
      out.write("                    </p>\n");
      out.write("                </td>\n");
      out.write("            </tr>\n");
      out.write("            <tr>\n");
      out.write("                <td\n");
      out.write("                    <p><b>Your Favourite Teacher:</b>\n");
      out.write("                        ");
      out.print( request.getParameter("fav"));
      out.write("\n");
      out.write("                    </p>\n");
      out.write("                </td>\n");
      out.write("            </tr>\n");
      out.write("            <tr>\n");
      out.write("                <td>\n");
      out.write("                    <p><b>Your User Id:</b>\n");
      out.write("                        ");
      out.print( request.getParameter("uname"));
      out.write("\n");
      out.write("                    </p>\n");
      out.write("                </td>\n");
      out.write("            </tr>\n");
      out.write("            <tr>\n");
      out.write("                <td>\n");
      out.write("                    <p><b>Password:</b>\n");
      out.write("                        ");
      out.print( request.getParameter("pname"));
      out.write("\n");
      out.write("                    </p>\n");
      out.write("                </td>\n");
      out.write("            </tr>\n");
      out.write("\n");
      out.write("        </table> \n");
      out.write("        <form name=\"details\" method=\"POST\" action=\"userlogin.jsp\">\n");
      out.write("\n");
      out.write("            <input type=\"submit\" value=\"Confirm\" name=\"confirm\" formaction=\"regconfirm.jsp\" onclick=\"SetCookie()\"class=\"btn btn-primary btn-lg\">\n");
      out.write("            <input type=\"submit\" value=\"Edit\" name=\"edit\" formaction=\"update.jsp\" onclick=\"SetCookie()\"class=\"btn btn-primary btn-lg\">\n");
      out.write("            <input type=\"hidden\" name=\"gend\" value=\"");
      out.print(gender);
      out.write("\">\n");
      out.write("            \n");
      out.write("        </form>\n");
      out.write("    </center>\n");
      out.write("    <br>\n");
      out.write("    <br>\n");
      out.write("    <section id = \"bottom\">\n");
      out.write("        <div class=\"container wow fadeInDown\" data-wow-duration=\"1000ms\" data-wow-delay=\"600ms\">\n");
      out.write("            <div class=\"row\">\n");
      out.write("                <div class=\"col-md-3 col-sm-6\">\n");
      out.write("                    <div class=\"widget\">\n");
      out.write("                        <h3>Company</h3>\n");
      out.write("                        <ul>\n");
      out.write("                            <li><a href=\"#\">About us</a></li>\n");
      out.write("                            <li><a href=\"#\">We are hiring</a></li>\n");
      out.write("                            <li><a href=\"#\">Meet the team</a></li>\n");
      out.write("                            <li><a href=\"#\">Copyright</a></li>\n");
      out.write("                            <li><a href=\"#\">Terms of use</a></li>\n");
      out.write("                            <li><a href=\"#\">Privacy policy</a></li>\n");
      out.write("                            <li><a href=\"#\">Contact us</a></li>\n");
      out.write("                        </ul>\n");
      out.write("                    </div>    \n");
      out.write("                </div><!--/.col-md-3-->\n");
      out.write("\n");
      out.write("                <div class=\"col-md-3 col-sm-6\">\n");
      out.write("                    <div class=\"widget\">\n");
      out.write("                        <h3>Support</h3>\n");
      out.write("                        <ul>\n");
      out.write("                            <li><a href=\"#\">Faq</a></li>\n");
      out.write("                            <li><a href=\"#\">Blog</a></li>\n");
      out.write("                            <li><a href=\"#\">Forum</a></li>\n");
      out.write("                            <li><a href=\"#\">Documentation</a></li>\n");
      out.write("                            <li><a href=\"#\">Refund policy</a></li>\n");
      out.write("                            <li><a href=\"#\">Ticket system</a></li>\n");
      out.write("                            <li><a href=\"#\">Billing system</a></li>\n");
      out.write("                        </ul>\n");
      out.write("                    </div>    \n");
      out.write("                </div><!--/.col-md-3-->\n");
      out.write("\n");
      out.write("                <div class=\"col-md-3 col-sm-6\">\n");
      out.write("                    <div class=\"widget\">\n");
      out.write("                        <h3>Developers</h3>\n");
      out.write("                        <ul>\n");
      out.write("                            <li><a href=\"#\">Web Development</a></li>\n");
      out.write("                            <li><a href=\"#\">SEO Marketing</a></li>\n");
      out.write("                            <li><a href=\"#\">Theme</a></li>\n");
      out.write("                            <li><a href=\"#\">Development</a></li>\n");
      out.write("                            <li><a href=\"#\">Email Marketing</a></li>\n");
      out.write("                            <li><a href=\"#\">Plugin Development</a></li>\n");
      out.write("                            <li><a href=\"#\">Article Writing</a></li>\n");
      out.write("                        </ul>\n");
      out.write("                    </div>    \n");
      out.write("                </div><!--/.col-md-3-->\n");
      out.write("\n");
      out.write("                <div class=\"col-md-3 col-sm-6\">\n");
      out.write("                    <div class=\"widget\">\n");
      out.write("                        <h3>Our Partners</h3>\n");
      out.write("                        <ul>\n");
      out.write("                            <li><a href=\"#\">Adipisicing Elit</a></li>\n");
      out.write("                            <li><a href=\"#\">Eiusmod</a></li>\n");
      out.write("                            <li><a href=\"#\">Tempor</a></li>\n");
      out.write("                            <li><a href=\"#\">Veniam</a></li>\n");
      out.write("                            <li><a href=\"#\">Exercitation</a></li>\n");
      out.write("                            <li><a href=\"#\">Ullamco</a></li>\n");
      out.write("                            <li><a href=\"#\">Laboris</a></li>\n");
      out.write("                        </ul>\n");
      out.write("                    </div>    \n");
      out.write("                </div><!--/.col-md-3-->\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("    </section><!--/#bottom-->\n");
      out.write("\n");
      out.write("    <footer id=\"footer\" class=\"midnight-blue\">\n");
      out.write("        <div class=\"container\">\n");
      out.write("            <div class=\"row\">\n");
      out.write("                <div class=\"col-sm-6\">\n");
      out.write("                    &copy; 2013 <a target=\"_blank\" href=\"http://shapebootstrap.net/\" title=\"Free Twitter Bootstrap WordPress Themes and HTML templates\">EDventure</a>. All Rights Reserved.\n");
      out.write("                </div>\n");
      out.write("                <div class=\"col-sm-6\">\n");
      out.write("                    <ul class=\"pull-right\">\n");
      out.write("                        <li><a href=\"#\">Home</a></li>\n");
      out.write("                        <li><a href=\"#\">About Us</a></li>\n");
      out.write("                        <li><a href=\"#\">Faq</a></li>\n");
      out.write("                        <li><a href=\"#\">Contact Us</a></li>\n");
      out.write("                    </ul>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("    </footer><!--/#footer-->\n");
      out.write("\n");
      out.write("    <script src=\"js/jquery.js\"></script>\n");
      out.write("    <script src=\"js/bootstrap.min.js\"></script>\n");
      out.write("    <script src=\"js/jquery.prettyPhoto.js\"></script>\n");
      out.write("    <script src=\"js/jquery.isotope.min.js\"></script>\n");
      out.write("    <script src=\"js/main.js\"></script>\n");
      out.write("    <script src=\"js/wow.min.js\"></script>                    \n");
      out.write("</body>\n");
      out.write("</html>\n");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
