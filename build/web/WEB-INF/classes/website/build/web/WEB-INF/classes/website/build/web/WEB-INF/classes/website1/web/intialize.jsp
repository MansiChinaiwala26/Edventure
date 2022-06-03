<%-- 
    Document   : intialize
    Created on : Jan 5, 2016, 7:36:33 PM
    Author     : user
--%>

<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
        <%
            Connection cn = null;
            try {
                Class.forName("com.mysql.jdbc.Driver");
                cn = DriverManager.getConnection("jdbc:mysql://localhost:3306/edventure", "root", "");
                Statement st = cn.createStatement();
                int m = 0;
                String q = "SELECT ID FROM test";
                ResultSet r = st.executeQuery(q);
                int n = r.getInt("ID");


        %>
        <input type="hidden" name="Id" value="${n}">
        <input type="hidden" name="marks" value="${m}">
        <%
            } catch (Exception e) {
                e.printStackTrace();

            }
        %>
    </body>
</html>
