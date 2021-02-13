<%-- 
    Document   : logout
    Created on : 18/05/2020, 09:56:17
    Author     : axtri
--%>
<%@page import="java.sql.*"%>
<%@page contentType="text/html" language="Java"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:useBean id="use" class="user.usuario"/>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>logout</title>
    </head>
    <body>
        <%
            session.removeAttribute("susuario");
            session.invalidate();
            response.sendRedirect("login.jsp");
        %>
    </body>
</html>
