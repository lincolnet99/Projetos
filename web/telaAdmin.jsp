<%-- 
    Document   : telaAdmin
    Created on : 15/05/2020, 14:45:21
    Author     : axtri
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Administrador manipular contas.</title>
    </head>
    <body>
        <h3>Administrador manipular contas.</h3>
        <p><a href="DBlogoutAdm.jsp">Logout</a></p>
        <p><a href="insContas.jsp">Inserir contas.</a></p>
        <p><a href="altContas.jsp">Alterar ou deletar contas.</a></p>
        <%
        if(session.getAttribute("susuario")==null){
            response.sendRedirect("loginAdm.jsp");
        }
        %>
    </body>
</html>
