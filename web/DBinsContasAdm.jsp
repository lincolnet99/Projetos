<%-- 
    Document   : insContasAdmInc
    Created on : 18/05/2020, 00:03:09
    Author     : axtri
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:useBean id="use" class="user.usuario"/>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>     
        <%
            try{
            Class.forName("com.mysql.cj.jdbc.Driver");
            
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/equipe7?useTimezone=True&serverTimezone=UTC&useSSL=false","root","solefrio13");
            Statement statement = con.createStatement();
            String url;
            
            String query = "insert into adminuser(nome, user, pass)values('"+request.getParameter("nome")+"','"+request.getParameter("usuario")+"','"+request.getParameter("senha")+"')";
            
            statement.executeUpdate(query);
            con.close();
            statement.close();
        }
        catch(ClassNotFoundException e){
            out.println("Erro: "+e.getMessage());
        }
        catch(SQLException e){
            out.println("Erro: "+e.getMessage());
        }
        %>
        <p><a href="insContasAdm.jsp">Novo cadastro</a></p>
        <p><a href="loginAdm.jsp">Login</a></p>
    </body>
</html>
