package user;

import java.util.Date;
import java.sql.*;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Calendar;

public class insumos {
    private String descricao;
    private String tipo;
    private int ncritico;
    private int quantidade;
    private int usuario_idusuario;

    
    public int getNcritico() {
        return ncritico;
    }

    public void setNcritico(int ncritico) {
        this.ncritico = ncritico;
    }
    
    public String getDescricao() {
        return descricao;
    }

    public void setDescricao(String descricao) {
        this.descricao = descricao;
    }

    public String getTipo() {
        return tipo;
    }

    public void setTipo(String tipo) {
        this.tipo = tipo;
    }

    public int getQuantidade() {
        return quantidade;
    }

    public void setQuantidade(int quantidade) {
        this.quantidade = quantidade;
    }

   

    public int getUsuario_idusuario() {
        return usuario_idusuario;
    }

    public void setUsuario_idusuario(int usuario_idusuario) {
        this.usuario_idusuario = usuario_idusuario;
    }
    
    
    public String incluir(int idu){
        try{
            Class.forName("com.mysql.cj.jdbc.Driver");
            
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/equipe7?useTimezone=True&serverTimezone=UTC&useSSL=false","root","solefrio13");
            Statement statement = con.createStatement();
            
            String query = "insert into insumos(tipo, descricao, quantidade, ncritico, usuario_idusuario)values('"+getTipo()+"','"+getDescricao()+"','"+getQuantidade()+"','"
                +getNcritico()+"','"+idu+"')";
            
            
           
            statement.executeUpdate(query);  
            con.close();
            statement.close();
        }
        catch(ClassNotFoundException e){
            return "Erro: "+e.getMessage();
        }
        catch(SQLException e){
            return "Erro: "+e.getMessage();
        }
        return "ok";
    }
    
    
    public ResultSet consultar(String query){
        ResultSet resultado;
        try{
            Class.forName("com.mysql.cj.jdbc.Driver");
            
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/equipe7?useTimezone=True&serverTimezone=UTC&useSSL=false","root","solefrio13");
            Statement statement = con.createStatement();
            
            resultado = statement.executeQuery(query);
            return resultado;
        }
        catch(Exception ex){
            return null;
        }
    }
    public boolean excluir(int id){
        try{
            Class.forName("com.mysql.cj.jdbc.Driver");
            
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/equipe7?useTimezone=True&serverTimezone=UTC&useSSL=false","root","solefrio13");
            Statement statement = con.createStatement();
            
            String query = "Delete from insumos where idinsumos="+id;           
            statement.executeUpdate(query);
            con.close();
            statement.close();
        }
        catch(ClassNotFoundException e){
            return (false);
        }
        catch(SQLException e){
            return (false);
        }
        return (true);
    }
    public boolean alterar(int id){
        try{
            Class.forName("com.mysql.cj.jdbc.Driver");
            
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/equipe7?useTimezone=True&serverTimezone=UTC&useSSL=false","root","solefrio13");
            Statement statement = con.createStatement();
                                    
            String query = "update insumos set tipo='"+getTipo()+"', descricao='"+getDescricao()+"', quantidade='"+getQuantidade()+"',ncritico='"+getNcritico()+"'where idinsumos="+id;
            
            statement.executeUpdate(query);
            con.close();
            statement.close();
        }
        
        catch(ClassNotFoundException e){
            return(false);
        }
        catch(SQLException e){
            return(false);
        }
        return(true);
    }
    
}

