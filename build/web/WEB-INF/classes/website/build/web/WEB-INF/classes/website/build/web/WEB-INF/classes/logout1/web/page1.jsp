<%-- 
    Document   : page1
    Created on : Mar 12, 2016, 11:20:38 AM
    Author     : expert
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Page1</title>
    </head>
    <body>
        <%

            response.addHeader("Cache-Control", "no-cache,no-store,private,must-revalidate,max-stale=0,post-check=0,pre-check=0");
            response.addHeader("Pragma", "no-cache");
            response.addDateHeader("Expires", 0);
        %>
        <%
            if (session.getAttribute("user") == null) {
                response.sendRedirect("index.html");
            }
        %>
        Go To <a href="page2.jsp">Page2</a>

    </body>
</html>
