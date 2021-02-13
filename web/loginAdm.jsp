<%-- 
    Document   : loginAdm
    Created on : 17/05/2020, 23:40:06
    Author     : axtri
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>adm login</title>
    </head>
    <body>
        <h3>Login ADM</h3>
            <form method="post" action="DBloginAdm.jsp">
                <p>Usuario: <input type="text" name="usuario" id="usuario"></p>
                <p>Senha: <input type="password" name="senha" id="senha"></p>
                <p><input type="submit" name="incl" value="Entrar"></p>
            </form>
        <p><a href="index.html"> Inicio</a></p>
        <p><a href="insContasAdm.jsp">Cadastrar nova conta</a></p>
    </body>
</html>
