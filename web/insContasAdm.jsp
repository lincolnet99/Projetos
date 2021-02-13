<%-- 
    Document   : insContasAdm
    Created on : 18/05/2020, 00:02:09
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
        <form method="post" action="DBinsContasAdm.jsp">
            <p>Nome: <input type="text" name="nome" id="nome"></p>
            <hr>
            <p>Usuario: <input type="text" name="usuario" id="usuario"></p>
            <p>Senha: <input type="password" name="senha" id="senha"></p>
            <p><input type="submit" name="incl" value="Incluir"></p>
        </form>
    </body>
</html>
