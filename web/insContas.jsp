<%-- 
    Document   : insContas
    Created on : 15/05/2020, 14:51:21
    Author     : axtri
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>inserir contas</title>
    </head>
    <body>
        <form method="post" action="DBinsContas.jsp">
            <p>Nome: <input type="text" name="nome" id="nome"></p>
            <p>Idade: <input type="text" name="idade" id="idade"></p>
            <p>CPF: <input type="text" name="cpf" id="cpf"></p>
            <p>Tarefa: <input type="text" name="tarefa" id="tarefa"></p>
            <hr>
            <p>Usuario: <input type="text" name="usuario" id="usuario"></p>
            <p>Senha: <input type="password" name="senha" id="senha"></p>
            <hr>
            <p><input type="submit" name="incl" value="Incluir"></p>
        </form>
    </body>
</html>
