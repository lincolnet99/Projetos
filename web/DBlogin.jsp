<%-- 
    Document   : loginValidar
    Created on : 15/05/2020, 20:03:34
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
        <title>Validar</title>
    </head>
    <body>
        
        <%               
            Class.forName("com.mysql.cj.jdbc.Driver");
            String url = "jdbc:mysql://localhost:3306/equipe7?useTimezone=true&serverTimezone=UTC&useSSL=false";
                      
            java.sql.Connection con = DriverManager.getConnection(url,"root","solefrio13");              
            String user = request.getParameter("usuario");
            session.putValue("usuario", user);
            String senha = request.getParameter("senha");
            
            Statement statement = con.createStatement();
            ResultSet res = statement.executeQuery("select * from usuario where usuario='"+user+"'");
            if(res.next()){
                if(res.getString(7).equals(senha)){
                        session.setAttribute("susuario",request.getParameter("usuario"));
                        session.setAttribute("sid",res.getInt(1));
                        response.sendRedirect("indexIns.jsp");                       
                   } 
            
                else{
                    out.println("Usuario ou senha incorreta!");
                    %>
                    <p><a href="login.jsp">Tente de Novo</a></p>
                    <%
                }
            }
            else{
                out.println("Usuario ou senha incorreta!");
            }
        %>
    </body>
</html>
