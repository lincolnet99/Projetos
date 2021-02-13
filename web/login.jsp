<%-- 
    Document   : login
    Created on : 17/05/2020, 20:11:01
    Author     : axtri
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login</title>
    </head>
    <body>
        <h3>Login</h3>
            <form method="post" action="DBlogin.jsp">               
                <p>Usuario: <input type="text" name="usuario" id="usuario"></p>
                <p>Senha: <input type="password" name="senha" id="senha"></p>
                <p><input type="submit" name="incl" value="Entrar"></p>
            </form>
        <p>Para cadastrar uma nova conta, peça ao ADM.</p>
        <p><a href="index.html"> Inicio</a></p>
    </body>
</html>
