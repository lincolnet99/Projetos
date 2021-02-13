<%-- 
    Document   : teinIncluirdb
    Created on : 18/05/2020, 10:14:54
    Author     : axtri
--%>
<%@page language="Java" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="java.sql.*"%>
<jsp:useBean id="use" class="user.insumos"/>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Incluir</title>
    </head>
    <body>
        <jsp:setProperty name="use" property="tipo" value="${param.tipo}"/>
        <jsp:setProperty name="use" property="descricao" value="${param.descricao}"/>
        <jsp:setProperty name="use" property="quantidade" value="${param.quantidade}"/>
        <jsp:setProperty name="use" property="ncritico" value="${param.ncritico}"/>
        <%
            Integer uid = (Integer) session.getAttribute("sid");
            String resp = use.incluir(uid);
            if(resp.equals("ok")){
                response.sendRedirect("indexIns.jsp");
                out.println(uid);
            }else{
                out.println("Erro ao gravar" + resp);
            }
        %>
    </body>
</html>
