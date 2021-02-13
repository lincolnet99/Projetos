<%-- 
    Document   : loginAdmv
    Created on : 17/05/2020, 23:40:39
    Author     : axtri
--%>
<jsp:useBean id="use" class="user.usuario"/>
<%@page import="java.sql.*"%>
<%@page contentType="text/html" language="Java"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>validar</title>
    </head>
    <body>
        <%   
            
            Class.forName("com.mysql.cj.jdbc.Driver");
            String url = "jdbc:mysql://localhost:3306/equipe7?useTimezone=true&serverTimezone=UTC&useSSL=false";
                      
            Connection con = DriverManager.getConnection(url,"root","solefrio13");              
            String user = request.getParameter("usuario");
            session.putValue("usuario", user);
            String senha = request.getParameter("senha");
            
            Statement statement = con.createStatement();
            ResultSet rs = statement.executeQuery("select * from adminuser where user='"+user+"'");
            if(rs.next()){
                if(rs.getString("pass").equals(senha)){
                        response.sendRedirect("telaAdmin.jsp");
                        session.setAttribute("susuario",request.getParameter("usuario"));
                    }
                
                else{
                    out.println("Usuario ou senha incorreta! 1");
                    %>
                    <p><a href="login.jsp">Tente de novo</a></p>
                    <%
                 }                
}
            else{
            out.println("Usuario ou senha incorreta! 2");
}
        %>
    </body>
</html>
