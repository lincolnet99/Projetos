<%-- 
    Document   : logoutAdm
    Created on : 18/05/2020, 10:02:05
    Author     : axtri
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
            session.removeAttribute("susuario");
            session.invalidate();
            response.sendRedirect("loginAdm.jsp");
        %>
    </body>
</html>
