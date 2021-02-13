<%@page import="java.sql.*"%>
<%@page contentType="text/html" language="Java"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:useBean id="use" class="user.insumos"/>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Lista de controle total</title>
    </head>
    <body>
        <h3>Lista de controle total</h3>
        <table style="width: 50%;" border="1">
                <tr>
                    <th>Tipo de insumo</th>
                    <th>Descrição</th>
                    <th>Quantidade total</th>
                    <th>Nivel critico</th>
                    <th>Status de estoque</th>
                </tr>
        <%
            ResultSet res = use.consultar("SELECT idinsumos,tipo, descricao, sum(quantidade) , min(ncritico) FROM insumos group by descricao;");   
            
            
            while(res.next()){
                String recebe = "";
                int var = res.getInt("sum(quantidade)");
                if(var>res.getInt("min(ncritico)")&&var<=70){
                    recebe = "Mediano";
                }else if(var>70){
                    recebe = "Otimo";
                }if(var<res.getInt("min(ncritico)")){
                    recebe = "Ruim";
                }
            %>           
                <tr>
                    <td><%=res.getString("tipo")%></td>
                    <td><%=res.getString("descricao")%></td>
                    <td><%=res.getInt("sum(quantidade)")%></td>
                    <td><%=res.getInt("min(ncritico)")%></td>
                    <td><%=recebe%></td>
                </tr>
                <%
        }
        
        %>
            </table>
            <p><a href="indexIns.jsp">Inicio</a></p>
           
    </body>
</html>
