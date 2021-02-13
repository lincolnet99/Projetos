<%-- 
    Document   : indexIns
    Created on : 17/05/2020, 15:46:34
    Author     : axtri
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Pagina inicial</title>
    </head>
    <body>
        <h3>Sistema almoxarifado</h3> 
            <p><a href="DBlogout.jsp">Logout</a></p>
            <!Será possivel incluir o nivel informado pelo usuario>
            <p><a href="teinIncluir.jsp">Incluir no estoque</a></p>
            <!Nessa tela abaixo será possivel excluir e alterar um produto do estoque e tambem pesquisar um produto.>
            <p><a href="teinControle.jsp">Tela de entrada no estoque</a></p>
            <!Essa tela junta os elementos por descrição e compara com o ncritico do menor elemento da descrição.>
            <p><a href="teinControleTotal.jsp">Tela de nivel de estoque.</a></p>
            <p><a href="teinRelatorio.jsp">Tela relatorio de estoque.</a></p>
        <%
        if(session.getAttribute("susuario")==null){
            response.sendRedirect("login.jsp");
        }
        %>
    </body>
</html>
