<%-- 
    Document   : testQinsert
    Created on : Dec 29, 2015, 3:58:50 PM
    Author     : user
--%>

<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
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

        <%

            String Question = request.getParameter("Question");
            String Option1 = request.getParameter("Option1");
            String Option2 = request.getParameter("Option2");
            String Option3 = request.getParameter("Option3");
            String Option4 = request.getParameter("Option3");
            String Answer = request.getParameter("Answer");

            Connection cn = null;
            try {
                Class.forName("com.mysql.jdbc.Driver");
                cn = DriverManager.getConnection("jdbc:mysql://localhost:3306/edventure", "root", "");
                Statement st = cn.createStatement();
                String query = "INSERT INTO test(Question,Option1,Option2,Option3,Option4,Answer)"
                        + " values ('" + Question + "','" + Option1 + "','" + Option2 + "','" + Option3 + "','" + Option4 + "','"+Answer+"')";
                // String query = "UPDATE student SET First_Name = 'Raj',Last_Name = 'Chinaiwala',Gender = 'Male',Date_Of_Birth = '1998/04/04',Address = 'Nanpura',City = 'Surat',State = 'Gujarat',Email = 'rajchinaiwala@gmail.com',Contact_no = '7864764856',Qulification = 'Diploma',User_Id = 'a',Password = 'a' WHERE ID=15"
                st.executeUpdate(query);

        %>
        <%


                st.close();
                cn.close();
            } catch (Exception e) {
                e.printStackTrace();
            }
        %>
        <h1>Hello World!</h1>
    </body>
</html>
