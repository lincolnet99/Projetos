<%-- 
    Document   : teinIncluir
    Created on : 18/05/2020, 09:54:13
    Author     : axtri
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Incluir insumo</title>
    </head>
    <body>
        <h3>Incluir novo insumo</h3>
        <form method="post" action="DBteinIncluir.jsp">
            <p>Tipo: <input type="text" name="tipo"></p>
            <p>Descricao: <input type="text" name="descricao"></p>
            <p>Quantidade: <input type="text" name="quantidade"></p>
            <p>Nivel critico: <span style="font-size: 9px;">(escolher a partir de que nivel de estoque fica critico)</span><input type="text" name="ncritico"></p>
            <p><input type="submit" name="enviar" value="Incluir"></p>
        </form>
        <%
        if(session.getAttribute("susuario")==null){
            response.sendRedirect("login.jsp");
        }
        %>
    </body>
</html>
