<%-- 
    Document   : success
    Created on : Oct 23, 2015, 8:49:38 AM
    Author     : pppppp
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
       
    </head>
    <body>
        <% 
    if ((session.getAttribute("dt") == null) || (session.getAttribute("dt") == "")) { 
%> 
You are not logged in<br/> 
<a href="index.jsp">Please Login</a> 
<%} else { 
%> 
Welcome <%=session.getAttribute("username")%> 
<a href='logout.jsp'>Log out</a> 
<% 
    } 
%>
    </body>
</html>
