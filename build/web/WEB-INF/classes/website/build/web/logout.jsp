<%-- 
    Document   : logout
    Created on : Oct 23, 2015, 2:36:10 AM
    Author     : pppppp
--%>

<%@page import="java.io.IOException"%>
<%@page import="javax.servlet.annotation.WebServlet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page language="java" import="java.sql.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        
    </head>
    <body>
        
	
       <%

            response.addHeader("Cache-Control", "no-cache,no-store,private,must-revalidate,max-stale=0,post-check=0,pre-check=0");
            response.addHeader("Pragma", "no-cache");
            response.addDateHeader("Expires", 0);
        %>
        <%
            session.removeAttribute("user");
            session.invalidate();
            response.sendRedirect("index.jsp");
        %>

       
    </body>
</html>
