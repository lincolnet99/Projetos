<%-- 
    Document   : altContas
    Created on : 15/05/2020, 14:51:48
    Author     : axtri
--%>
<%@page import="java.sql.*"%>
<%@page contentType="text/html" language="Java"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:useBean id="use" class="user.usuario"/>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>lterar contas</title>
    </head>
    <body>
        <h3>Lista de usuarios</h3>
        <table style="width: 75%;" border="1">
                <tr>
                    <th>ID</th>
                    <th>Nome</th>
                    <th>Idade</th>
                    <th>Cpf</th>
                    <th>Tarefa</th>
                    <th>Usuario</th>
                    <th>Alterar</th>
                    <th>Excluir</th>
                </tr>
        <%
            ResultSet res = use.consultar("select * from usuario");
            while(res.next()){
            %>           
                <tr>
                    <td><%=res.getString("idusuario")%></td>
                    <td><%=res.getString("nome")%></td>
                    <td><%=res.getString("Idade")%></td>
                    <td><%=res.getString("CPF")%></td>
                    <td><%=res.getString("tarefa")%></td>
                    <td><%=res.getString("usuario")%></td>
                    <td><a href="alterarContas.jsp?idusuario=<%=res.getInt("idusuario")%>">Alterar</a></td>
                    <td><a href="DBapagarContas.jsp?idusuario=<%=res.getInt("idusuario")%>">Excluir</a></td>
                </tr>
                <%
        }  
        %>
            </table>
            <p><a href="telaAdmin.html">Inicio</a></p>
    </body>
</html>
