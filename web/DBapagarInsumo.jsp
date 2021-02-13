<%-- 
    Document   : DBapagarInsumo
    Created on : 19/05/2020, 00:14:12
    Author     : axtri
--%>
<%@page import="java.sql.*"%>
<%@page contentType="text/html" language="Java"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:useBean id="use" class="user.insumos"/>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            if(use.excluir(Integer.parseInt(request.getParameter("idinsumos"))))
                response.sendRedirect("teinControle.jsp");
            else
                out.println("Erro ao excluir");
        %>
        
    </body>
</html>
