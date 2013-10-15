package codigos;

import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class Usuario {
    private int id;
    private String nome;
    private String sexo;
    private String email;
    private String senha;
    Banco banco = new Banco();

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }
    
    public void setNome(String nome){
        this.nome = nome;
    }
    public String getNome(){
        return nome;
    }
    public void setSexo(String sexo){
        this.sexo = sexo;
    }
    public String getSexo(){
        return sexo;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getSenha() {
        return senha;
    }

    public void setSenha(String senha) {
        this.senha = senha;
    }

// Editar
    
    public Usuario buscarUsuario(String email, String senha){
        try{
            Usuario usuario = new Usuario();
            banco.conectar();
            String sql = "select * from usuario where email=? and senha=?;";
            PreparedStatement statement = banco.con.prepareStatement(sql);
            statement.setString(1, email);
            statement.setString(2, senha);
            ResultSet rs = statement.executeQuery();
            banco.desconectar();
            if(rs.next()){
                usuario.setId(rs.getInt(1));//no momento de editar é importante
                usuario.setNome(rs.getString(2));
                usuario.setSexo(rs.getString(3));
                usuario.setEmail(rs.getString(4));
                usuario.setSenha(rs.getString(5));
                return usuario;
            }
            return null;
        }catch(Exception e){
          return null; 
        }
    }
    
}
