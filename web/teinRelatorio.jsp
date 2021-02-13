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
        <h3>Relatorio de insumos</h3>
        <form method="get" action="" >
            <input type="text" name="q" style="width: 400px;" placeholder="Procure por data, tipo, descrição ou id do insumo ..."/>
        </form>
        <br>
        <table style="width: 75%;" border="1">
                <tr>
                    <th>ID do relatorio</th>
                    <th>Tipo de mudança</th>
                    <th>Data de mudança</th>
                    <th>ID do insumo</th>
                    <th>Tipo</th>
                    <th>Descrição</th>
                    <th>Quantidade anterior</th>
                    <th>Quantidade atual</th>
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
                    query = "select idrelatorio, data, qtd_anterior, qtd_atual, tipo, descricao, idinsumos, tipoMud from relatorio where data like '%"+que+"%' or tipo like '%"+que+"%' or descricao like '%"+que+"%' or idinsumos like '%"+que+"%';";
                }else{
                    query = "select idrelatorio, data, qtd_anterior, qtd_atual, tipo, descricao, idinsumos, tipoMud from relatorio;";
                }
                res = statement.executeQuery(query);
            while(res.next()){
            %>           
                <tr>
                    <td><%=res.getInt("idrelatorio")%></td>
                    <td><%=res.getString("tipoMud")%></td>
                    <td><%=res.getString("data")%></td>
                    <td><%=res.getInt("idinsumos")%></td>
                    <td><%=res.getString("tipo")%></td>
                    <td><%=res.getString("descricao")%></td>
                    <td><%=res.getInt("qtd_anterior")%></td>
                    <td><%=res.getInt("qtd_atual")%></td>
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
