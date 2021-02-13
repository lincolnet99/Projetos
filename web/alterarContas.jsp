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
        <%
            ResultSet res = use.consultar("select * from usuario where idusuario="+request.getParameter("idusuario"));   
            if(res.next()){
        %> 
        <form id="form2" nome="form2" method="post" action="DBalterarContas.jsp?idusuario=<%=res.getInt("idusuario")%>" >
            <p>ID: <input type="text" name="id" id="id" value="<%=res.getInt("idusuario")%>"></p>
            <p>Nome: <input type="text" name="nome" id="nome" value="<%=res.getString("nome")%>"></p>
            <p>Idade: <input type="text" name="idade" id="idade" value="<%=res.getString("idade")%>"></p>
            <p>CPF: <input type="text" name="cpf" id="cpf" value="<%=res.getString("cpf")%>"></p>
            <p>Tarefa: <input type="text" name="tarefa" id="tarefa" value="<%=res.getString("tarefa")%>"></p>
            <hr>
            <p>Usuario: <input type="text" name="usuario" id="usuario" value="<%=res.getString("usuario")%>"></p>
            <p>Senha: <input type="password" name="senha" id="senha" value="<%=res.getString("senha")%>"></p>
            <p><input type="submit" name="incl" value="Incluir"></p>
            <%}%>
        </form>
    </body>
</html>
