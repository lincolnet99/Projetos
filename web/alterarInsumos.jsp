<%-- 
    Document   : alterarInsumos
    Created on : 19/05/2020, 00:23:46
    Author     : axtri
--%>
<%@page import="java.sql.*"%>
<%@page contentType="text/html" language="Java"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:useBean id="use" class="user.insumos"/>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Alterar</title>
    </head>
    <body>
        <%
            ResultSet res = use.consultar("SELECT * FROM insumos where idinsumos="+request.getParameter("idinsumos"));           
            if(res.next()){
            %>    
        <form method="post" action="DBalterarInsumos.jsp?idinsumos=<%=res.getInt("idinsumos")%>">
            <p>Codigo: <input type="tex" name="idinsumos" id="idinsumos" value="<%=res.getInt("idinsumos")%>"></p>
            <p>Tipo: <input type="text" name="tipo" id="tipo" value="<%=res.getString("tipo")%>"></p>
            <p>Descricao: <input type="text" name="descricao" id="descricao" value="<%=res.getString("descricao")%>"></p>
            <p>Quantidade: <input type="text" name="quantidade" id="quantidade" value="<%=res.getInt("quantidade")%>"></p>
            <p>Nivel critico: <span style="font-size: 9px;">(escolher a partir de que nivel de estoque fica critico)</span><input type="text" name="ncritico" id="ncritico" value="<%=res.getInt("ncritico")%>"></p>
            <p><input type="submit" name="enviar" value="Incluir"></p>
        <%}%>
        </form>
        
    </body>
</html>
