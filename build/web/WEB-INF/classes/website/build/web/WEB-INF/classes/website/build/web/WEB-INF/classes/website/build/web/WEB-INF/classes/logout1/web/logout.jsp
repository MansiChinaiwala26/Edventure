<%-- 
    Document   : logout
    Created on : Mar 12, 2016, 11:24:36 AM
    Author     : expert
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Logout</title>
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
        %>

        <a href="page1.jsp">Page1</a>
        <a href="page2.jsp">Page2</a>
        <a href="page3.jsp">Page3</a>
    </body>
</html>
