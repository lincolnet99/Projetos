<%@include file="conexao.jsp"%>
<%@page import="java.sql.*"%>
<%@page contentType="text/html" language="Java"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:useBean id="use" class="user.insumos"/>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Lista insumos</title>
    </head>
    <body>
        <h3>Lista de entrada de insumos</h3>
        <form method="get" action="" >
            <input type="text" name="q" style="width: 400px;" placeholder="Procure por tipo, descrição ou codigo..."/>
        </form>
        <br>
        <table style="width: 75%;" border="1">
                <tr>
                    <th>Codigo entrada do produto</th>
                    <th>Tipo de insumo</th>
                    <th>Descrição</th>
                    <th>Quantidade</th>
                    <th>Usuario que inseriu</th>
                    <th>Alterar</th>
                    <th>Excluir </th>
                </tr>
        <%
                try{
            Class.forName("com.mysql.cj.jdbc.Driver");
            
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/equipe7?useTimezone=True&serverTimezone=UTC&useSSL=false","root","solefrio13");
            Statement statement = con.createStatement();
            
                ResultSet res = null;
            
                String que = request.getParameter("q");
                String query;
                
                if(que!=null){
                    query = "SELECT s.idinsumos, s.tipo, s.descricao, s.quantidade, s.ncritico, u.nome FROM insumos s inner join  usuario as u on s.usuario_idusuario = u.idusuario where s.idinsumos like '%"+que+"%' or s.descricao like '%"+que+"%' or s.tipo like '%"+que+"%';";
                }else{
                    query = "SELECT s.idinsumos, s.tipo, s.descricao, s.quantidade, s.ncritico, u.nome FROM insumos s inner join  usuario as u on s.usuario_idusuario = u.idusuario;";
                }
                res = statement.executeQuery(query);
            while(res.next()){
            %>           
                <tr>
                    <td><%=res.getString("s.idinsumos")%></td>
                    <td><%=res.getString("s.tipo")%></td>
                    <td><%=res.getString("s.descricao")%></td>
                    <td><%=res.getString("s.quantidade")%></td>
                    <td><%=res.getString("u.nome")%></td>                    
                    <td><a href="alterarInsumos.jsp?idinsumos=<%=res.getInt("s.idinsumos")%>">Alterar</a></td>
                    <td><a href="DBapagarInsumo.jsp?idinsumos=<%=res.getInt("s.idinsumos")%>">Excluir</a></td>
                </tr>
                <%
        }
        }
        catch(ClassNotFoundException e){
            out.println("Erro: "+e.getMessage());
        }
        catch(SQLException e){
            out.println("Erro: "+e.getMessage());
        }  
        %>
            </table>
            <p><a href="indexIns.jsp">Inicio</a></p>
           
    </body>
</html>
