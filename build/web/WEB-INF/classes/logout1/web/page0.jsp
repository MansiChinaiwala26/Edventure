<%-- 
    Document   : page0
    Created on : Mar 12, 2016, 9:07:31 PM
    Author     : expert
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            session.setAttribute("user", "hiii");
            response.sendRedirect("page1.jsp");
        %>
        <h1>Hello World!</h1>
    </body>
</html>
