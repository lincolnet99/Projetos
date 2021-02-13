package user;
import java.io.Serializable;
import java.sql.*;
public class usuario implements Serializable {
    private String nome;
    private String idade;
    private String tarefa;
    private String cpf;
    private String usuario;
    private String senha;

    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public String getIdade() {
        return idade;
    }

    public void setIdade(String idade) {
        this.idade = idade;
    }

    public String getTarefa() {
        return tarefa;
    }

    public void setTarefa(String tarefa) {
        this.tarefa = tarefa;
    }

    public String getCpf() {
        return cpf;
    }

    public void setCpf(String cpf) {
        this.cpf = cpf;
    }

    public String getUsuario() {
        return usuario;
    }

    public void setUsuario(String usuario) {
        this.usuario = usuario;
    }

    public String getSenha() {
        return senha;
    }

    public void setSenha(String senha) {
        this.senha = senha;
    }

    
    
    public String incluir(){
        try{
            Class.forName("com.mysql.cj.jdbc.Driver");
            
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/equipe7?useTimezone=True&serverTimezone=UTC&useSSL=false","root","solefrio13");
            Statement statement = con.createStatement();
            String url;
            
            String query = "insert into usuario(nome, idade, tarefa, usuario, senha, cpf)values('"+getNome()+"','"+getIdade()+"','"+getTarefa()+"','"
                +getUsuario()+"','"+getSenha()+"','"+getCpf()+"')";
            
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
    public boolean alterar(int id){
        try{
            Class.forName("com.mysql.cj.jdbc.Driver");
            
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/equipe7?useTimezone=True&serverTimezone=UTC&useSSL=false","root","solefrio13");
            Statement statement = con.createStatement();
            
            String query = "update usuario set nome='"+getNome()+"',idade='"+getIdade()+"', tarefa='"+getTarefa()+"',cpf='"+getCpf()+"',usuario='"+getUsuario()+"',"+
                "senha='"+getSenha()+"'where idusuario="+id;            
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
    public boolean excluir(int id){
        try{
            Class.forName("com.mysql.cj.jdbc.Driver");
            
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/equipe7?useTimezone=True&serverTimezone=UTC&useSSL=false","root","solefrio13");
            Statement statement = con.createStatement();
            
            String query = "Delete from usuario where idusuario="+id;           
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
}
