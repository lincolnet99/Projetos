<%-- 
    Document   : alterarContasdb
    Created on : 15/05/2020, 18:13:57
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
        <title>Alterar</title>
    </head>
    <body>
        <p>
        <jsp:setProperty name="use" property="*"/>
        <%
            if(use.alterar(Integer.parseInt(request.getParameter("idusuario"))))
                response.sendRedirect("altContas.jsp");
            else
                out.println("Erro ao alterar");
        %>
        </p>
        <p><a href="index.html">Inicio</a></p>
    </body>
</html>
