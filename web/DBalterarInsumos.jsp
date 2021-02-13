<%@page import="java.sql.*"%>
<%@page contentType="text/html" language="Java"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:useBean id="use" class="user.insumos"/>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <p>           
            <jsp:setProperty name="use" property="tipo" value="${param.tipo}"/>
            <jsp:setProperty name="use" property="descricao" value="${param.descricao}"/>
            <jsp:setProperty name="use" property="quantidade" value="${param.quantidade}"/>
            <jsp:setProperty name="use" property="ncritico" value="${param.ncritico}"/>
        <%
          
            if(use.alterar(Integer.parseInt(request.getParameter("idinsumos"))))
                response.sendRedirect("teinControle.jsp");
            else
                out.println("Erro ao alterar");
        %>
        </p>
        <p><a href="teinControle.jsp">Controle</a></p>
    </body>
</html>
