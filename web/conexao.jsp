<%@page import="java.sql.*"%>
<%@page contentType="text/html" language="Java"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
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
            
        }
        catch(ClassNotFoundException e){
            out.println("Erro: "+e.getMessage());
        }
        catch(SQLException e){
            out.println("Erro: "+e.getMessage());
        }
           %>
    </body>
</html>
