<%-- 
    Document   : apagarContas
    Created on : 15/05/2020, 17:26:05
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
        <title>excluindo contas</title>
    </head>
    <body>
        
        <%
            if(use.excluir(Integer.parseInt(request.getParameter("idusuario"))))
                response.sendRedirect("altContas.jsp");
            else
                out.println("Erro ao excluir");
        %>
        
    </body>
</html>
