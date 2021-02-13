<%-- 
    Document   : insContasInc
    Created on : 17/05/2020, 15:23:32
    Author     : axtri
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:useBean id="use" class="user.usuario"/>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <jsp:setProperty name="use" property="nome" value="${param.nome}"/>
        <jsp:setProperty name="use" property="idade" value="${param.idade}"/>
        <jsp:setProperty name="use" property="cpf" value="${param.cpf}"/>
        <jsp:setProperty name="use" property="tarefa" value="${param.tarefa}"/>
        <jsp:setProperty name="use" property="usuario" value="${param.usuario}"/>
        <jsp:setProperty name="use" property="senha" value="${param.senha}"/>        
        <%
            String resp = use.incluir();
            if(resp.equals("ok"))
                response.sendRedirect("telaAdmin.jsp");
            else
                out.println("Erro ao gravar" + resp);
        %>
        <p><a href="cadclientes.jsp">Novo cadastro</a></p>
    </body>
</html>
